Here is a fresh, user-friendly e-commerce UI for the NexusShop brand page. I've redesigned it with a softer, more modern aesthetic, improved visual hierarchy, and a focus on a seamless shopping experience.
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Modern Edit</title>
  <!-- Google Fonts + Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:ital,wght@0,500;0,600;1,500&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    html { scroll-behavior:smooth; }
    body {
      font-family: "Inter", sans-serif;
      background: #f6f4f0;
      color: #1b1b1a;
      line-height:1.5;
    }
    img { display:block; width:100%; }
    button { cursor:pointer; font:inherit; border:0; background:none; }
    a { color:inherit; text-decoration:none; }
    :root {
      --black: #1b1b1a;
      --cream: #f6f4f0;
      --white: #ffffff;
      --orange: #e25a2a;
      --green: #a6b9a6;
      --muted: #77756b;
      --line: #ded9cf;
      --serif: "Playfair Display", serif;
      --sans: "Inter", sans-serif;
      --shadow: 0 16px 40px rgba(0,0,0,0.03);
      --radius: 20px;
    }
    .container { width: min(1360px, calc(100% - 40px)); margin: 0 auto; }
    .section { padding: 90px 0; }
    .section-label {
      display: flex; align-items:center; gap:10px;
      font-size: 10px; font-weight:600; letter-spacing:2px;
      text-transform:uppercase; color:var(--muted);
      margin-bottom:14px;
    }
    .section-label::before { content:""; width:28px; height:2px; background:currentColor; }
    .serif { font-family:var(--serif); }
    /* header */
    .site-header {
      position:fixed; top:0; left:0; width:100%; z-index:1000;
      padding:14px 0; color:#fff; transition:0.25s;
    }
    .site-header.scrolled {
      background:rgba(246,244,240,0.92); color:var(--black);
      backdrop-filter:blur(14px); border-bottom:1px solid var(--line);
    }
    .header-inner {
      display:grid; grid-template-columns:1fr auto 1fr; align-items:center;
    }
    .logo { font-size:20px; font-weight:700; letter-spacing:-0.3px; }
    .logo span { color:var(--orange); }
    .main-nav {
      display:flex; gap:32px; font-size:13px; font-weight:500;
    }
    .main-nav a { position:relative; }
    .main-nav a::after {
      content:""; position:absolute; bottom:-5px; left:0;
      width:0; height:2px; background:currentColor; transition:0.2s;
    }
    .main-nav a:hover::after { width:100%; }
    .header-actions {
      display:flex; justify-content:flex-end; gap:16px; align-items:center;
    }
    .header-icon { font-size:18px; color:inherit; }
    .bag-button { position:relative; }
    .bag-count {
      position:absolute; top:-8px; right:-9px;
      background:var(--orange); color:#fff; width:18px; height:18px;
      border-radius:50%; font-size:9px; font-weight:700;
      display:grid; place-items:center;
    }
    .mobile-menu-btn { display:none; font-size:20px; }
    /* hero */
    .hero {
      min-height:760px; background:#181816; color:white;
      position:relative; overflow:hidden;
    }
    .hero-image { position:absolute; inset:0; }
    .hero-image::after {
      content:""; position:absolute; inset:0;
      background:linear-gradient(90deg, rgba(0,0,0,0.7) 0%, rgba(0,0,0,0.1) 70%, transparent 100%);
    }
    .hero-image img { width:100%; height:100%; object-fit:cover; }
    .hero-content {
      position:relative; z-index:2; padding-top:200px;
      max-width:1380px; margin:auto; width:calc(100% - 40px);
    }
    .hero-eyebrow {
      font-size:10px; letter-spacing:3px; text-transform:uppercase;
      font-weight:600; color:#cfcfcf; margin-bottom:24px;
    }
    .hero h1 {
      font-family:var(--serif); font-size:clamp(60px, 10vw, 130px);
      line-height:0.9; font-weight:500; letter-spacing:-4px;
      max-width:820px;
    }
    .hero h1 em { color:var(--orange); font-style:italic; }
    .hero-description {
      margin-top:30px; max-width:440px; font-size:15px;
      line-height:1.8; color:#d4d4d4;
    }
    .hero-actions { margin-top:32px; display:flex; flex-wrap:wrap; gap:14px 24px; align-items:center; }
    .primary-btn {
      background:var(--orange); color:white; padding:14px 32px;
      font-size:12px; font-weight:700; text-transform:uppercase;
      letter-spacing:1px; border-radius:40px; transition:0.2s;
    }
    .primary-btn:hover { background:white; color:var(--black); transform:translateY(-2px); box-shadow:0 8px 24px rgba(0,0,0,0.1); }
    .text-btn {
      font-size:12px; font-weight:600; color:white;
      border-bottom:1.5px solid rgba(255,255,255,0.5); padding-bottom:4px;
    }
    .hero-note {
      position:absolute; right:36px; bottom:36px; z-index:3;
      display:flex; align-items:center; gap:12px;
      font-size:10px; text-transform:uppercase; letter-spacing:1.5px; color:#bcbcbc;
    }
    .hero-note span {
      width:42px; height:42px; border:1px solid rgba(255,255,255,0.25);
      border-radius:50%; display:grid; place-items:center;
    }
    /* intro */
    .intro { background:var(--cream); }
    .intro-grid {
      display:grid; grid-template-columns:1fr 1.6fr; gap:60px; align-items:end;
    }
    .intro h2 {
      font-family:var(--serif); font-size:clamp(40px, 5vw, 68px);
      font-weight:500; line-height:0.95; letter-spacing:-2px;
    }
    .intro-copy {
      font-size:18px; line-height:1.7; color:#5d5b53; max-width:580px;
    }
    .intro-copy strong { color:var(--black); }
    /* collections */
    .collections { background:var(--cream); padding-top:20px; }
    .collection-heading {
      display:flex; justify-content:space-between; align-items:end;
      margin-bottom:40px;
    }
    .collection-heading h2 {
      font-family:var(--serif); font-size:52px; font-weight:500; letter-spacing:-1.5px;
    }
    .collection-link {
      font-size:12px; text-transform:uppercase; letter-spacing:1px;
      border-bottom:1.5px solid; padding-bottom:4px;
    }
    .collection-grid {
      display:grid; grid-template-columns:1.2fr 0.9fr 0.9fr; gap:16px;
    }
    .collection {
      position:relative; height:500px; overflow:hidden;
      color:white; border-radius:var(--radius);
    }
    .collection:nth-child(2) { height:400px; margin-top:100px; }
    .collection:nth-child(3) { height:500px; }
    .collection img { height:100%; object-fit:cover; transition:transform 0.6s cubic-bezier(0.2,0.8,0.2,1); }
    .collection:hover img { transform:scale(1.04); }
    .collection::after {
      content:""; position:absolute; inset:0;
      background:linear-gradient(transparent 30%, rgba(0,0,0,0.7));
    }
    .collection-info {
      position:absolute; z-index:2; bottom:28px; left:28px; right:28px;
    }
    .collection-number { font-size:10px; letter-spacing:2px; opacity:0.7; margin-bottom:6px; }
    .collection h3 { font-family:var(--serif); font-size:34px; font-weight:500; }
    .collection p { font-size:12px; opacity:0.85; margin-top:4px; }
    /* products */
    .products-section { background:var(--white); }
    .products-heading {
      display:flex; justify-content:space-between; align-items:end;
      margin-bottom:40px; flex-wrap:wrap;
    }
    .products-heading h2 {
      font-family:var(--serif); font-size:52px; font-weight:500; letter-spacing:-1.5px;
    }
    .filter-tabs { display:flex; gap:6px; flex-wrap:wrap; }
    .filter-tab {
      border:1px solid var(--line); background:transparent;
      padding:7px 18px; border-radius:40px; font-size:11px; font-weight:600;
      transition:0.15s;
    }
    .filter-tab.active, .filter-tab:hover {
      background:var(--black); color:white; border-color:var(--black);
    }
    .products-grid {
      display:grid; grid-template-columns:repeat(4,1fr); gap:24px;
    }
    .product {
      background:#fff; border-radius:var(--radius); overflow:hidden;
      box-shadow:var(--shadow); transition:0.2s;
    }
    .product:hover { transform:translateY(-4px); box-shadow:0 18px 40px rgba(0,0,0,0.04); }
    .product-image {
      position:relative; background:#efede7; aspect-ratio:0.82; overflow:hidden;
    }
    .product-image img { height:100%; object-fit:cover; transition:transform 0.5s; }
    .product:hover .product-image img { transform:scale(1.03); }
    .product-wish {
      position:absolute; top:12px; right:12px;
      background:rgba(255,255,255,0.9); width:34px; height:34px;
      border-radius:50%; display:grid; place-items:center; z-index:2;
      font-size:15px; transition:0.15s;
    }
    .product-wish:hover { background:#fff; transform:scale(1.05); }
    .product-badge {
      position:absolute; top:12px; left:12px;
      background:var(--orange); color:white; padding:5px 12px;
      font-size:9px; font-weight:700; text-transform:uppercase;
      letter-spacing:1px; border-radius:30px; z-index:2;
    }
    .product-quick {
      position:absolute; left:14px; right:14px; bottom:-48px;
      background:white; height:42px; border-radius:40px;
      font-weight:700; font-size:11px; text-transform:uppercase;
      letter-spacing:1px; transition:0.25s; box-shadow:0 4px 12px rgba(0,0,0,0.02);
    }
    .product:hover .product-quick { bottom:14px; }
    .product-details { padding:14px 16px 16px; }
    .product-category {
      color:#a09e96; text-transform:uppercase; font-size:9px; letter-spacing:1.2px;
    }
    .product-name { margin-top:4px; font-size:14px; font-weight:600; }
    .product-bottom {
      display:flex; justify-content:space-between; align-items:center;
      margin-top:6px;
    }
    .product-price { font-weight:700; font-size:14px; }
    .product-old {
      color:#b8b5ac; text-decoration:line-through; font-size:12px; margin-left:5px; font-weight:400;
    }
    .stars { color:#d4a030; font-size:10px; letter-spacing:1px; }
    /* campaign */
    .campaign { background:var(--black); color:white; padding:80px 0; }
    .campaign-grid {
      display:grid; grid-template-columns:1fr 1fr; min-height:560px;
      border-radius:var(--radius); overflow:hidden;
    }
    .campaign-image { position:relative; overflow:hidden; }
    .campaign-image img { height:100%; object-fit:cover; }
    .campaign-content {
      background:var(--green); color:var(--black);
      padding:50px 48px; display:flex; flex-direction:column; justify-content:center;
    }
    .campaign-small {
      text-transform:uppercase; letter-spacing:2px; font-size:10px; font-weight:700;
    }
    .campaign h2 {
      font-family:var(--serif); font-size:clamp(44px, 6vw, 78px);
      line-height:0.9; font-weight:500; letter-spacing:-3px; margin-top:14px;
    }
    .campaign-price { margin-top:24px; font-size:26px; font-weight:700; }
    .campaign-price del { color:#6a7a6a; font-size:15px; margin-left:8px; }
    .countdown { display:flex; gap:10px; margin-top:24px; }
    .time {
      width:64px; height:64px; background:rgba(255,255,255,0.3);
      border-radius:16px; display:flex; flex-direction:column;
      justify-content:center; align-items:center;
    }
    .time strong { font-size:20px; }
    .time span { font-size:8px; text-transform:uppercase; letter-spacing:1px; opacity:0.7; }
    .campaign-button { margin-top:28px; background:var(--black); color:white; border-radius:40px; padding:12px 34px; width:fit-content; }
    /* marquee */
    .marquee { background:var(--orange); color:white; overflow:hidden; padding:14px 0; }
    .marquee-track { display:flex; white-space:nowrap; animation:marquee 22s linear infinite; }
    .marquee-item { font-family:var(--serif); font-size:22px; font-style:italic; margin-right:44px; letter-spacing:0.3px; }
    @keyframes marquee { from { transform:translateX(0); } to { transform:translateX(-50%); } }
    /* reviews */
    .reviews { background:var(--cream); }
    .review-grid { display:grid; grid-template-columns:0.7fr 1.3fr; gap:70px; }
    .review-title h2 {
      font-family:var(--serif); font-size:54px; line-height:0.95; font-weight:500;
    }
    .review-main { border-top:1px solid var(--line); }
    .review {
      padding:28px 0; border-bottom:1px solid var(--line);
      display:grid; grid-template-columns:70px 1fr; gap:24px;
    }
    .review-number { font-size:11px; color:#b0aea7; font-weight:600; }
    .review p { font-family:var(--serif); font-size:24px; line-height:1.3; }
    .review-author { margin-top:14px; font-size:11px; text-transform:uppercase; letter-spacing:1px; color:var(--muted); }
    /* newsletter */
    .newsletter { background:#e3dfd4; }
    .newsletter-inner {
      display:grid; grid-template-columns:1fr 1fr; gap:60px; align-items:center;
    }
    .newsletter h2 {
      font-family:var(--serif); font-size:56px; font-weight:500; line-height:0.95;
    }
    .newsletter p { color:#5a5852; line-height:1.7; max-width:420px; }
    .newsletter-form {
      display:flex; border-bottom:1.5px solid var(--black); padding-bottom:8px; margin-top:8px;
    }
    .newsletter-form input {
      border:0; outline:0; background:transparent; flex:1; font-size:14px; padding:4px 0;
    }
    .newsletter-form button {
      font-weight:700; text-transform:uppercase; font-size:11px; letter-spacing:1px; padding:4px 0;
    }
    /* footer */
    footer { background:var(--black); color:white; padding:60px 0 28px; }
    .footer-top {
      display:grid; grid-template-columns:1.6fr 1fr 1fr 1fr; gap:44px; padding-bottom:50px;
    }
    .footer-brand { font-size:24px; font-weight:700; }
    .footer-brand span { color:var(--orange); }
    .footer-description {
      color:#98968e; max-width:280px; margin-top:14px; line-height:1.7; font-size:13px;
    }
    .footer-column h4 { font-size:11px; text-transform:uppercase; letter-spacing:1.5px; margin-bottom:16px; }
    .footer-column a { display:block; color:#98968e; font-size:13px; margin-bottom:10px; }
    .footer-column a:hover { color:white; }
    .footer-bottom {
      border-top:1px solid #2e2e2c; padding-top:20px;
      display:flex; justify-content:space-between; font-size:11px; color:#6a6a64;
    }
    /* cart */
    .cart-overlay {
      position:fixed; inset:0; background:rgba(0,0,0,0.25); z-index:2000;
      opacity:0; visibility:hidden; transition:0.25s;
    }
    .cart-overlay.open { opacity:1; visibility:visible; }
    .cart-drawer {
      position:absolute; right:0; top:0; width:min(400px,100%); height:100%;
      background:var(--white); padding:28px; transform:translateX(100%);
      transition:0.3s cubic-bezier(0.2,0.8,0.2,1); box-shadow:-8px 0 30px rgba(0,0,0,0.03);
    }
    .cart-overlay.open .cart-drawer { transform:translateX(0); }
    .cart-header { display:flex; justify-content:space-between; padding-bottom:18px; border-bottom:1px solid var(--line); }
    .cart-header h3 { font-family:var(--serif); font-size:26px; }
    .close-cart { font-size:22px; }
    .cart-empty { text-align:center; padding-top:80px; color:#9a9892; }
    .cart-empty i { font-size:36px; margin-bottom:12px; }
    .toast {
      position:fixed; right:24px; bottom:24px; z-index:3000;
      background:var(--black); color:white; padding:12px 24px; border-radius:40px;
      font-size:13px; font-weight:500; transform:translateY(70px); opacity:0; transition:0.3s;
    }
    .toast.show { transform:translateY(0); opacity:1; }
    /* responsive */
    @media(max-width:1050px) {
      .main-nav { display:none; }
      .header-inner { grid-template-columns:auto 1fr auto; }
      .mobile-menu-btn { display:block; margin-right:10px; }
      .collection-grid { grid-template-columns:1fr 1fr; }
      .collection, .collection:nth-child(2), .collection:nth-child(3) { height:360px; margin-top:0; }
      .collection:first-child { grid-column:span 2; }
      .products-grid { grid-template-columns:repeat(2,1fr); }
      .campaign-grid { grid-template-columns:1fr; }
      .campaign-image { min-height:340px; }
      .review-grid { grid-template-columns:1fr; gap:36px; }
      .newsletter-inner { grid-template-columns:1fr; }
      .footer-top { grid-template-columns:repeat(2,1fr); }
    }
    @media(max-width:650px) {
      .container { width:calc(100% - 20px); }
      .section { padding:50px 0; }
      .hero { min-height:540px; }
      .hero-content { padding-top:140px; }
      .hero h1 { font-size:48px; letter-spacing:-2px; }
      .hero-note { right:16px; bottom:16px; }
      .intro-grid { grid-template-columns:1fr; gap:20px; }
      .collection-heading, .products-heading { display:block; }
      .collection-heading h2, .products-heading h2 { font-size:36px; margin-bottom:12px; }
      .collection-grid { grid-template-columns:1fr; }
      .collection:first-child { grid-column:auto; }
      .collection, .collection:nth-child(2), .collection:nth-child(3) { height:300px; }
      .products-grid { grid-template-columns:1fr 1fr; gap:12px; }
      .product-name { font-size:13px; }
      .campaign-content { padding:28px 20px; }
      .campaign h2 { font-size:40px; }
      .countdown { gap:6px; }
      .time { width:52px; height:52px; }
      .time strong { font-size:16px; }
      .review-title h2 { font-size:38px; }
      .review { grid-template-columns:36px 1fr; gap:10px; }
      .review p { font-size:18px; }
      .newsletter h2 { font-size:38px; margin-bottom:12px; }
      .footer-top { grid-template-columns:1fr; gap:24px; }
      .footer-bottom { display:block; line-height:2; }
      .header-actions .account-icon, .header-actions .heart-icon { display:none; }
    }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header class="site-header" id="siteHeader">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:6px;">
        <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fa-solid fa-bars"></i></button>
        <a href="#" class="logo">Nexus<span>Shop</span></a>
      </div>
      <nav class="main-nav">
        <a href="#collections">Collections</a>
        <a href="#products">New arrivals</a>
        <a href="#campaign">Deals</a>
        <a href="#reviews">Journal</a>
      </nav>
      <div class="header-actions">
        <button class="header-icon" id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
        <button class="header-icon account-icon"><i class="fa-regular fa-user"></i></button>
        <button class="header-icon heart-icon"><i class="fa-regular fa-heart"></i></button>
        <button class="header-icon bag-button" id="bagButton">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="bag-count" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-image"><img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2200&q=90" alt="Modern retail"></div>
    <div class="hero-content">
      <div class="hero-eyebrow">The Nexus / 2026 Edition</div>
      <h1>Everyday<br><em>objects</em><br>elevated.</h1>
      <p class="hero-description">A considered collection of technology, style and essentials designed for people who care about what they bring into their everyday life.</p>
      <div class="hero-actions">
        <button class="primary-btn" id="shopNow">Explore the edit</button>
        <button class="text-btn" id="heroDeals">View this week's offers →</button>
      </div>
    </div>
    <div class="hero-note"><span><i class="fa-solid fa-arrow-down"></i></span> Scroll</div>
  </section>

  <!-- INTRO -->
  <section class="section intro">
    <div class="container intro-grid">
      <div><div class="section-label">Our philosophy</div><h2>Less noise.<br>Better <span class="serif">things.</span></h2></div>
      <div class="intro-copy"><p>NexusShop is a modern marketplace built around a simple idea: <strong>buy fewer things, but make them count.</strong> From everyday technology to personal style, every item in our edit is selected for design, usefulness and longevity.</p></div>
    </div>
  </section>

  <!-- COLLECTIONS -->
  <section class="section collections" id="collections">
    <div class="container">
      <div class="collection-heading">
        <div><div class="section-label">Curated collections</div><h2>Shop the edit</h2></div>
        <a href="#products" class="collection-link">View all →</a>
      </div>
      <div class="collection-grid">
        <article class="collection"><img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85" alt="Accessories"><div class="collection-info"><div class="collection-number">01 / ACCESSORIES</div><h3>Objects of style</h3><p>Small details. Big difference.</p></div></article>
        <article class="collection"><img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85" alt="Technology"><div class="collection-info"><div class="collection-number">02 / TECHNOLOGY</div><h3>Smart living</h3><p>Technology that earns its place.</p></div></article>
        <article class="collection"><img src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=85" alt="Fashion"><div class="collection-info"><div class="collection-number">03 / STYLE</div><h3>The wardrobe</h3><p>Timeless pieces, modern attitude.</p></div></article>
      </div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section products-section" id="products">
    <div class="container">
      <div class="products-heading">
        <div><div class="section-label">The current edit</div><h2>Trending now</h2></div>
        <div class="filter-tabs">
          <button class="filter-tab active" data-filter="all">All</button>
          <button class="filter-tab" data-filter="tech">Tech</button>
          <button class="filter-tab" data-filter="accessories">Accessories</button>
          <button class="filter-tab" data-filter="footwear">Style</button>
        </div>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- MARQUEE -->
  <div class="marquee"><div class="marquee-track"><div class="marquee-item">Free shipping over $100</div><div class="marquee-item">•</div><div class="marquee-item">New arrivals every week</div><div class="marquee-item">•</div><div class="marquee-item">Curated for modern living</div><div class="marquee-item">•</div><div class="marquee-item">Free shipping over $100</div><div class="marquee-item">•</div><div class="marquee-item">New arrivals every week</div><div class="marquee-item">•</div><div class="marquee-item">Curated for modern living</div><div class="marquee-item">•</div></div></div>

  <!-- CAMPAIGN -->
  <section class="campaign" id="campaign">
    <div class="container">
      <div class="campaign-grid">
        <div class="campaign-image"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1300&q=90" alt="MacBook"></div>
        <div class="campaign-content">
          <div class="campaign-small">Limited weekend edit / 17% off</div>
          <h2>The<br>MacBook<br>Air.</h2>
          <div class="campaign-price">$999 <del>$1,199</del></div>
          <div class="countdown">
            <div class="time"><strong id="days">00</strong><span>Days</span></div>
            <div class="time"><strong id="hours">00</strong><span>Hours</span></div>
            <div class="time"><strong id="minutes">00</strong><span>Minutes</span></div>
            <div class="time"><strong id="seconds">00</strong><span>Seconds</span></div>
          </div>
          <button class="primary-btn campaign-button" id="dealButton">Add to bag</button>
        </div>
      </div>
    </div>
  </section>

  <!-- REVIEWS -->
  <section class="section reviews" id="reviews">
    <div class="container review-grid">
      <div class="review-title"><div class="section-label">The journal</div><h2>Loved by<br>people who<br><em class="serif">notice.</em></h2></div>
      <div class="review-main">
        <article class="review"><div class="review-number">01</div><div><p>“Nexus feels completely different from the usual shopping experience. Everything feels considered.”</p><div class="review-author">Ava Martin — Verified customer</div></div></article>
        <article class="review"><div class="review-number">02</div><div><p>“Beautiful products, incredibly fast delivery and a website that is actually enjoyable to use.”</p><div class="review-author">Michael Lee — Verified customer</div></div></article>
        <article class="review"><div class="review-number">03</div><div><p>“I came for the headphones and somehow ended up redesigning my entire desk.”</p><div class="review-author">Sofia Williams — Verified customer</div></div></article>
      </div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section newsletter">
    <div class="container newsletter-inner">
      <div><div class="section-label">Stay curious</div><h2>Get the good<br>stuff first.</h2></div>
      <div>
        <p>New arrivals, limited drops and private offers. No spam. Just the occasional email worth opening.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Your email address" required>
          <button type="submit">Subscribe →</button>
        </form>
      </div>
    </div>
  </section>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-top">
        <div><div class="footer-brand">Nexus<span>Shop</span></div><p class="footer-description">A considered marketplace for modern living. Technology, style and everyday objects — curated, not crowded.</p></div>
        <div class="footer-column"><h4>Shop</h4><a href="#products">New arrivals</a><a href="#collections">Collections</a><a href="#campaign">Deals</a><a href="#">Best sellers</a></div>
        <div class="footer-column"><h4>Company</h4><a href="#">About</a><a href="#">Journal</a><a href="#">Careers</a><a href="#">Contact</a></div>
        <div class="footer-column"><h4>Help</h4><a href="#">Shipping</a><a href="#">Returns</a><a href="#">FAQ</a><a href="#">Support</a></div>
      </div>
      <div class="footer-bottom"><span>© <span id="year"></span> NexusShop</span><span>Designed for modern living.</span></div>
    </div>
  </footer>

  <!-- CART DRAWER -->
  <div class="cart-overlay" id="cartOverlay">
    <aside class="cart-drawer">
      <div class="cart-header"><h3>Your bag</h3><button class="close-cart" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div>
      <div class="cart-empty" id="cartEmpty"><i class="fa-solid fa-bag-shopping"></i><p>Your bag is currently empty.</p></div>
    </aside>
  </div>

  <!-- TOAST -->
