
https://github.com/ssilwal050/ssilwal050.github.io.git i waan to git cloen what sthe code

2:14 PM

Assessed network limitations and determined appropriate guidance
Assessed network limitations and determined appropriate guidance
I can't run the clone directly since network access is disabled in this environment, but here's the command you need:

bash
git clone https://github.com/ssilwal050/ssilwal050.github.io.git
Run that in your terminal, and it will download the repo into a folder called ssilwal050.github.io in your current directory.

Once cloned, you can open the folder with:

bash
cd ssilwal050.github.io
And view the files with ls (Mac/Linux) or dir (Windows). Let me know if you need help with anything else!

hanges not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   .DS_Store
        deleted:    ssilwal050.github.io
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        _includes/.DS_Store
        assets/.DS_Store
no changes added to commit (use "git add" and/or "git commit -a")
just remove all these not needed

2:27 PM

Identified git cleanup strategy for unwanted files
Identified git cleanup strategy for unwanted files
Run these commands one by one:

1. Remove .DS_Store files and stop tracking them:

bash
find . -name .DS_Store -delete
echo ".DS_Store" >> .gitignore
git rm --cached .DS_Store
git rm --cached _includes/.DS_Store
git rm --cached assets/.DS_Store
2. Handle the deleted file:

bash
git rm ssilwal050.github.io
3. Commit the cleanup:

bash
git add .gitignore
git commit -m "Remove .DS_Store files and gitignore them"
git push
Adding .DS_Store to .gitignore makes sure these Mac system files never accidentally get tracked again in the future.

(base) suwash@rover-205-47 ssilwal050.github.io % git push
To https://github.com/ssilwal050/ssilwal050.github.io.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/ssilwal050/ssilwal050.github.io.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
(base) suwash@rover-205-47 ssilwal050.github.io % 

what is going on

2:30 PM

Diagnosed remote branch divergence requiring upstream integration
Diagnosed remote branch divergence requiring upstream integration
Your local branch is behind the remote — meaning there are commits on GitHub that you don't have locally yet. You need to pull those in first.

Run this:

bash
git pull origin main --rebase
Then push again:

bash
git push
What happened: Someone (or GitHub itself) made changes to the remote repo after your last pull, so Git is refusing to let you overwrite those changes. --rebase cleanly replays your local commits on top of the remote ones.

If you hit merge conflicts after the pull, let me know and I'll help you resolve them!

## Quick Links

<ul class="quick-links">
  <li><a href="/cv/">📄 Curriculum Vitae</a></li>
  <li><a href="/files/Suwash_Silwal_CV.pdf" target="_blank">⬇️ Download CV (PDF)</a></li>
  <li><a href="/publications/">📚 Publications</a></li>
  <li><a href="/teaching/">🎓 Teaching</a></li>
  <li><a href="https://www.linkedin.com/in/suwash">🔗 LinkedIn</a></li>
  <li><a href="https://github.com/ssilwal050">💻 GitHub</a></li>
  <li><a href="https://scholar.google.com/citations?user=BsC5DE0AAAAJ&hl=en">📖 Google Scholar</a></li>
</ul>

i wanna show differently
Show more
2:36 PM

Identified styling request and sought clarification on preferences
Identified styling request and sought clarification on preferences
Here are some style options to choose from!

Q: How would you like the links to look?
A: Button grid (icon + label in cards)

2:36 PM

Architected button grid layout with integrated icons and labels
Architected button grid layout with integrated icons and labels
Here's the updated code — replace your current Quick Links section with this:

html
## Quick Links

<div class="quick-links-grid">
  <a href="/cv/" class="quick-link-card">
    <span class="ql-icon">📄</span>
    <span class="ql-label">Curriculum Vitae</span>
  </a>
  <a href="/files/Suwash_Silwal_CV.pdf" target="_blank" class="quick-link-card">
    <span class="ql-icon">⬇️</span>
    <span class="ql-label">Download CV</span>
  </a>
  <a href="/publications/" class="quick-link-card">
    <span class="ql-icon">📚</span>
    <span class="ql-label">Publications</span>
  </a>
  <a href="/teaching/" class="quick-link-card">
    <span class="ql-icon">🎓</span>
    <span class="ql-label">Teaching</span>
  </a>
  <a href="https://www.linkedin.com/in/suwash" class="quick-link-card">
    <span class="ql-icon">🔗</span>
    <span class="ql-label">LinkedIn</span>
  </a>
  <a href="https://github.com/ssilwal050" class="quick-link-card">
    <span class="ql-icon">💻</span>
    <span class="ql-label">GitHub</span>
  </a>
  <a href="https://scholar.google.com/citations?user=BsC5DE0AAAAJ&hl=en" class="quick-link-card">
    <span class="ql-icon">📖</span>
    <span class="ql-label">Google Scholar</span>
  </a>
</div>

<style>
.quick-links-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
  gap: 12px;
  margin: 16px 0;
}
.quick-link-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 16px 10px;
  border: 1px solid #ddd;
  border-radius: 10px;
  text-decoration: none;
  color: inherit;
  transition: box-shadow 0.2s, transform 0.2s;
  background: #fff;
}
.quick-link-card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.12);
  transform: translateY(-2px);
}
.ql-icon { font-size: 1.8em; margin-bottom: 8px; }
.ql-label { font-size: 0.85em; text-align: center; font-weight: 500; }
</style>
Then commit and push:

bash
git add .
git commit -m "Update quick links to button grid layout"
git push
The cards will auto-wrap based on screen size, so it looks good on mobile too. Let me know if you want to tweak colors or sizing!

display

2:36 PM

Envisioned interactive button grid layout display
Envisioned interactive button grid layout display
Here's the preview! Cards hover with a lift effect and blue border. Let me know if you'd like to tweak colors, size, or anything else before you add it to your site.

Quick links preview
Code · HTML 
smaal size little bit color theme light green

2:37 PM

Deciphered design preferences for compact cards and verdant aesthetics
Deciphered design preferences for compact cards and verdant aesthetics
Smaller cards with a light green theme! Hover still gives a nice lift with a deeper green accent. Let me know if you want any more tweaks!

Quick links preview
Code · HTML 

--- permalink: / title: excerpt: "PhD Candidate in Statistics" author_profile: true redirect_from: - /about/ - /about.html --- <div class="opening-quote"> <p class="opening-quote__text">"Data is like garbage. You'd better know what you're going to do with it before you collect it."</p> <p c

pasted

Update here then 
where the linkedin profile and google schlor is 

"https://www.linkedin.com/in/ssilwal050/"
"https://scholar.google.com/citations?user=RZAbmdMAAAAJ"
2:39 PM

Identified request to refresh profile URLs
Identified request to refresh profile URLs
Here's the updated Quick Links section — just replace the old one in your index.md:

html
## Quick Links

<div class="quick-links-grid">
  <a href="/cv/" class="quick-link-card">
    <span class="ql-icon">📄</span>
    <span class="ql-label">Curriculum Vitae</span>
  </a>
  <a href="/files/Suwash_Silwal_CV.pdf" target="_blank" class="quick-link-card">
    <span class="ql-icon">⬇️</span>
    <span class="ql-label">Download CV</span>
  </a>
  <a href="/publications/" class="quick-link-card">
    <span class="ql-icon">📚</span>
    <span class="ql-label">Publications</span>
  </a>
  <a href="/teaching/" class="quick-link-card">
    <span class="ql-icon">🎓</span>
    <span class="ql-label">Teaching</span>
  </a>
  <a href="https://www.linkedin.com/in/ssilwal050/" class="quick-link-card">
    <span class="ql-icon">🔗</span>
    <span class="ql-label">LinkedIn</span>
  </a>
  <a href="https://github.com/ssilwal050" class="quick-link-card">
    <span class="ql-icon">💻</span>
    <span class="ql-label">GitHub</span>
  </a>
  <a href="https://scholar.google.com/citations?user=RZAbmdMAAAAJ" class="quick-link-card">
    <span class="ql-icon">📖</span>
    <span class="ql-label">Google Scholar</span>
  </a>
</div>
Two URLs updated:

LinkedIn: /in/ssilwal050/
Google Scholar: user=RZAbmdMAAAAJ
Then commit and push:

bash
git add _pages/index.md
git commit -m "Fix LinkedIn and Google Scholar URLs, update quick links to card grid"
git push
displayy

2:40 PM

Envisioned updated preview with corrected URLs and theme
Envisioned updated preview with corrected URLs and theme
Same green card design, now with the correct LinkedIn and Google Scholar links. Ready to copy into your index.md!

Quick links preview
Code · HTML 
(/files/suwash_CV_updated_1225025.pdf) this the CV link update this aslo
2:41 PM

Identified and updated CV file link reference
Identified and updated CV file link reference
In your index.md, find and replace these two lines:

Old:

html
<a href="/files/Suwash_Silwal_CV.pdf" target="_blank" class="quick-link-card">
New:

html
<a href="/files/suwash_CV_updated_1225025.pdf" target="_blank" class="quick-link-card">
Then commit and push:

bash
git add _pages/index.md
git commit -m "Update CV PDF link"
git push
Make sure the file suwash_CV_updated_1225025.pdf is actually in your files/ folder in the repo — otherwise the download link will 404!

dispaly the design

2:45 PM

Anticipated user request for design preview display
Anticipated user request for design preview display
All updated — CV link is now pointing to suwash_CV_updated_1225025.pdf. Everything else stays the same. Ready to go!

Quick links preview
Code · HTML 

--- permalink: / title: excerpt: "PhD Candidate in Statistics" author_profile: true redirect_from: - /about/ - /about.html --- <div class="opening-quote"> <p class="opening-quote__text">"Data is like garbage. You'd better know what you're going to do with it before you collect it."</p> <p c

pasted

but i didn't get the box

2:46 PM

Diagnosed missing CSS styles in the file
Diagnosed missing CSS styles in the file
The issue is that the CSS for the cards is missing from your index.md! The HTML is there but the styles aren't. Add these to your existing <style> block in your file:

css
.quick-links-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
  gap: 8px;
  margin: 16px 0;
}
.quick-link-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 12px 8px 10px;
  border: 1.5px solid #c8e6c9;
  border-radius: 10px;
  text-decoration: none;
  color: #1b4d2e;
  background: #f1f8f2;
  transition: box-shadow 0.2s, transform 0.2s, border-color 0.2s, background 0.2s;
}
.quick-link-card:hover {
  box-shadow: 0 5px 16px rgba(58, 125, 68, 0.15);
  transform: translateY(-3px);
  border-color: #3a7d44;
  background: #e6f4e8;
}
.ql-icon {
  font-size: 1.3rem;
  margin-bottom: 6px;
  line-height: 1;
}
.ql-label {
  font-size: 0.72rem;
  text-align: center;
  font-weight: 600;
  color: #2e6b3e;
}
Paste this inside the existing <style>...</style> tag near the top of your index.md, right before the closing </style>. Then commit and push:

bash
git add _pages/index.md
git commit -m "Add quick links card CSS"
git push
done how do i check google tracker so my websie visited

2:53 PM

Deciphered request to monitor website visitor analytics tracking
Deciphered request to monitor website visitor analytics tracking
Here's how to set it up step by step:

1. Get your Google Analytics tracking ID

Go to analytics.google.com
Click Start measuring → create an account & property
Copy your Measurement ID (looks like G-XXXXXXXXXX)
2. Add it to your Jekyll site

Open _config.yml and find or add:

yaml
google_analytics: "G-XXXXXXXXXX"
That's it! The Minimal Mistakes theme (which your site uses) already has Google Analytics built in — it just needs the ID in _config.yml.

3. Commit and push:

bash
git add _config.yml
git commit -m "Add Google Analytics"
git push
4. Verify it's working

Wait ~24 hours for data to appear
Or go to Analytics → Reports → Realtime and visit your site — you should see yourself show up live
To check visitors later:

Go to analytics.google.com
Realtime → who's on your site right now
Reports → Acquisition → where visitors come from
Reports → Engagement → which pages they visit
what is property name

2:55 PM

Identified property name as Google Analytics display designation
Identified property name as Google Analytics display designation
The property name is just a display label for your website inside Google Analytics — it's only for you to identify it, not shown publicly.

You can name it anything like:

Suwash Silwal - Academic Website
ssilwal050.github.io
Personal Website
I'd go with something like Suwash Silwal Academic Site so it's clear what it is if you ever add more properties later.

where do i add in confi file

2:59 PM

Deciphered configuration file placement query
Deciphered configuration file placement query
Open your _config.yml file and look for this section — it's usually already there:

yaml
# Analytics
analytics:
  provider               : "google-gtag"
  google:
    tracking_id          : "G-XXXXXXXXXX"
    anonymize_ip         : false
Just replace G-XXXXXXXXXX with your real Measurement ID.

If you can't find it, search for the word analytics in the file — it's likely already there but with a blank tracking ID. Then:

bash
git add _config.yml
git commit -m "Add Google Analytics tracking ID"
git push
i have done that

3:02 PM

Verified completion and anticipated next steps
Verified completion and anticipated next steps
You're all set! Here's what to do next:

Verify it's working:

Go to analytics.google.com
Click Reports → Realtime
Open your website ssilwal050.github.io in another tab
You should see 1 active user appear in realtime — that's you!
If you see yourself show up, it's working perfectly. Full stats (page views, countries, traffic sources) will start building up within 24–48 hours.

---
layout: archive
title: "News & Updates"
permalink: /news/
author_profile: true
---

{% include base_path %}

<style>
.news-timeline {
  display: flex;
  flex-direction: column;
  gap: 1.2em;
  margin-top: 1.2em;
}
.news-item {
  display: flex;
  gap: 1em;
  padding: 1em 1.1em;
  border: 1px solid #e8e8e8;
  border-radius: 10px;
  background: #fcfcfc;
}
.news-date {
  min-width: 110px;
  font-weight: 700;
  color: #0f6b57;
}
.news-content h3 {
  margin-top: 0;
  margin-bottom: 0.35em;
}
.news-content p {
  margin: 0;
  line-height: 1.65;
}
@media (max-width: 768px) {
  .news-item {
    flex-direction: column;
  }
  .news-date {
    min-width: auto;
  }
}
</style>

<div class="news-timeline">

  <div class="news-item">
    <div class="news-date">Spring 2026</div>
    <div class="news-content">
      <h3>🏅 Dean’s Award for Outstanding Scholarship</h3>
      <p>Received the <strong>Dean’s Award for Outstanding Scholarship</strong> at Michigan Technological University in recognition of academic and research excellence.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">August 2025</div>
    <div class="news-content">
      <h3>🎤 Presented at JSM 2025</h3>
      <p>Presented <em>“Bayesian Methods for Analyzing Nominal Measures with Missing Values Using Multinomial Probit Models”</em> at the <strong>Joint Statistical Meetings (JSM) 2025</strong> in Nashville, Tennessee.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">August 2025</div>
    <div class="news-content">
      <h3>🎖 Received ASA Travel Award and GSG Travel Grant</h3>
      <p>Received the <strong>ASA Student/Early Career Travel Award</strong> and a <strong>Graduate Student Government Travel Grant</strong> to support my presentation at JSM 2025.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">June 2025</div>
    <div class="news-content">
      <h3>🎓 Attended IMSI Summer Data Science Bootcamp</h3>
      <p>Participated in the <strong>IMSI Summer Data Science Bootcamp</strong> hosted online by the University of Illinois Urbana-Champaign.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">2025</div>
    <div class="news-content">
      <h3>📝 Paper Submitted</h3>
      <p>Submitted the paper <em>“Parameter-Expanded Data Augmentation for Analyzing Discrete Nominal Measures with Missing Values Using Multinomial Probit Models”</em>.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">August 2024</div>
    <div class="news-content">
      <h3>📊 Presented at JSM 2024</h3>
      <p>Presented <em>“Parameter-Expanded Data Augmentation for Analyzing Categorical Data Using Multinomial Probit Models”</em> at <strong>JSM 2024</strong> in Portland, Oregon.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">June 2024</div>
    <div class="news-content">
      <h3>📈 Presented at SDSS 2024</h3>
      <p>Presented <em>“Parameter-Expanded Data Augmentation for Multinomial Probit Models”</em> at the <strong>Symposium on Data Science and Statistics (SDSS) 2024</strong> in Richmond, Virginia.</p>
    </div>
  </div>

  <div class="news-item">
    <div class="news-date">June 2024</div>
    <div class="news-content">
      <h3>✈️ Received GSG Travel Grant</h3>
      <p>Received a <strong>Graduate Student Government Travel Grant</strong> to support my presentation at SDSS 2024.</p>
    </div>
  </div>

</div>

optimzed the desin with make small size and change looks also
Show more
3:08 PM

Redesigned news page layout for compactness and visual refresh
Redesigned news page layout for compactness and visual refresh
Here's the redesign! Key changes:

Vertical timeline with a green line and dots connecting each item
Date pill badges in green instead of plain text
Compact cards — smaller padding and font size
Slide-in animation on load with hover effect (slides right + shadow)
Crimson Pro serif for titles gives it an academic/editorial feel
Want me to give you the Jekyll-ready CSS + HTML to paste into your news.md?

News preview
Code · HTML 
make color theme blue and green mix

3:10 PM

Devised blue-green color scheme for news preview update
Devised blue-green color scheme for news preview update
Blue-green mix applied! The timeline line fades from teal → blue, the date badges have a blue-to-green gradient, and the background has a cool blue-green tint. Want any further tweaks before adding it to your site?

News preview
Code · HTML 


Want to be notified when Claude responds?




Claude is AI and can make mistakes. Please double-check responses.
News preview · HTML
Copy

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

