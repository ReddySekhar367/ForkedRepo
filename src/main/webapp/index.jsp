<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — The Modern Edit</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   RESET
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    background: #f3f0e9;
    color: #171714;
    overflow-x: hidden;
}

img {
    display: block;
    width: 100%;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

:root {
    --black: #171714;
    --cream: #f3f0e9;
    --white: #fffdf8;
    --orange: #ff5b22;
    --green: #aebda1;
    --muted: #77766f;
    --line: #d8d4cb;
    --serif: "Playfair Display", serif;
    --sans: "DM Sans", sans-serif;
}

/* =========================================================
   GLOBAL
========================================================= */

.container {
    width: min(1380px, calc(100% - 48px));
    margin: auto;
}

.section {
    padding: 110px 0;
}

.section-label {
    display: flex;
    align-items: center;
    gap: 12px;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 20px;
}

.section-label::before {
    content: "";
    width: 32px;
    height: 1px;
    background: currentColor;
}

.serif {
    font-family: var(--serif);
}

/* =========================================================
   HEADER
========================================================= */

.site-header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    padding: 18px 0;
    color: #fff;
    transition: .3s;
}

.site-header.scrolled {
    background: rgba(243, 240, 233, .94);
    color: var(--black);
    backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--line);
}

.header-inner {
    display: grid;
    grid-template-columns: 1fr auto 1fr;
    align-items: center;
}

.logo {
    font-size: 20px;
    font-weight: 700;
    letter-spacing: -1px;
}

.logo span {
    color: var(--orange);
}

.main-nav {
    display: flex;
    gap: 34px;
    font-size: 13px;
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
    height: 1px;
    background: currentColor;
    transition: .25s;
}

.main-nav a:hover::after {
    width: 100%;
}

.header-actions {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 18px;
}

.header-icon {
    border: 0;
    background: transparent;
    color: inherit;
    font-size: 16px;
}

.bag-button {
    position: relative;
}

.bag-count {
    position: absolute;
    top: -8px;
    right: -9px;
    width: 17px;
    height: 17px;
    border-radius: 50%;
    background: var(--orange);
    color: white;
    display: grid;
    place-items: center;
    font-size: 9px;
    font-weight: 700;
}

.mobile-menu-btn {
    display: none;
}

/* =========================================================
   HERO
========================================================= */

.hero {
    min-height: 820px;
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
    background:
        linear-gradient(
            90deg,
            rgba(0,0,0,.78) 0%,
            rgba(0,0,0,.40) 43%,
            rgba(0,0,0,.08) 100%
        );
}

.hero-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.hero-content {
    position: relative;
    z-index: 2;
    padding-top: 240px;
    max-width: 1380px;
    margin: auto;
    width: calc(100% - 48px);
}

.hero-eyebrow {
    font-size: 11px;
    letter-spacing: 3px;
    text-transform: uppercase;
    font-weight: 600;
    margin-bottom: 28px;
    color: #ddd;
}

.hero h1 {
    font-family: var(--serif);
    font-size: clamp(70px, 10vw, 150px);
    line-height: .86;
    font-weight: 500;
    letter-spacing: -7px;
    max-width: 850px;
}

.hero h1 em {
    color: var(--orange);
    font-style: italic;
}

.hero-description {
    margin-top: 38px;
    max-width: 420px;
    font-size: 15px;
    line-height: 1.8;
    color: #ddd;
}

.hero-actions {
    margin-top: 32px;
    display: flex;
    align-items: center;
    gap: 20px;
}

.primary-btn {
    border: 0;
    background: var(--orange);
    color: white;
    padding: 15px 25px;
    font-size: 12px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: .25s;
}

.primary-btn:hover {
    background: white;
    color: var(--black);
    transform: translateY(-3px);
}

.text-btn {
    border: 0;
    background: transparent;
    color: white;
    font-size: 12px;
    font-weight: 600;
    border-bottom: 1px solid rgba(255,255,255,.6);
    padding-bottom: 5px;
}

.hero-note {
    position: absolute;
    right: 48px;
    bottom: 50px;
    z-index: 3;
    display: flex;
    align-items: center;
    gap: 14px;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.hero-note span {
    width: 45px;
    height: 45px;
    border: 1px solid rgba(255,255,255,.5);
    border-radius: 50%;
    display: grid;
    place-items: center;
}

/* =========================================================
   INTRO
========================================================= */

.intro {
    background: var(--cream);
}

.intro-grid {
    display: grid;
    grid-template-columns: 1fr 1.7fr;
    gap: 80px;
    align-items: end;
}

.intro h2 {
    font-family: var(--serif);
    font-size: clamp(42px, 5vw, 75px);
    font-weight: 500;
    line-height: .95;
    letter-spacing: -3px;
}

.intro-copy {
    max-width: 600px;
    font-size: 20px;
    line-height: 1.65;
    color: #5d5c56;
}

.intro-copy strong {
    color: var(--black);
}

/* =========================================================
   COLLECTIONS
========================================================= */

.collections {
    background: var(--cream);
    padding-top: 20px;
}

.collection-heading {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 45px;
}

.collection-heading h2 {
    font-family: var(--serif);
    font-size: 58px;
    font-weight: 500;
    letter-spacing: -2px;
}

.collection-link {
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: 1px;
    border-bottom: 1px solid;
    padding-bottom: 5px;
}

.collection-grid {
    display: grid;
    grid-template-columns: 1.15fr .85fr .85fr;
    gap: 16px;
}

.collection {
    position: relative;
    height: 560px;
    overflow: hidden;
    color: white;
}

.collection:nth-child(2) {
    height: 430px;
    margin-top: 130px;
}

.collection:nth-child(3) {
    height: 560px;
}

.collection img {
    height: 100%;
    object-fit: cover;
    transition: transform .8s cubic-bezier(.2,.7,.2,1);
}

.collection:hover img {
    transform: scale(1.06);
}

.collection::after {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(
        transparent 35%,
        rgba(0,0,0,.72)
    );
}

.collection-info {
    position: absolute;
    z-index: 2;
    bottom: 28px;
    left: 28px;
    right: 28px;
}

.collection-number {
    font-size: 10px;
    letter-spacing: 2px;
    margin-bottom: 10px;
    opacity: .75;
}

.collection h3 {
    font-family: var(--serif);
    font-size: 38px;
    font-weight: 500;
}

.collection p {
    margin-top: 7px;
    font-size: 12px;
    opacity: .8;
}

/* =========================================================
   PRODUCTS
========================================================= */

.products-section {
    background: var(--white);
}

.products-heading {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 45px;
}

.products-heading h2 {
    font-family: var(--serif);
    font-size: 60px;
    font-weight: 500;
    letter-spacing: -2px;
}

.filter-tabs {
    display: flex;
    gap: 8px;
}

.filter-tab {
    border: 1px solid var(--line);
    background: transparent;
    padding: 9px 14px;
    font-size: 11px;
    border-radius: 100px;
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
    position: relative;
}

.product-image {
    position: relative;
    background: #efede7;
    aspect-ratio: .82;
    overflow: hidden;
}

.product-image img {
    height: 100%;
    object-fit: cover;
    transition: transform .6s;
}

.product:hover .product-image img {
    transform: scale(1.04);
}

.product-wish {
    position: absolute;
    top: 16px;
    right: 16px;
    width: 38px;
    height: 38px;
    border: 0;
    background: rgba(255,255,255,.9);
    border-radius: 50%;
    z-index: 2;
}

.product-badge {
    position: absolute;
    top: 16px;
    left: 16px;
    z-index: 2;
    background: var(--orange);
    color: white;
    padding: 7px 10px;
    font-size: 9px;
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
}

.product-quick {
    position: absolute;
    left: 16px;
    right: 16px;
    bottom: -55px;
    border: 0;
    background: white;
    color: var(--black);
    height: 45px;
    font-size: 11px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: .3s;
}

.product:hover .product-quick {
    bottom: 16px;
}

.product-details {
    padding-top: 17px;
}

.product-category {
    color: #929089;
    text-transform: uppercase;
    font-size: 9px;
    letter-spacing: 1.5px;
}

.product-name {
    margin-top: 6px;
    font-size: 15px;
    font-weight: 600;
}

.product-bottom {
    display: flex;
    justify-content: space-between;
    margin-top: 8px;
}

.product-price {
    font-size: 14px;
    font-weight: 700;
}

.product-old {
    color: #aaa;
    text-decoration: line-through;
    font-size: 12px;
    margin-left: 5px;
}

.stars {
    color: #e9a321;
    font-size: 10px;
}

/* =========================================================
   FEATURED CAMPAIGN
========================================================= */

.campaign {
    background: var(--black);
    color: white;
    padding: 120px 0;
}

.campaign-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    min-height: 650px;
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
    padding: 70px;
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
    font-size: clamp(55px, 6vw, 90px);
    line-height: .9;
    font-weight: 500;
    letter-spacing: -4px;
    margin-top: 20px;
}

.campaign-price {
    margin-top: 35px;
    font-size: 28px;
    font-weight: 700;
}

.campaign-price del {
    color: #727a6b;
    font-size: 16px;
    margin-left: 8px;
}

.countdown {
    display: flex;
    gap: 12px;
    margin-top: 30px;
}

.time {
    width: 75px;
    height: 75px;
    background: rgba(255,255,255,.35);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.time strong {
    font-size: 22px;
}

.time span {
    font-size: 8px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.campaign-button {
    margin-top: 35px;
    width: fit-content;
    background: var(--black);
    color: white;
}

/* =========================================================
   MARQUEE
========================================================= */

.marquee {
    background: var(--orange);
    color: white;
    overflow: hidden;
    padding: 19px 0;
}

.marquee-track {
    display: flex;
    white-space: nowrap;
    animation: marquee 22s linear infinite;
}

.marquee-item {
    font-family: var(--serif);
    font-size: 28px;
    font-style: italic;
    margin-right: 55px;
}

@keyframes marquee {
    from {
        transform: translateX(0);
    }
    to {
        transform: translateX(-50%);
    }
}

/* =========================================================
   TESTIMONIAL
========================================================= */

.reviews {
    background: var(--cream);
}

.review-grid {
    display: grid;
    grid-template-columns: .7fr 1.3fr;
    gap: 100px;
}

.review-title h2 {
    font-family: var(--serif);
    font-size: 62px;
    line-height: .95;
    font-weight: 500;
}

.review-main {
    border-top: 1px solid var(--line);
}

.review {
    padding: 35px 0;
    border-bottom: 1px solid var(--line);
    display: grid;
    grid-template-columns: 90px 1fr;
    gap: 30px;
}

.review-number {
    font-size: 11px;
    color: #999;
}

.review p {
    font-family: var(--serif);
    font-size: 27px;
    line-height: 1.3;
}

.review-author {
    margin-top: 18px;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    background: #e3dfd5;
}

.newsletter-inner {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 80px;
    align-items: center;
}

.newsletter h2 {
    font-family: var(--serif);
    font-size: 65px;
    font-weight: 500;
    line-height: .95;
}

.newsletter p {
    color: #66645d;
    line-height: 1.7;
    max-width: 450px;
}

.newsletter-form {
    display: flex;
    border-bottom: 1px solid var(--black);
    padding-bottom: 12px;
}

.newsletter-form input {
    border: 0;
    outline: 0;
    background: transparent;
    flex: 1;
    font-size: 15px;
}

.newsletter-form button {
    border: 0;
    background: transparent;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 11px;
    letter-spacing: 1px;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    background: var(--black);
    color: white;
    padding: 80px 0 30px;
}

.footer-top {
    display: grid;
    grid-template-columns: 1.5fr 1fr 1fr 1fr;
    gap: 50px;
    padding-bottom: 70px;
}

.footer-brand {
    font-size: 26px;
    font-weight: 700;
}

.footer-brand span {
    color: var(--orange);
}

.footer-description {
    color: #8f8e88;
    max-width: 300px;
    margin-top: 18px;
    line-height: 1.7;
    font-size: 13px;
}

.footer-column h4 {
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 1.5px;
    margin-bottom: 20px;
}

.footer-column a {
    display: block;
    color: #999;
    font-size: 13px;
    margin-bottom: 12px;
}

.footer-column a:hover {
    color: white;
}

.footer-bottom {
    border-top: 1px solid #333;
    padding-top: 25px;
    color: #777;
    display: flex;
    justify-content: space-between;
    font-size: 11px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.45);
    z-index: 2000;
    opacity: 0;
    visibility: hidden;
    transition: .3s;
}

.cart-overlay.open {
    opacity: 1;
    visibility: visible;
}

.cart-drawer {
    position: absolute;
    right: 0;
    top: 0;
    width: min(440px, 100%);
    height: 100%;
    background: var(--white);
    color: var(--black);
    padding: 30px;
    transform: translateX(100%);
    transition: .4s cubic-bezier(.2,.8,.2,1);
}

.cart-overlay.open .cart-drawer {
    transform: translateX(0);
}

.cart-header {
    display: flex;
    justify-content: space-between;
    padding-bottom: 25px;
    border-bottom: 1px solid var(--line);
}

.cart-header h3 {
    font-family: var(--serif);
    font-size: 28px;
}

.close-cart {
    border: 0;
    background: transparent;
    font-size: 20px;
}

.cart-empty {
    text-align: center;
    padding-top: 100px;
    color: #888;
}

.cart-empty i {
    font-size: 40px;
    margin-bottom: 20px;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;
    right: 25px;
    bottom: 25px;
    z-index: 3000;
    background: var(--black);
    color: white;
    padding: 15px 20px;
    font-size: 12px;
    transform: translateY(100px);
    opacity: 0;
    transition: .3s;
}

.toast.show {
    transform: translateY(0);
    opacity: 1;
}

/* =========================================================
   MOBILE
========================================================= */

@media(max-width: 1000px) {

    .main-nav {
        display: none;
    }

    .header-inner {
        grid-template-columns: auto 1fr auto;
    }

    .mobile-menu-btn {
        display: block;
        border: 0;
        background: transparent;
        color: inherit;
        margin-right: 15px;
    }

    .hero {
        min-height: 720px;
    }

    .hero-content {
        padding-top: 200px;
    }

    .collection-grid {
        grid-template-columns: 1fr 1fr;
    }

    .collection,
    .collection:nth-child(2),
    .collection:nth-child(3) {
        height: 420px;
        margin-top: 0;
    }

    .collection:first-child {
        grid-column: span 2;
    }

    .products-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .campaign-grid {
        grid-template-columns: 1fr;
    }

    .campaign-image {
        min-height: 500px;
    }

    .review-grid {
        grid-template-columns: 1fr;
        gap: 50px;
    }

    .newsletter-inner {
        grid-template-columns: 1fr;
    }

    .footer-top {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media(max-width: 650px) {

    .container,
    .hero-content {
        width: calc(100% - 30px);
    }

    .section {
        padding: 75px 0;
    }

    .header-actions {
        gap: 10px;
    }

    .header-actions .account-icon,
    .header-actions .heart-icon {
        display: none;
    }

    .hero {
        min-height: 650px;
    }

    .hero-content {
        padding-top: 180px;
    }

    .hero h1 {
        font-size: 65px;
        letter-spacing: -3px;
    }

    .hero-note {
        right: 20px;
        bottom: 25px;
    }

    .intro-grid {
        grid-template-columns: 1fr;
        gap: 30px;
    }

    .collection-heading,
    .products-heading {
        display: block;
    }

    .collection-heading h2,
    .products-heading h2 {
        font-size: 45px;
        margin-bottom: 20px;
    }

    .filter-tabs {
        overflow-x: auto;
        padding-bottom: 5px;
    }

    .collection-grid {
        grid-template-columns: 1fr;
    }

    .collection:first-child {
        grid-column: auto;
    }

    .collection,
    .collection:nth-child(2),
    .collection:nth-child(3) {
        height: 420px;
    }

    .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 15px;
    }

    .product-name {
        font-size: 13px;
    }

    .campaign-content {
        padding: 45px 25px;
    }

    .campaign h2 {
        font-size: 58px;
    }

    .countdown {
        gap: 6px;
    }

    .time {
        width: 62px;
        height: 62px;
    }

    .review-grid {
        gap: 35px;
    }

    .review-title h2 {
        font-size: 48px;
    }

    .review {
        grid-template-columns: 45px 1fr;
        gap: 10px;
    }

    .review p {
        font-size: 21px;
    }

    .newsletter h2 {
        font-size: 50px;
        margin-bottom: 25px;
    }

    .footer-top {
        grid-template-columns: 1fr 1fr;
        gap: 35px 20px;
    }

    .footer-bottom {
        display: block;
        line-height: 2;
    }

}

</style>
</head>

<body>

<!-- =======================================================
     HEADER
======================================================= -->

<header class="site-header" id="siteHeader">

    <div class="container header-inner">

        <div style="display:flex;align-items:center;">

            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="logo">
                Nexus<span>Shop</span>
            </a>

        </div>

        <nav class="main-nav">

            <a href="#collections">Collections</a>
            <a href="#products">New arrivals</a>
            <a href="#campaign">Deals</a>
            <a href="#reviews">Journal</a>

        </nav>

        <div class="header-actions">

            <button class="header-icon" id="searchButton">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="header-icon account-icon">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="header-icon heart-icon">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="header-icon bag-button" id="bagButton">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="bag-count" id="cartCount">0</span>

            </button>

        </div>

    </div>

</header>


<!-- =======================================================
     HERO
======================================================= -->

<section class="hero">

    <div class="hero-image">

        <img
            src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2200&q=90"
            alt="Modern retail store">

    </div>

    <div class="hero-content">

        <div class="hero-eyebrow">
            The Nexus / 2026 Edition
        </div>

        <h1>
            Everyday<br>
            <em>objects</em><br>
            elevated.
        </h1>

        <p class="hero-description">
            A considered collection of technology, style and essentials
            designed for people who care about what they bring into their
            everyday life.
        </p>

        <div class="hero-actions">

            <button class="primary-btn" id="shopNow">
                Explore the edit
            </button>

            <button class="text-btn" id="heroDeals">
                View this week's offers →
            </button>

        </div>

    </div>

    <div class="hero-note">

        <span>
            <i class="fa-solid fa-arrow-down"></i>
        </span>

        Scroll to explore

    </div>

</section>


<!-- =======================================================
     INTRO
======================================================= -->

<section class="section intro">

    <div class="container intro-grid">

        <div>

            <div class="section-label">
                Our philosophy
            </div>

            <h2>
                Less noise.<br>
                Better <span class="serif">things.</span>
            </h2>

        </div>

        <div class="intro-copy">

            <p>
                NexusShop is a modern marketplace built around a simple idea:
                <strong>buy fewer things, but make them count.</strong>
                From everyday technology to personal style, every item in our
                edit is selected for design, usefulness and longevity.
            </p>

        </div>

    </div>

</section>


<!-- =======================================================
     COLLECTIONS
======================================================= -->

<section class="section collections" id="collections">

    <div class="container">

        <div class="collection-heading">

            <div>

                <div class="section-label">
                    Curated collections
                </div>

                <h2>
                    Shop the edit
                </h2>

            </div>

            <a href="#products" class="collection-link">
                View all collections →
            </a>

        </div>


        <div class="collection-grid">

            <article class="collection">

                <img
                    src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85"
                    alt="Accessories">

                <div class="collection-info">

                    <div class="collection-number">
                        01 / ACCESSORIES
                    </div>

                    <h3>
                        Objects of style
                    </h3>

                    <p>
                        Small details. Big difference.
                    </p>

                </div>

            </article>


            <article class="collection">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85"
                    alt="Technology">

                <div class="collection-info">

                    <div class="collection-number">
                        02 / TECHNOLOGY
                    </div>

                    <h3>
                        Smart living
                    </h3>

                    <p>
                        Technology that earns its place.
                    </p>

                </div>

            </article>


            <article class="collection">

                <img
                    src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=85"
                    alt="Fashion">

                <div class="collection-info">

                    <div class="collection-number">
                        03 / STYLE
                    </div>

                    <h3>
                        The wardrobe
                    </h3>

                    <p>
                        Timeless pieces, modern attitude.
                    </p>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =======================================================
     PRODUCTS
======================================================= -->

<section class="section products-section" id="products">

    <div class="container">

        <div class="products-heading">

            <div>

                <div class="section-label">
                    The current edit
                </div>

                <h2>
                    Trending now
                </h2>

            </div>

            <div class="filter-tabs">

                <button class="filter-tab active" data-filter="all">
                    All
                </button>

                <button class="filter-tab" data-filter="phones">
                    Tech
                </button>

                <button class="filter-tab" data-filter="accessories">
                    Accessories
                </button>

                <button class="filter-tab" data-filter="footwear">
                    Style
                </button>

            </div>

        </div>


        <div class="products-grid" id="productsGrid"></div>

    </div>

</section>


<!-- =======================================================
     MARQUEE
======================================================= -->

<div class="marquee">

    <div class="marquee-track">

        <div class="marquee-item">Free shipping over $100</div>
        <div class="marquee-item">•</div>
        <div class="marquee-item">New arrivals every week</div>
        <div class="marquee-item">•</div>
        <div class="marquee-item">Curated for modern living</div>
        <div class="marquee-item">•</div>

        <div class="marquee-item">Free shipping over $100</div>
        <div class="marquee-item">•</div>
        <div class="marquee-item">New arrivals every week</div>
        <div class="marquee-item">•</div>
        <div class="marquee-item">Curated for modern living</div>
        <div class="marquee-item">•</div>

    </div>

</div>


<!-- =======================================================
     CAMPAIGN
======================================================= -->

<section class="campaign" id="campaign">

    <div class="container">

        <div class="campaign-grid">

            <div class="campaign-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1300&q=90"
                    alt="MacBook">

            </div>


            <div class="campaign-content">

                <div class="campaign-small">
                    Limited weekend edit / 17% off
                </div>

                <h2>
                    The<br>
                    MacBook<br>
                    Air.
                </h2>

                <div class="campaign-price">
                    $999
                    <del>$1,199</del>
                </div>

                <div class="countdown">

                    <div class="time">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time">
                        <strong id="minutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="time">
                        <strong id="seconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>

                <button class="primary-btn campaign-button" id="dealButton">
                    Add to bag
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =======================================================
     REVIEWS
======================================================= -->

<section class="section reviews" id="reviews">

    <div class="container review-grid">

        <div class="review-title">

            <div class="section-label">
                The journal
            </div>

            <h2>
                Loved by<br>
                people who<br>
                <em class="serif">notice.</em>
            </h2>

        </div>


        <div class="review-main">

            <article class="review">

                <div class="review-number">
                    01
                </div>

                <div>

                    <p>
                        “Nexus feels completely different from the usual
                        shopping experience. Everything feels considered.”
                    </p>

                    <div class="review-author">
                        Ava Martin — Verified customer
                    </div>

                </div>

            </article>


            <article class="review">

                <div class="review-number">
                    02
                </div>

                <div>

                    <p>
                        “Beautiful products, incredibly fast delivery and
                        a website that is actually enjoyable to use.”
                    </p>

                    <div class="review-author">
                        Michael Lee — Verified customer
                    </div>

                </div>

            </article>


            <article class="review">

                <div class="review-number">
                    03
                </div>

                <div>

                    <p>
                        “I came for the headphones and somehow ended up
                        redesigning my entire desk.”
                    </p>

                    <div class="review-author">
                        Sofia Williams — Verified customer
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =======================================================
     NEWSLETTER
======================================================= -->

<section class="section newsletter">

    <div class="container newsletter-inner">

        <div>

            <div class="section-label">
                Stay curious
            </div>

            <h2>
                Get the good<br>
                stuff first.
            </h2>

        </div>

        <div>

            <p>
                New arrivals, limited drops and private offers.
                No spam. Just the occasional email worth opening.
            </p>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Your email address"
                    required>

                <button type="submit">
                    Subscribe →
                </button>

            </form>

        </div>

    </div>

</section>


<!-- =======================================================
     FOOTER
======================================================= -->

<footer>

    <div class="container">

        <div class="footer-top">

            <div>

                <div class="footer-brand">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-description">
                    A considered marketplace for modern living.
                    Technology, style and everyday objects — curated,
                    not crowded.
                </p>

            </div>


            <div class="footer-column">

                <h4>Shop</h4>

                <a href="#products">New arrivals</a>
                <a href="#collections">Collections</a>
                <a href="#campaign">Deals</a>
                <a href="#">Best sellers</a>

            </div>


            <div class="footer-column">

                <h4>Company</h4>

                <a href="#">About</a>
                <a href="#">Journal</a>
                <a href="#">Careers</a>
                <a href="#">Contact</a>

            </div>


            <div class="footer-column">

                <h4>Help</h4>

                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">FAQ</a>
                <a href="#">Support</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NexusShop
            </span>

            <span>
                Designed for modern living.
            </span>

        </div>

    </div>

</footer>


<!-- =======================================================
     CART DRAWER
======================================================= -->

<div class="cart-overlay" id="cartOverlay">

    <aside class="cart-drawer">

        <div class="cart-header">

            <h3>
                Your bag
            </h3>

            <button class="close-cart" id="closeCart">
                <i class="fa-solid fa-xmark"></i>
            </button>

        </div>


        <div class="cart-empty" id="cartEmpty">

            <i class="fa-solid fa-bag-shopping"></i>

            <p>
                Your bag is currently empty.
            </p>

        </div>

    </aside>

</div>


<!-- =======================================================
     TOAST
======================================================= -->

<div class="toast" id="toast">
    Added to your bag.
</div>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        category: "phones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        image:
        "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        category: "laptops",
        price: 1999,
        rating: 4,
        reviews: 86,
        image:
        "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        category: "accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        category: "footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        category: "gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        image:
        "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        category: "accessories",
        price: 120,
        rating: 5,
        reviews: 189,
        image:
        "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 7,
        title: "Travel Backpack",
        category: "accessories",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=90"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        category: "gadgets",
        price: 399,
        rating: 5,
        reviews: 156,
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=90"
    }

];


/* =========================================================
   STATE
========================================================= */

let cartCount = 0;


/* =========================================================
   ELEMENTS
========================================================= */

const productsGrid =
    document.getElementById("productsGrid");

const cartCountElement =
    document.getElementById("cartCount");

const toast =
    document.getElementById("toast");

const cartOverlay =
    document.getElementById("cartOverlay");


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(products) {

    productsGrid.innerHTML = "";

    if (!products.length) {

        productsGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                padding:80px 0;
                text-align:center;
                color:#888;
            ">
                No products found.
            </div>
        `;

        return;
    }


    products.forEach(product => {

        const article =
            document.createElement("article");

        article.className = "product";


        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5 - product.rating);


        article.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `<div class="product-badge">
                        ${product.badge}
                    </div>`
                    :
                    ""
                }

                <button
                    class="product-wish"
                    aria-label="Wishlist">

                    <i class="fa-regular fa-heart"></i>

                </button>

                <img
                    src="${product.image}"
                    alt="${product.title}"
                    loading="lazy">

                <button
                    class="product-quick"
                    data-id="${product.id}">

                    Add to bag

                </button>

            </div>


            <div class="product-details">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-name">
                    ${product.title}
                </div>

                <div class="product-bottom">

                    <div class="product-price">

                        $${product.price.toLocaleString()}

                        ${
                            product.oldPrice
                            ?
                            `<span class="product-old">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>

                    <div class="stars">
                        ${stars}
                    </div>

                </div>

            </div>
        `;


        productsGrid.appendChild(article);

    });


    document
        .querySelectorAll(".product-quick")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    addToCart(
                        Number(button.dataset.id)
                    );

                }
            );

        });


    document
        .querySelectorAll(".product-wish")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const icon =
                        button.querySelector("i");

                    icon.classList.toggle(
                        "fa-regular"
                    );

                    icon.classList.toggle(
                        "fa-solid"
                    );

                    showToast(
                        icon.classList.contains("fa-solid")
                        ? "Added to wishlist."
                        : "Removed from wishlist."
                    );

                }
            );

        });

}


/* =========================================================
   CART
========================================================= */

function addToCart(id) {

    const product =
        PRODUCTS.find(item => item.id === id);

    if (!product) return;

    cartCount++;

    cartCountElement.textContent =
        cartCount;

    showToast(
        `${product.title} added to your bag.`
    );

}


function showToast(message) {

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(window.toastTimer);

    window.toastTimer =
        setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

}


/* =========================================================
   FILTER
========================================================= */

document
    .querySelectorAll(".filter-tab")
    .forEach(button => {

        button.addEventListener(
            "click",
            () => {

                document
                    .querySelectorAll(".filter-tab")
                    .forEach(item =>
                        item.classList.remove("active")
                    );

                button.classList.add("active");


                const filter =
                    button.dataset.filter;


                if (filter === "all") {

                    renderProducts(PRODUCTS);

                    return;

                }


                let result;


                if (filter === "phones") {

                    result =
                        PRODUCTS.filter(product =>
                            [
                                "phones",
                                "laptops",
                                "gadgets"
                            ].includes(product.category)
                        );

                } else {

                    result =
                        PRODUCTS.filter(product =>
                            product.category === filter
                        );

                }


                renderProducts(result);

            }
        );

    });


/* =========================================================
   HEADER SCROLL
========================================================= */

const header =
    document.getElementById("siteHeader");


window.addEventListener(
    "scroll",
    () => {

        if (window.scrollY > 50) {

            header.classList.add("scrolled");

        } else {

            header.classList.remove("scrolled");

        }

    }
);


/* =========================================================
   SHOP BUTTON
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


document
    .getElementById("heroDeals")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("campaign")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* =========================================================
   DEAL BUTTON
========================================================= */

document
    .getElementById("dealButton")
    .addEventListener(
        "click",
        () => {

            cartCount++;

            cartCountElement.textContent =
                cartCount;

            showToast(
                "MacBook Air added to your bag."
            );

        }
    );


/* =========================================================
   COUNTDOWN
========================================================= */

const saleEnd =
    new Date(
        Date.now() +
        2 * 24 * 60 * 60 * 1000 +
        7 * 60 * 60 * 1000 +
        32 * 60 * 1000
    );


function updateCountdown() {

    const difference =
        saleEnd - new Date();


    if (difference <= 0) {

        return;

    }


    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );


    const hours =
        Math.floor(
            (difference /
            (1000 * 60 * 60)) % 24
        );


    const minutes =
        Math.floor(
            (difference /
            (1000 * 60)) % 60
        );


    const seconds =
        Math.floor(
            (difference / 1000) % 60
        );


    document.getElementById("days")
        .textContent =
        String(days).padStart(2, "0");


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2, "0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2, "0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2, "0");

}


updateCountdown();

setInterval(
    updateCountdown,
    1000
);


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const input =
                document.getElementById(
                    "newsletterEmail"
                );

            if (!input.value.trim()) return;

            showToast(
                "You're on the list. Welcome to Nexus."
            );

            input.value = "";

        }
    );


/* =========================================================
   CART DRAWER
========================================================= */

document
    .getElementById("bagButton")
    .addEventListener(
        "click",
        () => {

            cartOverlay.classList.add("open");

        }
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        () => {

            cartOverlay.classList.remove("open");

        }
    );


cartOverlay.addEventListener(
    "click",
    event => {

        if (event.target === cartOverlay) {

            cartOverlay.classList.remove("open");

        }

    }
);


/* =========================================================
   SEARCH
========================================================= */

document
    .getElementById("searchButton")
    .addEventListener(
        "click",
        () => {

            const query =
                prompt(
                    "What are you looking for?"
                );

            if (!query) return;

            const normalized =
                query.toLowerCase();


            const results =
                PRODUCTS.filter(product =>
                    product.title
                        .toLowerCase()
                        .includes(normalized)
                    ||
                    product.category
                        .toLowerCase()
                        .includes(normalized)
                );


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });


            renderProducts(results);

        }
    );


/* =========================================================
   MOBILE MENU
========================================================= */

document
    .getElementById("mobileMenuBtn")
    .addEventListener(
        "click",
        () => {

            const nav =
                document.querySelector(".main-nav");


            const visible =
                nav.style.display === "flex";


            nav.style.display =
                visible ? "none" : "flex";


            if (!visible) {

                nav.style.position = "absolute";
                nav.style.top = "70px";
                nav.style.left = "15px";
                nav.style.right = "15px";
                nav.style.padding = "25px";
                nav.style.background = "#f3f0e9";
                nav.style.color = "#171714";
                nav.style.flexDirection = "column";
                nav.style.gap = "20px";

            }

        }
    );


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts(PRODUCTS);

</script>

</body>
</html>
