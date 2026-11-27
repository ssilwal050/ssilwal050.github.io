---
permalink: /
title:
excerpt: "Ph.D. in Statistics"
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<div class="opening-quote">
  <p class="opening-quote__text">Data is like garbage. You'd better know what you're going to do with it before you collect it.</p>
  <div class="opening-quote__footer">
    <p class="opening-quote__author">— Mark Twain</p>
  </div>
</div>

<style>
.opening-quote {
  margin: 0.6em auto 2.2em auto;
  padding: 1.4em 0.5em 0 0.5em;
  max-width: 34em;
  text-align: center;
}
.opening-quote::before {
  content: "";
  display: block;
  width: 3em;
  height: 2px;
  margin: 0 auto 1.1em auto;
  background: #2f6b45;
}
.opening-quote__text {
  font-family: "Source Serif 4", Georgia, serif;
  font-style: italic;
  font-weight: 400;
  font-size: 1.35em;
  line-height: 1.5;
  color: #1f3a5f;
  margin: 0 0 0.8em 0;
}
.opening-quote__footer {
  display: flex;
  justify-content: center;
}
.opening-quote__author {
  margin: 0;
  font-size: 0.72em;
  font-weight: 600;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: #2f6b45;
}
.news-highlights {
  display: grid;
  grid-template-columns: 1fr;
  gap: 0.9em;
  margin-top: 1em;
}
.news-card {
  display: flex;
  align-items: flex-start;
  gap: 0.8em;
  padding: 0.9em 1em;
  border: 1px solid #cfdcd5;
  border-radius: 10px;
  background: #ffffff;
}
.news-icon {
  font-size: 1.2em;
  line-height: 1.2;
}
.news-text {
  line-height: 1.6;
}
</style>

## About Me

I’m a statistician with a **Ph.D. in Statistics** from Michigan Technological University, where I worked with Prof. Xiao Zhang in the Department of Mathematical Sciences.

My doctoral research focused on Markov chain Monte Carlo (MCMC) methods and the multinomial probit model. I developed **parameter-expanded data augmentation methods for binary, ordinal, and nominal outcomes with missing data**. I presented this work at **JSM in 2024 and 2025** and at **SDSS in 2024**. In spring 2026, I received Michigan Tech’s **Dean’s Award for Outstanding Scholarship**.

Before graduate school, I worked as a data analyst and statistician on **large-scale surveys and policy projects supported by the World Bank, NORC, and international partners**. That experience shapes how I approach research: I value methods that are rigorous and useful for understanding real-world questions.

Teaching is another important part of my work. At Michigan Tech, I taught Engineering Statistics and Pre-calculus, led R and MATLAB labs, and created course materials including exams, problem sets, and auto-graded quizzes. At Amrit Campus, Tribhuvan University in Nepal, I taught Survey Statistics, Demography, Biostatistics, and Research Methodology and **mentored undergraduate capstone projects**.

Across my research and applied work, I’m especially interested in Bayesian computation, causal inference, methods for missing data, and analysis of multivariate and longitudinal data.

---

## Research Interests

- **Bayesian Computation for Latent Variable Models**
- **Causal Inference**
- **Missing Data Imputation**
- **Multivariate and Longitudinal Data Analysis**
- **Applied Survey Statistics and Biostatistics**

---

## Current Work

I am currently developing **Bayesian MCMC methods for binary, ordinal, and nominal measures with missing values** using the **Multinomial Probit Model (MNP)**. My recent work includes:

- Developing a **parameter-expanded data-augmentation Gibbs sampler** to improve posterior mixing and convergence
- Extending MNP models to **multivariate and longitudinal settings**
- Integrating **missing-data handling** directly within the Bayesian estimation framework
- Evaluating methods through **simulation studies** and **real-data applications**

---

## Experience

**Graduate Research Assistant** — Michigan Technological University, Houghton, MI *(Jan 2021 – 2026)*  
Research on Bayesian modeling for nominal and categorical outcomes with missing values using the Multinomial Probit framework; development of efficient MCMC algorithms and parameter-expanded Gibbs samplers.

**Graduate Teaching Instructor** — Michigan Technological University, Houghton, MI *(Aug 2021 – Dec 2023)*  
Instructor for Undergraduate Engineering Statistics and Precalculus; taught labs using R and MATLAB; designed assignments, quizzes, and course materials.

**Data Analyst / Statistician** — Solutions Consultant, Kathmandu, Nepal *(Dec 2017 – Jul 2021)*  
Led statistical analysis, sampling design, questionnaire development, and reporting for large survey-based and policy-focused projects funded by international organizations.

**Teaching Instructor (Part-time)** — Amrit Campus, Kathmandu, Nepal *(Dec 2017 – Jul 2021)*  
Taught Survey Statistics, Demography, Biostatistics, and Research Methodology; supervised student projects and practical sessions.

---

## Selected Publications

{% assign mnp_publication = site.publications | where: "url", "/publication/2026-mnp-missing-values" | first %}
- **Silwal, S., & Zhang, X.** ({{ mnp_publication.date | date: "%Y" }}). <em><a href="{{ mnp_publication.url | relative_url }}">{{ mnp_publication.title | escape }}</a></em>.

- **Silwal, S., & Uprety, P.** (2019). *Assessment of Oral Health Knowledge, Attitude and Practice Among School Children in Kathmandu Metropolitan City, Nepal.* *RRJoST, 8*, 1–10.

For a full list, please see my [Publications page](/publications/).

---

## Recent News

<div class="news-highlights">

  <div class="news-card">
    <div class="news-icon">🎓</div>
    <div class="news-text">
      <strong>July 2026:</strong> Successfully defended my Ph.D. dissertation in Statistics at Michigan Technological University.
    </div>
  </div>

  <div class="news-card">
    <div class="news-icon">📝</div>
    <div class="news-text">
      <strong>May 2026:</strong> Published <strong>“{{ mnp_publication.title | escape }}”</strong>.
    </div>
  </div>

  <div class="news-card">
    <div class="news-icon">🏅</div>
    <div class="news-text">
      <strong>Spring 2026:</strong> Received the <strong>Dean's Award for Outstanding Scholarship</strong> at Michigan Technological University.
    </div>
  </div>

  <div class="news-card">
    <div class="news-icon">🎤</div>
    <div class="news-text">
      <strong>August 2025:</strong> Presented at <strong>JSM 2025</strong> in Nashville, Tennessee, with support from the ASA Travel Award and GSG Travel Grant.
    </div>
  </div>

  <div class="news-card">
    <div class="news-icon">🎓</div>
    <div class="news-text">
      <strong>June 2025:</strong> Attended the <strong>IMSI Summer Data Science Bootcamp</strong> at the University of Illinois Urbana-Champaign.
    </div>
  </div>

  <div class="news-card">
    <div class="news-icon">📊</div>
    <div class="news-text">
      <strong>2024:</strong> Presented research at <strong>JSM 2024</strong> and <strong>SDSS 2024</strong>.
    </div>
  </div>
</div>

<p style="text-align: center; margin-top: 1.5em;">
  <a href="/news/" class="btn btn--primary">View All News & Updates →</a>
</p>

---

## Contact

{% include contact-form.html %}
