<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>News & Updates – Suwash Silwal</title>
  <link href="https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,400;0,600;1,400&family=DM+Sans:wght@400;500;600&display=swap" rel="stylesheet">
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    :root {
      --green-dark: #0e4d6b;
      --green-mid: #1a7a6e;
      --green-light: #e4f3f7;
      --green-border: #9fd0db;
      --text-dark: #0c2c3a;
      --text-mid: #335566;
      --text-muted: #7a9aaa;
      --bg: #f0f7fa;
      --white: #ffffff;
    }

    body {
      font-family: 'DM Sans', sans-serif;
      background: var(--bg);
      min-height: 100vh;
      padding: 36px 20px;
      color: var(--text-dark);
    }

    .container {
      max-width: 640px;
      margin: 0 auto;
    }

    .page-header {
      margin-bottom: 28px;
      padding-bottom: 18px;
      border-bottom: 2px solid #9fd0db;
    }

    .page-header h1 {
      font-family: 'Crimson Pro', serif;
      font-size: 1.8rem;
      font-weight: 600;
      color: var(--green-dark);
      letter-spacing: -0.01em;
    }

    .page-header p {
      font-size: 0.82rem;
      color: var(--text-muted);
      margin-top: 4px;
    }

    /* Timeline */
    .timeline {
      position: relative;
      padding-left: 20px;
    }

    .timeline::before {
      content: '';
      position: absolute;
      left: 5px;
      top: 6px;
      bottom: 6px;
      width: 2px;
      background: linear-gradient(to bottom, #1a7a6e, #2196a0, #9fd0db);
      border-radius: 2px;
    }

    .tl-item {
      position: relative;
      margin-bottom: 14px;
      padding: 12px 14px;
      background: var(--white);
      border: 1px solid #e2ede7;
      border-radius: 8px;
      transition: box-shadow 0.2s, transform 0.2s;
      animation: fadeUp 0.4s ease both;
    }

    .tl-item:hover {
      box-shadow: 0 4px 14px rgba(26, 92, 58, 0.1);
      transform: translateX(3px);
    }

    /* Dot on timeline */
    .tl-item::before {
      content: '';
      position: absolute;
      left: -18px;
      top: 16px;
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: var(--green-mid);
      border: 2px solid var(--white);
      box-shadow: 0 0 0 1.5px var(--green-mid);
    }

    .tl-header {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin-bottom: 5px;
      flex-wrap: wrap;
    }

    .tl-date {
      font-size: 0.7rem;
      font-weight: 600;
      color: var(--white);
      background: linear-gradient(90deg, #0e4d6b, #1a7a6e);
      padding: 2px 8px;
      border-radius: 20px;
      letter-spacing: 0.03em;
      white-space: nowrap;
    }

    .tl-title {
      font-family: 'Crimson Pro', serif;
      font-size: 1rem;
      font-weight: 600;
      color: var(--green-dark);
      line-height: 1.3;
    }

    .tl-body {
      font-size: 0.8rem;
      color: var(--text-mid);
      line-height: 1.6;
    }

    .tl-body strong {
      color: var(--text-dark);
      font-weight: 600;
    }

    .tl-body em {
      font-family: 'Crimson Pro', serif;
      font-style: italic;
      font-size: 0.88rem;
    }

    @keyframes fadeUp {
      from { opacity: 0; transform: translateY(10px); }
      to   { opacity: 1; transform: translateY(0); }
    }

    .tl-item:nth-child(1) { animation-delay: 0.05s; }
    .tl-item:nth-child(2) { animation-delay: 0.10s; }
    .tl-item:nth-child(3) { animation-delay: 0.15s; }
    .tl-item:nth-child(4) { animation-delay: 0.20s; }
    .tl-item:nth-child(5) { animation-delay: 0.25s; }
    .tl-item:nth-child(6) { animation-delay: 0.30s; }
    .tl-item:nth-child(7) { animation-delay: 0.35s; }
    .tl-item:nth-child(8) { animation-delay: 0.40s; }
  </style>
</head>
<body>
  <div class="container">
    <div class="page-header">
      <h1>📰 News &amp; Updates</h1>
      <p>Recent highlights from research, presentations, and academic activities</p>
    </div>

    <div class="timeline">

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Spring 2026</span>
          <span class="tl-title">🏅 Dean's Award for Outstanding Scholarship</span>
        </div>
        <p class="tl-body">Received the <strong>Dean's Award for Outstanding Scholarship</strong> at Michigan Technological University in recognition of academic and research excellence.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Aug 2025</span>
          <span class="tl-title">🎤 Presented at JSM 2025</span>
        </div>
        <p class="tl-body">Presented <em>"Bayesian Methods for Analyzing Nominal Measures with Missing Values Using Multinomial Probit Models"</em> at <strong>JSM 2025</strong> in Nashville, Tennessee.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Aug 2025</span>
          <span class="tl-title">🎖 ASA Travel Award &amp; GSG Travel Grant</span>
        </div>
        <p class="tl-body">Received the <strong>ASA Student/Early Career Travel Award</strong> and a <strong>GSG Travel Grant</strong> to support my presentation at JSM 2025.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Jun 2025</span>
          <span class="tl-title">🎓 IMSI Summer Data Science Bootcamp</span>
        </div>
        <p class="tl-body">Participated in the <strong>IMSI Summer Data Science Bootcamp</strong> at the University of Illinois Urbana-Champaign.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">2025</span>
          <span class="tl-title">📝 Paper Submitted</span>
        </div>
        <p class="tl-body">Submitted <em>"Parameter-Expanded Data Augmentation for Analyzing Discrete Nominal Measures with Missing Values Using Multinomial Probit Models."</em></p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Aug 2024</span>
          <span class="tl-title">📊 Presented at JSM 2024</span>
        </div>
        <p class="tl-body">Presented <em>"Parameter-Expanded Data Augmentation for Analyzing Categorical Data Using Multinomial Probit Models"</em> at <strong>JSM 2024</strong> in Portland, Oregon.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Jun 2024</span>
          <span class="tl-title">📈 Presented at SDSS 2024</span>
        </div>
        <p class="tl-body">Presented <em>"Parameter-Expanded Data Augmentation for Multinomial Probit Models"</em> at <strong>SDSS 2024</strong> in Richmond, Virginia.</p>
      </div>

      <div class="tl-item">
        <div class="tl-header">
          <span class="tl-date">Jun 2024</span>
          <span class="tl-title">✈️ GSG Travel Grant</span>
        </div>
        <p class="tl-body">Received a <strong>Graduate Student Government Travel Grant</strong> to support my presentation at SDSS 2024.</p>
      </div>

    </div>
  </div>
</body>
</html>