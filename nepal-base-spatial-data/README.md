# Nepal Base Spatial Data

Use this folder as a starting point for Nepal district maps. It contains a standalone Shiny district explorer and the source GeoJSON for all 77 districts.

From the repository root, run this in R.

```r
install.packages(c("shiny", "jsonlite"))  # First time only
shiny::runApp("nepal-base-spatial-data")
```

To reuse the boundaries in another project, copy `nepal-districts.geojson`. The fields `DISTRICT`, `PR_NAME`, and `STATE_CODE` identify the district and province. Check district names and boundary vintages before joining historical data.

The unmodified GeoJSON comes from [Open Knowledge Nepal LocalBoundaries](https://localboundries.oknp.org/download/#districts) under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Retain this credit when sharing the data.
