library(shiny)
library(jsonlite)

boundary_file <- "nepal-districts.geojson"
if (!file.exists(boundary_file)) {
  stop("Put nepal-districts.geojson in the same folder as app.R.")
}

boundary <- jsonlite::fromJSON(file(boundary_file), simplifyVector = FALSE)
districts <- lapply(boundary$features, function(feature) {
  rings <- lapply(feature$geometry$coordinates, function(ring) {
    matrix(unlist(ring, use.names = FALSE), ncol = 2, byrow = TRUE)
  })

  coordinates <- rings[[1]]
  for (ring in rings[-1]) {
    coordinates <- rbind(coordinates, c(NA_real_, NA_real_), ring)
  }

  list(
    name = feature$properties$DISTRICT,
    province = feature$properties$PR_NAME,
    coordinates = coordinates,
    has_holes = length(rings) > 1
  )
})

names(districts) <- vapply(districts, function(area) area$name, "")
extent <- do.call(rbind, lapply(districts, function(area) area$coordinates))
longitude <- range(extent[, 1], na.rm = TRUE)
latitude <- range(extent[, 2], na.rm = TRUE)
map_aspect <- 1 / cos(mean(latitude) * pi / 180)

ui <- fluidPage(
  title = "Nepal District Explorer",
  tags$head(tags$style(HTML("
    body { background: #eef4f2; color: #193830; }
    .explorer {
      display: flex;
      flex-direction: column;
      height: 100vh;
      height: 100dvh;
      box-sizing: border-box;
      padding: 10px 0;
      gap: 8px;
    }
    .toolbar {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 4px 18px;
    }
    .toolbar h1 { margin: 0; font-size: 22px; }
    .toolbar .form-group, .toolbar .selectize-control { margin-bottom: 0; }
    .map-panel {
      flex: 1 1 0;
      min-height: 0;
      background: white;
      border: 1px solid #cadbd6;
      border-radius: 10px;
    }
    .source { margin: 0; font-size: 12px; }
  "))),
  tags$main(
    class = "explorer",
    tags$header(
      class = "toolbar",
      h1("Nepal District Explorer"),
      selectInput(
        "district", "District",
        choices = c("All districts" = "all", sort(names(districts))),
        selected = "all", width = "210px"
      ),
      textOutput("district_details")
    ),
    tags$div(class = "map-panel", plotOutput("map", height = "100%")),
    tags$p(
      class = "source",
      tags$a(
        "District boundaries from Open Knowledge Nepal",
        href = "https://localboundries.oknp.org/download/#districts"
      )
    )
  )
)

server <- function(input, output, session) {
  output$district_details <- renderText({
    req(input$district)
    if (input$district == "all") {
      return(paste(length(districts), "districts"))
    }

    area <- districts[[input$district]]
    paste(area$name, area$province, sep = " · ")
  })

  output$map <- renderPlot({
    req(input$district)

    par(mar = rep(0, 4))
    plot.new()
    plot.window(
      xlim = longitude + c(-1, 1) * diff(longitude) * 0.025,
      ylim = latitude + c(-1, 1) * diff(latitude) * 0.025,
      asp = map_aspect,
      xaxs = "i",
      yaxs = "i"
    )

    for (area in districts) {
      xy <- area$coordinates
      fill <- if (identical(area$name, input$district)) "#007F6E" else "#DDEAE5"

      if (area$has_holes) {
        polypath(xy[, 1], xy[, 2], col = fill, border = "#607B73",
                 lwd = 0.7, rule = "evenodd")
      } else {
        polygon(xy[, 1], xy[, 2], col = fill, border = "#607B73", lwd = 0.7)
      }
    }
  }, execOnResize = TRUE)
}

shinyApp(ui, server)
