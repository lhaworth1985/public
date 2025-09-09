<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Front Office CRM – Loan Manager</title>
  <link rel="stylesheet" href="./assets/common.css" />
  <script defer src="./assets/app.js"></script>
  <style>
    /* Toolbar under nav for actions */
    .toolbar{background:var(--surf);border-bottom:1px solid var(--line)}
    .toolbar .container{display:flex;justify-content:flex-end;gap:10px;padding:10px 20px}

    /* Dashboard visuals */
    .pillbar{display:flex;gap:10px;flex-wrap:wrap;align-items:center}
    .pill{background:#eef1f6;border:1px solid var(--line);color:#2a3350;padding:8px 12px;border-radius:999px;font-weight:700}
    .pill.primary{background:var(--brand);border-color:var(--brand);color:#fff}
    .searchwrap{display:flex;gap:10px;flex-wrap:wrap;align-items:center}
    .searchwrap input{min-width:220px}

    .kpi2{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:16px}
    .kpiCard{background:var(--surf);border:1px solid var(--line);border-radius:12px;box-shadow:var(--shadow);padding:18px}
    .kpiTop{display:flex;align-items:center;gap:10px;color:var(--muted);font-weight:700}
    .kpiVal{font-size:28px;font-weight:900;margin-top:6px}
    .kpiSub{color:var(--muted);margin-top:2px}

    .vizGrid{display:grid;grid-template-columns:repeat(auto-fit,minmax(300px,1fr));gap:16px}
    .viz{background:var(--surf);border:1px solid var(--line);border-radius:12px;box-shadow:var(--shadow);padding:16px}
    .viz h3{margin:0 0 12px 0}
    .center{display:flex;align-items:center;justify-content:center;min-height:260px}

    /* lightweight donuts */
    .donut{width:240px;height:240px}
    .legend{list-style:none;margin:12px 0 0;padding:0;display:grid;gap:6px}
    .legend li{display:flex;align-items:center;gap:8px;color:#3a4258}
    .dot{width:10px;height:10px;border-radius:50%}
    .dot.blue{background:#3b47d3}.dot.red{background:#ff6b6b}.dot.grey{background:#cfd6e6}
  </style>
</head>
<body>

<!-- Header / Navigation (consistent) -->
<header class="site">
  <div class="container sitebar">
    <a href="index.html" class="logo">
      <img src="http://fortys.co.uk/wp-content/uploads/2020/09/Fortyscapital-new.png" 
           alt="Fortys Capital Logo" style="height:28px; display:block" />
    </a>
    <div class="brand"> </div>
    <nav class="nav">
      <a href="index.html" class="active">Dashboard</a>
      <a href="applications.html">Applications</a>
      <a href="onboarding.html">Onboarding</a>
      <a href="valuations.html">Valuations</a>
      <a href="legals.html">Legals</a>
      <a href="funding.html">Funding</a>
      <a href="completion.html">Completion</a>
      <a href="reports.html">Reports</a>
      <a href="admin.html">Admin</a>
    </nav>
    <button class="burger" data-burger>☰</button>
  </div>
</header>

<!-- New toolbar row with actions -->
<div class="toolbar">
  <div class="container">
    <button class="btn" onclick="location.href='applications.html'">All Loans</button>
    <button class="btn primary" onclick="location.href='new-application.html'">+ New Loan</button>
  </div>
</div>

<main class="page container">

  <!-- Title + filter/search pills -->
  <section class="card" style="padding:16px">
    <div style="display:flex;flex-wrap:wrap;gap:16px;align-items:center;justify-content:space-between">
      <h1 style="margin:0">Loan Manager</h1>
      <div class="searchwrap">
        <span class="pill">Archived: <strong>No</strong></span>
        <input placeholder="Filter by keyword…" />
      </div>
    </div>

    <div class="pillbar" style="margin-top:14px">
      <span class="pill primary">All Loans ▾</span>
      <span class="pill">All Past Due</span>
      <span class="pill">Due Soon</span>
      <span class="pill">All Searches ▾</span>
      <span class="pill">New Search</span>
    </div>
  </section>

  <!-- KPI cards -->
  <section class="kpi2">
    <div class="kpiCard">
      <div class="kpiTop">Accounts</div>
      <div class="kpiVal">9,580</div>
      <div class="kpiSub">Total active</div>
    </div>
    <div class="kpiCard">
      <div class="kpiTop">Principal Balance</div>
      <div class="kpiVal">$998,587,200.45</div>
      <div class="kpiSub">Average: $127,510.45</div>
    </div>
    <div class="kpiCard">
      <div class="kpiTop">Payoff</div>
      <div class="kpiVal">$905,180,210.70</div>
      <div class="kpiSub">Average: $135,601.42</div>
    </div>
    <div class="kpiCard">
      <div class="kpiTop">Amount Due</div>
      <div class="kpiVal">$270,850,120.50</div>
      <div class="kpiSub">Average: $40,950.01</div>
    </div>
  </section>

  <!-- Visuals: map + two donuts -->
  <section class="vizGrid">
    <div class="viz">
      <h3>Loans Locations</h3>
      <div class="center">
        <!-- Placeholder map (swap with a real chart later) -->
        <svg viewBox="0 0 600 360" width="100%" height="260" aria-label="US Map Placeholder">
          <rect x="0" y="0" width="600" height="360" rx="12" fill="#f7f9fc" stroke="#e2e6ee"/>
          <circle cx="120" cy="220" r="28" fill="#3b47d3" opacity="0.3"/>
          <circle cx="160" cy="210" r="14" fill="#3b47d3"/>
          <circle cx="290" cy="170" r="20" fill="#3b47d3" opacity="0.5"/>
          <circle cx="450" cy="140" r="24" fill="#3b47d3"/>
          <circle cx="520" cy="220" r="16" fill="#3b47d3" opacity="0.6"/>
        </svg>
      </div>
    </div>

    <div class="viz">
      <h3>Days Past Due Breakdown</h3>
      <div class="center" style="flex-direction:column">
        <svg class="donut" viewBox="0 0 42 42">
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#cfd6e6" stroke-width="6"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#ff6b6b" stroke-width="6"
            stroke-dasharray="18 82" stroke-dashoffset="25"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#3b47d3" stroke-width="6"
            stroke-dasharray="36 64" stroke-dashoffset="43"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#9aa5c4" stroke-width="6"
            stroke-dasharray="10 90" stroke-dashoffset="79"></circle>
        </svg>
        <ul class="legend">
          <li><span class="dot blue"></span> Current Loans</li>
          <li><span class="dot red"></span> 1–30 Days Past Due</li>
          <li><span class="dot grey"></span> 31+ Days Past Due</li>
        </ul>
      </div>
    </div>

    <div class="viz">
      <h3>Current Loan Payoff Bracket Count</h3>
      <div class="center" style="flex-direction:column">
        <svg class="donut" viewBox="0 0 42 42">
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#cfd6e6" stroke-width="6"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#3b47d3" stroke-width="6"
            stroke-dasharray="40 60" stroke-dashoffset="25"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#ff6b6b" stroke-width="6"
            stroke-dasharray="22 78" stroke-dashoffset="65"></circle>
          <circle cx="21" cy="21" r="15.915" fill="transparent" stroke="#9aa5c4" stroke-width="6"
            stroke-dasharray="12 88" stroke-dashoffset="90"></circle>
        </svg>
        <ul class="legend">
          <li><span class="dot blue"></span> £0–£10k</li>
          <li><span class="dot red"></span> £10k–£25k</li>
          <li><span class="dot grey"></span> £25k+</li>
        </ul>
      </div>
    </div>
  </section>

</main>

</body>
</html>