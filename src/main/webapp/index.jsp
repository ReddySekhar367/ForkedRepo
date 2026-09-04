<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Modern Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root {
    --black:#050505;
    --black-2:#0b0b0c;
    --black-3:#111113;

    --white:#f7f7f2;
    --soft:#a3a39e;
    --muted:#70706c;

    --lime:#d8ff45;
    --lime-2:#bce82b;

    --line:rgba(255,255,255,.10);
    --line-dark:rgba(0,0,0,.10);

    --light:#f1f1ed;
    --card:#e7e7e2;

    --container:1440px;

    --ease:cubic-bezier(.22,.8,.2,1);
}


/* =========================================================
   RESET
========================================================= */

* {
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html {
    scroll-behavior:smooth;
}

body {
    background:var(--black);
    color:var(--white);
    font-family:Inter,sans-serif;
    line-height:1.5;
    overflow-x:hidden;
}

body.no-scroll {
    overflow:hidden;
}

button,
input {
    font:inherit;
}

button {
    cursor:pointer;
}

a {
    color:inherit;
    text-decoration:none;
}

img {
    width:100%;
    display:block;
}

::selection {
    background:var(--lime);
    color:#000;
}


/* =========================================================
   SCROLLBAR
========================================================= */

::-webkit-scrollbar {
    width:8px;
}

::-webkit-scrollbar-track {
    background:#080808;
}

::-webkit-scrollbar-thumb {
    background:#292929;
}

::-webkit-scrollbar-thumb:hover {
    background:var(--lime);
}


/* =========================================================
   UTILITIES
========================================================= */

.container {
    width:min(var(--container),calc(100% - 64px));
    margin:auto;
}

.section {
    padding:125px 0;
}

.muted {
    color:var(--muted);
}

.upper {
    text-transform:uppercase;
    letter-spacing:.16em;
}


/* =========================================================
   TOPBAR
========================================================= */

.topbar {
    height:34px;

    display:flex;
    align-items:center;
    justify-content:center;

    background:var(--lime);
    color:#050505;

    font-size:9px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.18em;
}


/* =========================================================
   NAVBAR
========================================================= */

.navbar {
    position:sticky;
    top:0;
    z-index:1000;

    height:82px;

    background:rgba(5,5,5,.82);
    backdrop-filter:blur(22px);
    -webkit-backdrop-filter:blur(22px);

    border-bottom:1px solid var(--line);
}

.nav-inner {
    height:100%;

    display:grid;
    grid-template-columns:1fr auto 1fr;
    align-items:center;
}

.logo {
    font-family:Manrope,sans-serif;
    font-size:25px;
    font-weight:800;
    letter-spacing:-.09em;
}

.logo-mark {
    color:var(--lime);
}

.main-nav {
    display:flex;
    gap:38px;

    font-size:10px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.14em;
}

.main-nav a {
    color:#999994;
    position:relative;
    transition:.25s;
}

.main-nav a::after {
    content:"";

    position:absolute;

    left:0;
    bottom:-9px;

    width:0;
    height:1px;

    background:var(--lime);

    transition:.3s;
}

.main-nav a:hover {
    color:#fff;
}

.main-nav a:hover::after {
    width:100%;
}

.nav-actions {
    display:flex;
    justify-content:flex-end;
    align-items:center;
    gap:7px;
}

.nav-btn {
    width:42px;
    height:42px;

    border:1px solid transparent;
    border-radius:50%;

    background:transparent;
    color:#fff;

    transition:.25s;
}

.nav-btn:hover {
    background:#151516;
    border-color:var(--line);
    transform:translateY(-2px);
}

.bag-btn {
    position:relative;
}

.bag-count {
    position:absolute;

    top:-2px;
    right:-2px;

    width:17px;
    height:17px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:var(--lime);
    color:#000;

    font-size:8px;
    font-weight:900;
}


/* =========================================================
   HERO
========================================================= */

.hero {
    min-height:calc(100vh - 116px);

    position:relative;
    overflow:hidden;

    display:flex;
    align-items:center;
}

.hero::before {
    content:"";

    position:absolute;

    width:600px;
    height:600px;

    left:-250px;
    top:100px;

    background:var(--lime);

    opacity:.035;

    filter:blur(100px);
    border-radius:50%;
}

.hero-grid {
    min-height:760px;

    display:grid;
    grid-template-columns:1.05fr .95fr;

    align-items:center;
    gap:70px;
}

.hero-copy {
    position:relative;
    z-index:2;
}

.hero-kicker {
    display:flex;
    align-items:center;
    gap:12px;

    margin-bottom:28px;

    color:var(--lime);

    font-size:9px;
    font-weight:800;

    letter-spacing:.23em;
    text-transform:uppercase;
}

.hero-kicker::before {
    content:"";

    width:36px;
    height:1px;

    background:var(--lime);
}

.hero h1 {
    max-width:900px;

    font-family:Manrope,sans-serif;

    font-size:clamp(70px,8.8vw,140px);

    line-height:.81;

    letter-spacing:-.09em;

    font-weight:800;
}

.hero h1 span {
    color:var(--lime);
}

.hero-description {
    max-width:520px;

    margin-top:38px;

    color:#858580;

    font-size:14px;
    line-height:1.9;
}

.hero-actions {
    display:flex;
    gap:12px;

    margin-top:38px;
}

.btn {
    border:0;

    min-height:50px;

    padding:15px 22px;

    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:13px;

    font-size:9px;
    font-weight:900;

    text-transform:uppercase;
    letter-spacing:.15em;

    transition:.35s var(--ease);
}

.btn-primary {
    background:var(--lime);
    color:#000;
}

.btn-primary:hover {
    background:#fff;
    transform:translateY(-4px);
    box-shadow:0 15px 40px rgba(216,255,69,.13);
}

.btn-outline {
    background:transparent;
    border:1px solid var(--line);
    color:#fff;
}

.btn-outline:hover {
    border-color:#fff;
    background:#fff;
    color:#000;
}


/* =========================================================
   HERO IMAGE
========================================================= */

.hero-visual {
    position:relative;
    height:680px;
}

.hero-main-image {
    position:absolute;

    right:0;
    top:0;

    width:84%;
    height:100%;

    object-fit:cover;

    filter:saturate(.65) contrast(1.1);

    clip-path:polygon(
        12% 0,
        100% 0,
        100% 88%,
        82% 100%,
        0 100%,
        0 13%
    );

    transition:transform 1.2s var(--ease);
}

.hero:hover .hero-main-image {
    transform:scale(1.025);
}

.hero-overlay {
    position:absolute;
    inset:0;

    pointer-events:none;

    background:
        linear-gradient(
            90deg,
            var(--black) 0%,
            transparent 48%
        ),
        linear-gradient(
            0deg,
            rgba(0,0,0,.65),
            transparent 50%
        );
}

.hero-product {
    position:absolute;

    left:0;
    bottom:40px;

    width:290px;

    padding:10px;

    background:#101011;

    border:1px solid var(--line);

    z-index:3;

    box-shadow:0 30px 80px rgba(0,0,0,.3);

    transition:.4s var(--ease);
}

.hero-product:hover {
    transform:translateY(-8px);
}

.hero-product-image {
    height:180px;
    object-fit:cover;
}

.hero-product-info {
    padding:15px 8px 7px;
}

.hero-product-meta {
    color:#666;

    font-size:8px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.16em;
}

.hero-product-name {
    margin-top:6px;

    font-size:14px;
    font-weight:700;
}

.hero-product-bottom {
    display:flex;
    justify-content:space-between;

    margin-top:15px;

    font-size:11px;
}

.hero-product-price {
    color:var(--lime);
    font-weight:900;
}

.hero-index {
    position:absolute;

    right:-20px;
    bottom:15px;

    font-family:Manrope,sans-serif;

    font-size:105px;
    line-height:1;

    color:rgba(255,255,255,.055);

    font-weight:800;
}


/* =========================================================
   TICKER
========================================================= */

.ticker {
    overflow:hidden;

    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);

    background:#090909;
}

.ticker-track {
    width:max-content;

    display:flex;

    animation:ticker 30s linear infinite;
}

.ticker-item {
    padding:21px 32px;

    white-space:nowrap;

    font-size:9px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.22em;
}

.ticker-item span {
    color:var(--lime);
    margin-left:32px;
}

@keyframes ticker {
    from {
        transform:translateX(0);
    }

    to {
        transform:translateX(-50%);
    }
}


/* =========================================================
   SECTION HEADER
========================================================= */

.section-header {
    display:flex;
    justify-content:space-between;
    align-items:flex-end;

    margin-bottom:48px;
}

.section-number {
    color:var(--lime);

    font-size:9px;
    font-weight
