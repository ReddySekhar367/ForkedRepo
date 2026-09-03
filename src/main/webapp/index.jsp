This is a complete HTML document for a modern, user-friendly e-commerce brand page. It features a clean, editorial design with a focus on product presentation and a seamless shopping experience.
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — The Modern Edit</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:ital,wght@0,500;0,600;1,500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    html {
      scroll-behavior: smooth;
    }
    body {
      font-family: "Inter", sans-serif;
      background: #faf8f5;
      color: #1e1e1c;
      line-height: 1.5;
    }
    img {
      display: block;
      width: 100%;
    }
    button {
      cursor: pointer;
      font: inherit;
    }
    a {
      color: inherit;
      text-decoration: none;
    }
    :root {
      --black: #1e1e1c;
      --cream: #faf8f5;
      --white: #ffffff;
      --orange: #e85d2c;
      --green: #a0b8a0;
      --muted: #7a7a72;
      --line: #e0dbd2;
      --serif: "Playfair Display", serif;
      --sans: "Inter", sans-serif;
      --shadow: 0 12px 30px rgba(0,0,0,0.04);
    }
    .container {
      width: min(1360px, calc(100% - 40px));
      margin: 0 auto;
    }
    .section {
      padding: 100px 0;
    }
    .section-label {
      display: flex;
      align-items: center;
      gap: 12px;
      font-size: 11px;
      font-weight: 600;
      letter-spacing: 2px;
      text-transform: uppercase;
      color: var(--muted);
      margin-bottom: 16px;
    }
    .section-label::before {
      content: "";
      width: 32px;
      height: 1.5px;
      background: currentColor;
    }
    .serif {
      font-family: var(--serif);
    }
    /* header */
    .site-header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 1000;
      padding: 16px 0;
      color: #fff;
      transition: 0.25s;
    }
    .site-header.scrolled {
      background: rgba(250, 248, 245, 0.92);
      color: var(--black);
      backdrop-filter: blur(14px);
      border-bottom: 1px solid var(--line);
    }
    .header-inner {
      display: grid;
      grid-template-columns: 1fr auto 1fr;
      align-items: center;
    }
    .logo {
      font-size: 22px;
      font-weight: 700;
      letter-spacing: -0.5px;
    }
    .logo span {
      color: var(--orange);
    }
    .main-nav {
      display: flex;
      gap: 36px;
      font-size: 13px;
      font-weight: 500;
    }
    .main-nav a {
      position: relative;
    }
    .main-nav a::after {
      content: "";
      position: absolute;
      bottom: -6px;
      left: 0;
      width: 0;
      height: 2px;
      background: currentColor;
      transition: 0.2s;
    }
    .main-nav a:hover::after {
      width: 100%;
    }
    .header-actions {
      display: flex;
      justify-content: flex-end;
      gap: 18px;
      align-items: center;
    }
    .header-icon {
      background: transparent;
      border: 0;
      color: inherit;
      font-size: 18px;
    }
    .bag-button {
      position: relative;
    }
    .bag-count {
      position: absolute;
      top: -8px;
      right: -9px;
      background: var(--orange);
      color: #fff;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      font-size: 9px;
      font-weight: 700;
      display: grid;
      place-items: center;
    }
    .mobile-menu-btn {
      display: none;
      background: transparent;
      border: 0;
      color: inherit;
      font-size: 20px;
    }
    /* hero */
    .hero {
      min-height: 780px;
      background: #1c1c19;
      color: white;
      position: relative;
      overflow: hidden;
    }
    .hero-image {
      position: absolute;
      inset: 0;
    }
    .hero-image::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(90deg, rgba(0,0,0,0.7) 0%, rgba(0,0,0,0.2) 60%, transparent 100%);
    }
    .hero-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      padding-top: 200px;
      max-width: 1380px;
      margin: auto;
      width: calc(100% - 40px);
    }
    .hero-eyebrow {
      font-size: 11px;
      letter-spacing: 3px;
      text-transform: uppercase;
      font-weight: 600;
      color: #cfcfcf;
      margin-bottom: 28px;
    }
    .hero h1 {
      font-family: var(--serif);
      font-size: clamp(68px, 10vw, 140px);
      line-height: 0.88;
      font-weight: 500;
      letter-spacing: -5px;
      max-width: 850px;
    }
    .hero h1 em {
      color: var(--orange);
      font-style: italic;
    }
    .hero-description {
      margin-top: 36px;
      max-width: 460px;
      font-size: 16px;
      line-height: 1.8;
      color: #d0d0d0;
    }
    .hero-actions {
      margin-top: 34px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 16px 28px;
    }
    .primary-btn {
      background: var(--orange);
      border: 0;
      color: white;
      padding: 16px 32px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      transition: 0.2s;
      border-radius: 40px;
    }
    .primary-btn:hover {
      background: white;
      color: var(--black);
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }
    .text-btn {
      background: transparent;
      border: 0;
      color: white;
      font-size: 12px;
      font-weight: 600;
      border-bottom: 1.5px solid rgba(255,255,255,0.5);
      padding-bottom: 4px;
    }
    .hero-note {
      position: absolute;
      right: 40px;
      bottom: 40px;
      z-index: 3;
      display: flex;
      align-items: center;
      gap: 12px;
      font-size: 10px;
      text-transform: uppercase;
      letter-spacing: 1.5px;
      color: #ccc;
    }
    .hero-note span {
      width: 44px;
      height: 44px;
      border: 1px solid rgba(255,255,255,0.3);
      border-radius: 50%;
      display: grid;
      place-items: center;
    }
    /* intro */
    .intro {
      background: var(--cream);
    }
    .intro-grid {
      display: grid;
      grid-template-columns: 1fr 1.6fr;
      gap: 70px;
      align-items: end;
    }
    .intro h2 {
      font-family: var(--serif);
      font-size: clamp(44px, 5vw, 72px);
      font-weight: 500;
      line-height: 0.95;
      letter-spacing: -2px;
    }
    .intro-copy {
      font-size: 19px;
      line-height: 1.7;
      color: #5d5c56;
      max-width: 600px;
    }
    .intro-copy strong {
      color: var(--black);
    }
    /* collections */
    .collections {
      background: var(--cream);
      padding-top: 20px;
    }
    .collection-heading {
      display: flex;
      justify-content: space-between;
      align-items: end;
      margin-bottom: 44px;
    }
    .collection-heading h2 {
      font-family: var(--serif);
      font-size: 56px;
      font-weight: 500;
      letter-spacing: -1.5px;
    }
    .collection-link {
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 1px;
      border-bottom: 1.5px solid;
      padding-bottom: 4px;
    }
    .collection-grid {
      display: grid;
      grid-template-columns: 1.2fr 0.9fr 0.9fr;
      gap: 18px;
    }
    .collection {
      position: relative;
      height: 540px;
      overflow: hidden;
      color: white;
      border-radius: 16px;
    }
    .collection:nth-child(2) {
      height: 420px;
      margin-top: 120px;
    }
    .collection:nth-child(3) {
      height: 540px;
    }
    .collection img {
      height: 100%;
      object-fit: cover;
      transition: transform 0.7s cubic-bezier(0.2,0.8,0.2,1);
    }
    .collection:hover img {
      transform: scale(1.05);
    }
    .collection::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(transparent 35%, rgba(0,0,0,0.7));
    }
    .collection-info {
      position: absolute;
      z-index: 2;
      bottom: 30px;
      left: 28px;
      right: 28px;
    }
    .collection-number {
      font-size: 10px;
      letter-spacing: 2px;
      opacity: 0.7;
      margin-bottom: 8px;
    }
    .collection h3 {
      font-family: var(--serif);
      font-size: 38px;
      font-weight: 500;
    }
    .collection p {
      font-size: 12px;
      opacity: 0.85;
      margin-top: 4px;
    }
    /* products */
    .products-section {
      background: var(--white);
    }
    .products-heading {
      display: flex;
      justify-content: space-between;
      align-items: end;
      margin-bottom: 44px;
      flex-wrap: wrap;
    }
    .products-heading h2 {
      font-family: var(--serif);
      font-size: 56px;
      font-weight: 500;
      letter-spacing: -1.5px;
    }
    .filter-tabs {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .filter-tab {
      border: 1px solid var(--line);
      background: transparent;
      padding: 8px 18px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 600;
      transition: 0.15s;
    }
    .filter-tab.active,
    .filter-tab:hover {
      background: var(--black);
      color: white;
      border-color: var(--black);
    }
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }
    .product {
      background: #fff;
      border-radius: 16px;
      overflow: hidden;
      transition: 0.2s;
      box-shadow: var(--shadow);
    }
    .product:hover {
      transform: translateY(-4px);
      box-shadow: 0 16px 36px rgba(0,0,0,0.06);
    }
    .product-image {
      position: relative;
      background: #f0ede7;
      aspect-ratio: 0.82;
      overflow: hidden;
    }
    .product-image img {
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s;
    }
    .product:hover .product-image img {
      transform: scale(1.03);
    }
    .product-wish {
      position: absolute;
      top: 14px;
      right: 14px;
      background: rgba(255,255,255,0.92);
      border: 0;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      font-size: 16px;
      display: grid;
      place-items: center;
      z-index: 2;
      transition: 0.15s;
    }
    .product-wish:hover {
      background: #fff;
      transform: scale(1.05);
    }
    .product-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--orange);
      color: white;
      padding: 6px 12px;
      font-size: 9px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      border-radius: 30px;
      z-index: 2;
    }
    .product-quick {
      position: absolute;
      left: 16px;
      right: 16px;
      bottom: -50px;
      background: white;
      border: 0;
      height: 44px;
      font-weight: 700;
      font-size: 11px;
      text-transform: uppercase;
      letter-spacing: 1px;
      border-radius: 40px;
      transition: 0.25s;
      box-shadow: 0 4px 14px rgba(0,0,0,0.04);
    }
    .product:hover .product-quick {
      bottom: 16px;
    }
    .product-details {
      padding: 16px 16px 18px;
    }
    .product-category {
      color: #9a9892;
      text-transform: uppercase;
      font-size: 9px;
      letter-spacing: 1.2px;
    }
    .product-name {
      margin-top: 5px;
      font-size: 15px;
      font-weight: 600;
    }
    .product-bottom {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 8px;
    }
    .product-price {
      font-weight: 700;
      font-size: 14px;
    }
    .product-old {
      color: #b0aea7;
      text-decoration: line-through;
      font-size: 12px;
      margin-left: 6px;
      font-weight: 400;
    }
    .stars {
      color: #d4a030;
      font-size: 11px;
      letter-spacing: 1px;
    }
    /* campaign */
    .campaign {
      background: var(--black);
      color: white;
      padding: 100px 0;
    }
    .campaign-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 600px;
      border-radius: 24px;
      overflow: hidden;
    }
    .campaign-image {
      position: relative;
      overflow: hidden;
    }
    .campaign-image img {
      height: 100%;
      object-fit: cover;
    }
    .campaign-content {
      background: var(--green);
      color: var(--black);
      padding: 60px 56px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .campaign-small {
      text-transform: uppercase;
      letter-spacing: 2px;
      font-size: 10px;
      font-weight: 700;
    }
    .campaign h2 {
      font-family: var(--serif);
      font-size: clamp(50px, 6vw, 85px);
      line-height: 0.9;
      font-weight: 500;
      letter-spacing: -3px;
      margin-top: 16px;
    }
    .campaign-price {
      margin-top: 28px;
      font-size: 28px;
      font-weight: 700;
    }
    .campaign-price del {
      color: #6a7a6a;
      font-size: 16px;
      margin-left: 10px;
    }
    .countdown {
      display: flex;
      gap: 12px;
      margin-top: 28px;
    }
    .time {
      width: 70px;
      height: 70px;
      background: rgba(255,255,255,0.3);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      border-radius: 16px;
    }
    .time strong {
      font-size: 22px;
    }
    .time span {
      font-size: 8px;
      text-transform: uppercase;
      letter-spacing: 1px;
      opacity: 0.7;
    }
    .campaign-button {
      margin-top: 32px;
      background: var(--black);
      color: white;
      border-radius: 40px;
      padding: 14px 36px;
      width: fit-content;
    }
    /* marquee */
    .marquee {
      background: var(--orange);
      color: white;
      overflow: hidden;
      padding: 16px 0;
    }
    .marquee-track {
      display: flex;
      white-space: nowrap;
      animation: marquee 24s linear infinite;
    }
    .marquee-item {
      font-family: var(--serif);
      font-size: 26px;
      font-style: italic;
      margin-right: 50px;
      letter-spacing: 0.5px;
    }
    @keyframes marquee {
      from { transform: translateX(0); }
      to { transform: translateX(-50%); }
    }
    /* reviews */
    .reviews {
      background: var(--cream);
    }
    .review-grid {
      display: grid;
      grid-template-columns: 0.7fr 1.3fr;
      gap: 80px;
    }
    .review-title h2 {
      font-family: var(--serif);
      font-size: 60px;
      line-height: 0.95;
      font-weight: 500;
    }
    .review-main {
      border-top: 1px solid var(--line);
    }
    .review {
      padding: 32px 0;
      border-bottom: 1px solid var(--line);
      display: grid;
      grid-template-columns: 80px 1fr;
      gap: 30px;
    }
    .review-number {
      font-size: 11px;
      color: #b0aea7;
      font-weight: 600;
    }
    .review p {
      font-family: var(--serif);
      font-size: 26px;
      line-height: 1.3;
    }
    .review-author {
      margin-top: 16px;
      font-size: 11px;
      text-transform: uppercase;
      letter-spacing: 1px;
      color: var(--muted);
    }
    /* newsletter */
    .newsletter {
      background: #e7e2d8;
    }
    .newsletter-inner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 70px;
      align-items: center;
    }
    .newsletter h2 {
      font-family: var(--serif);
      font-size: 62px;
      font-weight: 500;
      line-height: 0.95;
    }
    .newsletter p {
      color: #5a5852;
      line-height: 1.7;
      max-width: 460px;
    }
    .newsletter-form {
      display: flex;
      border-bottom: 1.5px solid var(--black);
      padding-bottom: 10px;
      margin-top: 10px;
    }
    .newsletter-form input {
      border: 0;
      outline: 0;
      background: transparent;
      flex: 1;
      font-size: 15px;
      padding: 4px 0;
    }
    .newsletter-form button {
      border: 0;
      background: transparent;
      font-weight: 700;
      text-transform: uppercase;
      font-size: 11px;
      letter-spacing: 1px;
      padding: 4px 0;
    }
    /* footer */
    footer {
      background: var(--black);
      color: white;
      padding: 70px 0 30px;
    }
    .footer-top {
      display: grid;
      grid-template-columns: 1.6fr 1fr 1fr 1fr;
      gap: 50px;
      padding-bottom: 60px;
    }
    .footer-brand {
      font-size: 26px;
      font-weight: 700;
    }
    .footer-brand span {
      color: var(--orange);
    }
    .footer-description {
      color: #98968e;
      max-width: 300px;
      margin-top: 16px;
      line-height: 1.7;
      font-size: 13px;
    }
    .footer-column h4 {
      font-size: 11px;
      text-transform: uppercase;
      letter-spacing: 1.5px;
      margin-bottom: 18px;
    }
    .footer-column a {
      display: block;
      color: #98968e;
      font-size: 13px;
      margin-bottom: 12px;
    }
    .footer-column a:hover {
      color: white;
    }
    .footer-bottom {
      border-top: 1px solid #2e2e2c;
      padding-top: 24px;
      display: flex;
      justify-content: space-between;
      font-size: 11px;
      color: #6a6a64;
    }
    /* cart */
    .cart-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.3);
      z-index: 2000;
      opacity: 0;
      visibility: hidden;
      transition: 0.25s;
    }
    .cart-overlay.open {
      opacity: 1;
      visibility: visible;
    }
    .cart-drawer {
      position: absolute;
      right: 0;
      top: 0;
      width: min(420px, 100%);
      height: 100%;
      background: var(--white);
      padding: 32px;
      transform: translateX(100%);
      transition: 0.3s cubic-bezier(0.2,0.8,0.2,1);
      box-shadow: -10px 0 30px rgba(0,0,0,0.04);
    }
    .cart-overlay.open .cart-drawer {
      transform: translateX(0);
    }
    .cart-header {
      display: flex;
      justify-content: space-between;
      padding-bottom: 20px;
      border-bottom: 1px solid var(--line);
    }
    .cart-header h3 {
      font-family: var(--serif);
      font-size: 28px;
    }
    .close-cart {
      border: 0;
      background: transparent;
      font-size: 24px;
    }
    .cart-empty {
      text-align: center;
      padding-top: 100px;
      color: #9a9892;
    }
    .cart-empty i {
      font-size: 40px;
      margin-bottom: 16px;
    }
    /* toast */
    .toast {
      position: fixed;
      right: 24px;
      bottom: 24px;
      z-index: 3000;
      background: var(--black);
      color: white;
      padding: 14px 24px;
      border-radius: 40px;
      font-size: 13px;
      font-weight: 500;
      transform: translateY(80px);
      opacity: 0;
      transition: 0.3s;
    }
    .toast.show {
      transform: translateY(0);
      opacity: 1;
    }
    /* responsive */
    @media(max-width: 1050px) {
      .main-nav { display: none; }
      .header-inner { grid-template-columns: auto 1fr auto; }
      .mobile-menu-btn { display: block; margin-right: 12px; }
      .collection-grid { grid-template-columns: 1fr 1fr; }
      .collection, .collection:nth-child(2), .collection:nth-child(3) { height: 400px; margin-top: 0; }
      .collection:first-child { grid-column: span 2; }
      .products-grid { grid-template-columns: repeat(2, 1fr); }
      .campaign-grid { grid-template-columns: 1fr; }
      .campaign-image { min-height: 400px; }
      .review-grid { grid-template-columns: 1fr; gap: 40px; }
      .newsletter-inner { grid-template-columns: 1fr; }
      .footer-top { grid-template-columns: repeat(2, 1fr); }
    }
    @media(max-width: 650px) {
      .container { width: calc(100% - 24px); }
      .section { padding: 60px 0; }
      .hero { min-height: 600px; }
      .hero-content { padding-top: 160px; }
      .hero h1 { font-size: 56px; letter-spacing: -2px; }
      .hero-note { right: 16px; bottom: 20px; }
      .intro-grid { grid-template-columns: 1fr; gap: 24px; }
      .collection-heading, .products-heading { display: block; }
      .collection-heading h2, .products-heading h2 { font-size: 40px; margin-bottom: 16px; }
      .collection-grid { grid-template-columns: 1fr; }
      .collection:first-child { grid-column: auto; }
      .collection, .collection:nth-child(2), .collection:nth-child(3) { height: 360px; }
      .products-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
      .product-name { font-size: 13px; }
      .campaign-content { padding: 32px 20px; }
      .campaign h2 { font-size: 46px; }
      .countdown { gap: 6px; }
      .time { width: 56px; height: 56px; }
      .time strong { font-size: 18px; }
      .review-title h2 { font-size: 44px; }
      .review { grid-template-columns: 40px 1fr; gap: 12px; }
      .review p { font-size: 20px; }
      .newsletter h2 { font-size: 44px; margin-bottom: 16px; }
      .footer-top { grid-template-columns: 1fr; gap: 30px; }
      .footer-bottom { display: block; line-height: 2; }
      .header-actions .account-icon, .header-actions .heart-icon { display: none; }
    }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header class="site-header" id="siteHeader">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:8px;">
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
    <div class="hero-image">
      <img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2200&q=90" alt="Modern store">
    </div>
    <div class="hero-content">
      <div class="hero-eyebrow">The Nexus / 2026 Edition</div>
      <h1>Everyday<br><em>objects</em><br>elevated.</h1>
      <p class="hero-description">A considered collection of technology, style and essentials designed for people who care about what they bring into their everyday life.</p>
      <div class="hero-actions">
        <button class="primary-btn" id="shopNow">Explore the edit</button>
        <button class="text-btn" id="heroDeals">View this week's offers →</button>
      </div>
    </div>
    <div class="hero-note"><span><i class="fa-solid fa-arrow-down"></i></span> Scroll to explore</div>
  </section>

  <!-- INTRO -->
  <section class="section intro">
    <div class="container intro-grid">
      <div>
        <div class="section-label">Our philosophy</div>
        <h2>Less noise.<br>Better <span class="serif">things.</span></h2>
      </div>
      <div class="intro-copy">
        <p>NexusShop is a modern marketplace built around a simple idea: <strong>buy fewer things, but make them count.</strong> From everyday technology to personal style, every item in our edit is selected for design, usefulness and longevity.</p>
      </div>
    </div>
  </section>

  <!-- COLLECTIONS -->
  <section class="section collections" id="collections">
    <div class="container">
      <div class="collection-heading">
        <div>
          <div class="section-label">Curated collections</div>
          <h2>Shop the edit</h2>
        </div>
        <a href="#products" class="collection-link">View all →</a>
      </div>
      <div class="collection-grid">
        <article class="collection">
          <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85" alt="Accessories">
          <div class="collection-info"><div class="collection-number">01 / ACCESSORIES</div><h3>Objects of style</h3><p>Small details. Big difference.</p></div>
        </article>
        <article class="collection">
          <img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85" alt="Technology">
          <div class="collection-info"><div class="collection-number">02 / TECHNOLOGY</div><h3>Smart living</h3><p>Technology that earns its place.</p></div>
        </article>
        <article class="collection">
          <img src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=85" alt="Fashion">
          <div class="collection-info"><div class="collection-number">03 / STYLE</div><h3>The wardrobe</h3><p>Timeless pieces, modern attitude.</p></div>
        </article>
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
  <div class="marquee">
    <div class="marquee-track">
      <div class="marquee-item">Free shipping over $100</div><div class="marquee-item">•</div>
      <div class="marquee-item">New arrivals every week</div><div class="marquee-item">•</div>
      <div class="marquee-item">Curated for modern living</div><div class="marquee-item">•</div>
      <div class="marquee-item">Free shipping over $100</div><div class="marquee-item">•</div>
      <div class="marquee-item">New arrivals every week</div><div class="marquee-item">•</div>
      <div class="marquee-item">Curated for modern living</div><div class="marquee-item">•</div>
    </div>
  </div>

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
            <div class="time"><strong id="days
