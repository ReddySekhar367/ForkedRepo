<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS — Future Living</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@400;500;600;700&display=swap');

:root {
    --bg: #08090b;
    --surface: #101216;
    --surface-2: #16181d;
    --border: rgba(255,255,255,.09);
    --text: #f5f5f2;
    --muted: #92959e;
    --accent: #c7ff4a;
    --accent-2: #8effd0;
    --danger: #ff6b6b;
    --radius: 24px;
    --max: 1400px;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    background: var(--bg);
    color: var(--text);
    font-family: "DM Sans", sans-serif;
    overflow-x: hidden;
}

a {
    color: inherit;
    text-decoration: none;
}

button {
    font: inherit;
    cursor: pointer;
}

.container {
    width: min(var(--max), calc(100% - 48px));
    margin: auto;
}

/* =========================
   BACKGROUND
========================= */

body::before {
    content: "";
    position: fixed;
    width: 600px;
    height: 600px;
    left: -300px;
    top: 200px;
    background: rgba(199,255,74,.06);
    filter: blur(120px);
    border-radius: 50%;
    pointer-events: none;
}

body::after {
    content: "";
    position: fixed;
    width: 500px;
    height: 500px;
    right: -250px;
    top: 800px;
    background: rgba(142,255,208,.05);
    filter: blur(120px);
    border-radius: 50%;
    pointer-events: none;
}

/* =========================
   NAVBAR
========================= */

.nav-wrap {
    position: fixed;
    top: 18px;
    left: 0;
    width: 100%;
    z-index: 1000;
}

.nav {
    width: min(1250px, calc(100% - 32px));
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 13px 18px;
    border: 1px solid var(--border);
    background: rgba(10,11,14,.72);
    backdrop-filter: blur(24px);
    border-radius: 100px;
    box-shadow: 0 15px 50px rgba(0,0,0,.25);
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-family: "Space Grotesk";
    font-weight: 700;
    letter-spacing: -.04em;
}

.logo-mark {
    width: 34px;
    height: 34px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    background: var(--accent);
    color: #08090b;
    font-weight: 800;
}

.nav-links {
    display: flex;
    gap: 28px;
    font-size: 13px;
    color: #bbbcc2;
}

.nav-links a {
    transition: .25s;
}

.nav-links a:hover {
    color: white;
}

.nav-actions {
    display: flex;
    align-items: center;
    gap: 8px;
}

.icon-btn {
    width: 38px;
    height: 38px;
    border: 1px solid var(--border);
    border-radius: 50%;
    background: rgba(255,255,255,.04);
    color: white;
    display: grid;
    place-items: center;
    transition: .25s;
}

.icon-btn:hover {
    background: white;
    color: #000;
    transform: translateY(-2px);
}

.cart-button {
    position: relative;
}

.cart-count {
    position: absolute;
    top: -4px;
    right: -3px;
    width: 17px;
    height: 17px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 9px;
    background: var(--accent);
    color: #000;
    font-weight: 800;
}

/* =========================
   HERO
========================= */

.hero {
    min-height: 100vh;
    padding: 150px 0 70px;
    display: flex;
    align-items: center;
}

.hero-grid {
    display: grid;
    grid-template-columns: 1.05fr .95fr;
    gap: 35px;
    align-items: stretch;
}

.hero-copy {
    min-height: 650px;
    border: 1px solid var(--border);
    border-radius: 34px;
    background:
        radial-gradient(circle at 80% 20%, rgba(199,255,74,.08), transparent 35%),
        linear-gradient(145deg,#111319,#090a0d);
    padding: 70px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    overflow: hidden;
    position: relative;
}

.eyebrow {
    display: inline-flex;
    width: fit-content;
    padding: 7px 11px;
    border-radius: 100px;
    border: 1px solid var(--border);
    color: var(--accent);
    font-size: 11px;
    letter-spacing: .14em;
    text-transform: uppercase;
    margin-bottom: 25px;
}

.hero h1 {
    font-family: "Space Grotesk";
    font-size: clamp(60px, 7vw, 112px);
    line-height: .87;
    letter-spacing: -.075em;
    max-width: 760px;
}

.hero h1 span {
    color: var(--accent);
}

.hero-text {
    margin-top: 32px;
    max-width: 480px;
    color: var(--muted);
    font-size: 16px;
    line-height: 1.7;
}

.hero-buttons {
    margin-top: 35px;
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    border: 1px solid var(--border);
    padding: 14px 20px;
    border-radius: 100px;
    background: white;
    color: #050505;
    font-weight: 700;
    font-size: 13px;
    transition: .25s;
}

.btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 30px rgba(255,255,255,.12);
}

.btn.secondary {
    background: transparent;
    color: white;
}

.hero-decoration {
    position: absolute;
    right: -80px;
    bottom: -120px;
    width: 360px;
    height: 360px;
    border-radius: 50%;
    border: 1px solid rgba(199,255,74,.2);
}

.hero-decoration::before,
.hero-decoration::after {
    content: "";
    position: absolute;
    inset: 40px;
    border-radius: 50%;
    border: 1px solid rgba(199,255,74,.15);
}

.hero-decoration::after {
    inset: 80px;
}

/* Hero visual */

.hero-visual {
    min-height: 650px;
    border-radius: 34px;
    overflow: hidden;
    position: relative;
    background:
        linear-gradient(145deg, rgba(255,255,255,.04), transparent),
        #111318;
    border: 1px solid var(--border);
}

.product-orb {
    position: absolute;
    width: 390px;
    height: 390px;
    border-radius: 50%;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    background:
        radial-gradient(circle at 35% 30%, #f7f7f7, #bfc1c2 30%, #484b4d 60%, #111 72%);
    box-shadow:
        0 0 80px rgba(255,255,255,.09),
        inset -40px -50px 70px rgba(0,0,0,.45);
    animation: float 6s ease-in-out infinite;
}

.product-orb::before {
    content: "";
    position: absolute;
    width: 180px;
    height: 180px;
    top: 70px;
    left: 55px;
    border-radius: 50%;
    background: rgba(255,255,255,.45);
    filter: blur(40px);
}

.product-ring {
    position: absolute;
    width: 520px;
    height: 520px;
    border-radius: 50%;
    border: 1px solid rgba(255,255,255,.08);
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
}

.hero-label {
    position: absolute;
    left: 25px;
    bottom: 25px;
    padding: 14px 17px;
    border-radius: 18px;
    border: 1px solid var(--border);
    background: rgba(0,0,0,.45);
    backdrop-filter: blur(15px);
}

.hero-label small {
    color: var(--muted);
    display: block;
    margin-bottom: 4px;
}

.hero-label strong {
    font-family: "Space Grotesk";
}

@keyframes float {
    0%,100% { transform: translate(-50%,-50%) rotate(-3deg); }
    50% { transform: translate(-50%,-56%) rotate(3deg); }
}

/* =========================
   MARQUEE
========================= */

.marquee {
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
    overflow: hidden;
    white-space: nowrap;
    padding: 20px 0;
}

.marquee-track {
    display: inline-flex;
    gap: 45px;
    animation: marquee 25s linear infinite;
}

.marquee span {
    font-family: "Space Grotesk";
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: .15em;
    color: #70737b;
}

.marquee .dot {
    color: var(--accent);
}

@keyframes marquee {
    from { transform: translateX(0); }
    to { transform: translateX(-50%); }
}

/* =========================
   SECTION HEAD
========================= */

.section {
    padding: 120px 0;
}

.section-head {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 45px;
    gap: 30px;
}

.section-kicker {
    color: var(--accent);
    text-transform: uppercase;
    font-size: 11px;
    letter-spacing: .15em;
    margin-bottom: 12px;
}

.section-title {
    font-family: "Space Grotesk";
    font-size: clamp(38px,5vw,68px);
    line-height: .95;
    letter-spacing: -.055em;
}

.section-description {
    max-width: 400px;
    color: var(--muted);
    line-height: 1.7;
}

/* =========================
   COLLECTIONS
========================= */

.collection-grid {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 16px;
}

.collection {
    min-height: 430px;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    overflow: hidden;
    position: relative;
    padding: 25px;
    background: linear-gradient(145deg,#181a20,#0e1014);
    transition: .4s;
}

.collection:hover {
    transform: translateY(-7px);
    border-color: rgba(199,255,74,.25);
}

.collection:nth-child(2) {
    min-height: 520px;
}

.collection:nth-child(3) {
    min-height: 470px;
}

.collection-shape {
    position: absolute;
    width: 240px;
    height: 240px;
    border-radius: 45%;
    right: -40px;
    top: 50%;
    transform: translateY(-50%) rotate(20deg);
    background: linear-gradient(145deg,#dfe3e2,#555b5e);
    box-shadow: -30px 30px 70px rgba(0,0,0,.5);
}

.collection:nth-child(2) .collection-shape {
    border-radius: 50%;
    background: linear-gradient(145deg,#c5ff67,#47552e);
}

.collection:nth-child(3) .collection-shape {
    transform: translateY(-50%) rotate(-15deg);
    background: linear-gradient(145deg,#d8d8d8,#282a2d);
}

.collection-info {
    position: absolute;
    left: 25px;
    bottom: 25px;
    z-index: 2;
}

.collection-info h3 {
    font-family: "Space Grotesk";
    font-size: 30px;
    letter-spacing: -.04em;
}

.collection-info p {
    color: var(--muted);
    margin-top: 6px;
}

/* =========================
   SHOP
========================= */

.shop-toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 30px;
    gap: 20px;
    flex-wrap: wrap;
}

.filters {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
}

.filter {
    border: 1px solid var(--border);
    background: transparent;
    color: #aaa;
    border-radius: 100px;
    padding: 9px 15px;
    font-size: 12px;
    transition: .2s;
}

.filter.active,
.filter:hover {
    background: var(--accent);
    border-color: var(--accent);
    color: #000;
}

.sort {
    background: var(--surface);
    border: 1px solid var(--border);
    color: white;
    border-radius: 100px;
    padding: 10px 15px;
}

/* Products */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 16px;
}

.product {
    position: relative;
}

.product-image {
    aspect-ratio: 1 / 1.08;
    background:
        radial-gradient(circle at 40% 35%, rgba(255,255,255,.12), transparent 20%),
        linear-gradient(145deg,#17191e,#0c0e11);
    border: 1px solid var(--border);
    border-radius: 22px;
    overflow: hidden;
    position: relative;
    display: grid;
    place-items: center;
}

.product-image::before {
    content: "";
    position: absolute;
    width: 55%;
    height: 55%;
    border-radius: 45%;
    background: linear-gradient(145deg,#dfe1e0,#3d4042);
    transform: rotate(-14deg);
    box-shadow: 20px 25px 45px rgba(0,0,0,.55);
    transition: .5s;
}

.product:nth-child(2) .product-image::before {
    border-radius: 50%;
    width: 52%;
    height: 52%;
    background: linear-gradient(145deg,#c7ff4a,#414a28);
}

.product:nth-child(3) .product-image::before {
    width: 48%;
    height: 62%;
    border-radius: 28px;
    transform: rotate(8deg);
}

.product:nth-child(4) .product-image::before {
    width: 58%;
    height: 38%;
    border-radius: 50%;
    transform: rotate(-8deg);
}

.product:hover .product-image::before {
    transform: rotate(0) scale(1.08);
}

.product-tag {
    position: absolute;
    left: 12px;
    top: 12px;
    z-index: 2;
    font-size: 9px;
    text-transform: uppercase;
    letter-spacing: .12em;
    background: var(--accent);
    color: #000;
    padding: 6px 8px;
    border-radius: 7px;
    font-weight: 800;
}

.product-wish {
    position: absolute;
    right: 12px;
    top: 12px;
    z-index: 2;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    border: 1px solid var(--border);
    background: rgba(0,0,0,.35);
    color: white;
}

.product-info {
    padding: 15px 4px;
}

.product-meta {
    display: flex;
    justify-content: space-between;
    gap: 10px;
}

.product-name {
    font-family: "Space Grotesk";
    font-weight: 600;
}

.product-price {
    font-weight: 700;
}

.product-category {
    color: var(--muted);
    font-size: 12px;
    margin-top: 5px;
}

.add-product {
    width: 100%;
    margin-top: 12px;
    padding: 11px;
    border-radius: 12px;
    border: 1px solid var(--border);
    background: transparent;
    color: white;
    transition: .25s;
}

.add-product:hover {
    background: white;
    color: black;
}

/* =========================
   FEATURE / STORY
========================= */

.story {
    display: grid;
    grid-template-columns: .85fr 1.15fr;
    gap: 18px;
}

.story-visual {
    min-height: 620px;
    border-radius: 28px;
    border: 1px solid var(--border);
    background:
        radial-gradient(circle at 30% 30%, rgba(199,255,74,.18), transparent 25%),
        linear-gradient(145deg,#171a1d,#08090b);
    position: relative;
    overflow: hidden;
}

.story-object {
    position: absolute;
    width: 270px;
    height: 470px;
    background: linear-gradient(120deg,#eceeeb,#5a5e60);
    border-radius: 135px;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%) rotate(17deg);
    box-shadow: 35px 40px 80px rgba(0,0,0,.6);
}

.story-object::after {
    content: "";
    position: absolute;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    background: rgba(255,255,255,.4);
    filter: blur(25px);
    top: 70px;
    left: 55px;
}

.story-content {
    border: 1px solid var(--border);
    border-radius: 28px;
    background: var(--surface);
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.story-content h2 {
    font-family: "Space Grotesk";
    font-size: clamp(40px,5vw,70px);
    line-height: .95;
    letter-spacing: -.06em;
}

.story-content h2 span {
    color: var(--accent);
}

.story-content p {
    color: var(--muted);
    line-height: 1.8;
    margin: 25px 0;
    max-width: 520px;
}

.features {
    display: grid;
    grid-template-columns: repeat(2,1fr);
    gap: 20px;
    margin-top: 20px;
}

.feature {
    border-top: 1px solid var(--border);
    padding-top: 15px;
}

.feature strong {
    display: block;
    margin-bottom: 5px;
}

.feature span {
    font-size: 12px;
    color: var(--muted);
}

/* =========================
   DEAL
========================= */

.deal {
    border: 1px solid var(--border);
    border-radius: 30px;
    padding: 60px;
    background:
        radial-gradient(circle at 85% 50%, rgba(199,255,74,.16), transparent 25%),
        #101216;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 40px;
    overflow: hidden;
}

.deal h2 {
    font-family: "Space Grotesk";
    font-size: clamp(40px,5vw,72px);
    letter-spacing: -.06em;
    line-height: .9;
}

.deal h2 span {
    color: var(--accent);
}

.deal p {
    color: var(--muted);
    margin-top: 18px;
    max-width: 500px;
}

.timer {
    display: flex;
    gap: 10px;
}

.time-box {
    width: 82px;
    height: 90px;
    border: 1px solid var(--border);
    background: rgba(0,0,0,.3);
    border-radius: 18px;
    display: grid;
    place-items: center;
}

.time-box strong {
    font-family: "Space Grotesk";
    font-size: 28px;
}

.time-box span {
    color: var(--muted);
    font-size: 9px;
    text-transform: uppercase;
}

/* =========================
   REVIEWS
========================= */

.reviews {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 16px;
}

.review {
    border: 1px solid var(--border);
    background: var(--surface);
    border-radius: 22px;
    padding: 28px;
}

.stars {
    color: var(--accent);
    letter-spacing: 4px;
    margin-bottom: 22px;
}

.review p {
    color: #d1d2d5;
    line-height: 1.7;
    font-size: 14px;
}

.reviewer {
    margin-top: 25px;
    display: flex;
    align-items: center;
    gap: 12px;
}

.avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: linear-gradient(145deg,#aaa,#333);
}

.reviewer strong {
    font-size: 13px;
}

.reviewer span {
    display: block;
    color: var(--muted);
    font-size: 11px;
    margin-top: 3px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter {
    padding: 90px 30px;
    text-align: center;
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
}

.newsletter h2 {
    font-family: "Space Grotesk";
    font-size: clamp(42px,6vw,80px);
    line-height: .9;
    letter-spacing: -.06em;
}

.newsletter p {
    color: var(--muted);
    max-width: 500px;
    margin: 20px auto 30px;
}

.email-form {
    max-width: 480px;
    margin: auto;
    display: flex;
    border: 1px solid var(--border);
    background: var(--surface);
    border-radius: 100px;
    padding: 5px;
}

.email-form input {
    flex: 1;
    min-width: 0;
    border: 0;
    outline: none;
    background: transparent;
    color: white;
    padding: 0 18px;
}

.email-form button {
    border: 0;
    background: var(--accent);
    color: black;
    padding: 13px 20px;
    border-radius: 100px;
    font-weight: 800;
}

/* =========================
   FOOTER
========================= */

footer {
    padding: 70px 0 35px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 1.5fr repeat(3,1fr);
    gap: 40px;
}

.footer-brand p {
    color: var(--muted);
    line-height: 1.7;
    max-width: 300px;
    margin-top: 20px;
    font-size: 13px;
}

.footer-col h4 {
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: .12em;
    margin-bottom: 18px;
}

.footer-col a {
    display: block;
    color: var(--muted);
    font-size: 13px;
    margin-bottom: 11px;
    transition: .2s;
}

.footer-col a:hover {
    color: white;
}

.footer-bottom {
    border-top: 1px solid var(--border);
    margin-top: 60px;
    padding-top: 25px;
    display: flex;
    justify-content: space-between;
    color: #656870;
    font-size: 11px;
}

/* =========================
   CART
========================= */

.cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.65);
    backdrop-filter: blur(5px);
    z-index: 1999;
    opacity: 0;
    pointer-events: none;
    transition: .3s;
}

.cart {
    position: fixed;
    z-index: 2000;
    right: -450px;
    top: 0;
    width: min(430px,100%);
    height: 100vh;
    background: #101216;
    border-left: 1px solid var(--border);
    padding: 30px;
    transition: .4s cubic-bezier(.77,0,.18,1);
    display: flex;
    flex-direction: column;
}

.cart.open {
    right: 0;
}

.cart-overlay.open {
    opacity: 1;
    pointer-events: auto;
}

.cart-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 25px;
    border-bottom: 1px solid var(--border);
}

.cart-head h3 {
    font-family: "Space Grotesk";
    font-size: 25px;
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 20px 0;
}

.empty-cart {
    height: 100%;
    display: grid;
    place-items: center;
    text-align: center;
    color: var(--muted);
}

.cart-footer {
    border-top: 1px solid var(--border);
    padding-top: 20px;
}

.cart-total {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
}

.checkout {
    width: 100%;
    padding: 15px;
    border: 0;
    border-radius: 14px;
    background: var(--accent);
    color: black;
    font-weight: 800;
}

/* =========================
   SEARCH
========================= */

.search-overlay {
    position: fixed;
    inset: 0;
    z-index: 3000;
    background: rgba(5,6,8,.94);
    backdrop-filter: blur(20px);
    display: flex;
    justify-content: center;
    align-items: flex-start;
    padding-top: 18vh;
    opacity: 0;
    pointer-events: none;
    transition: .3s;
}

.search-overlay.open {
    opacity: 1;
    pointer-events: auto;
}

.search-box {
    width: min(700px,calc(100% - 40px));
}

.search-box input {
    width: 100%;
    border: 0;
    border-bottom: 1px solid var(--border);
    background: transparent;
    color: white;
    font-family: "Space Grotesk";
    font-size: clamp(35px,6vw,70px);
    outline: none;
    padding: 15px 0;
}

.search-close {
    position: fixed;
    top: 30px;
    right: 30px;
}

/* =========================
   MOBILE
========================= */

@media(max-width: 1000px) {

    .nav-links {
        display: none;
    }

    .hero-grid,
    .story {
        grid-template-columns: 1fr;
    }

    .hero-copy,
    .hero-visual {
        min-height: 550px;
    }

    .collection-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .deal {
        flex-direction: column;
        align-items: flex-start;
    }
}

@media(max-width: 600px) {

    .container {
        width: min(100% - 28px,var(--max));
    }

    .nav {
        width: calc(100% - 20px);
    }

    .hero {
        padding-top: 100px;
    }

    .hero-copy {
        padding: 35px 25px;
        min-height: 540px;
    }

    .hero h1 {
        font-size: 62px;
    }

    .hero-visual {
        min-height: 430px;
    }

    .product-orb {
        width: 260px;
        height: 260px;
    }

    .product-ring {
        width: 340px;
        height: 340px;
    }

    .section {
        padding: 80px 0;
    }

    .section-head {
        display: block;
    }

    .section-description {
        margin-top: 20px;
    }

    .collection-grid,
    .products,
    .reviews {
        grid-template-columns: 1fr;
    }

    .collection,
    .collection:nth-child(2),
    .collection:nth-child(3) {
        min-height: 400px;
    }

    .story-content {
        padding: 35px 25px;
    }

    .story-visual {
        min-height: 450px;
    }

    .deal {
        padding: 35px 25px;
    }

    .timer {
        width: 100%;
    }

    .time-box {
        flex: 1;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

    .footer-brand {
        grid-column: 1/-1;
    }

    .footer-bottom {
        flex-direction: column;
        gap: 10px;
    }

    .email-form {
        border-radius: 18px;
        flex-direction: column;
        padding: 8px;
        gap: 8px;
    }

    .email-form input {
        padding: 14px;
    }
}
</style>
</head>

<body>

<!-- ================= NAV ================= -->

<div class="nav-wrap">
    <nav class="nav">

        <a href="#" class="logo">
            <span class="logo-mark">N</span>
            NEXUS
        </a>

        <div class="nav-links">
            <a href="#collections">Collections</a>
            <a href="#shop">Shop</a>
            <a href="#story">Our Story</a>
            <a href="#reviews">Reviews</a>
        </div>

        <div class="nav-actions">

            <button class="icon-btn" onclick="openSearch()" aria-label="Search">
                ⌕
            </button>

            <button class="icon-btn cart-button"
                    onclick="openCart()"
                    aria-label="Cart">
                🛒
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>

    </nav>
</div>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="container hero-grid">

        <div class="hero-copy">

            <div class="eyebrow">
                New collection · 2026
            </div>

            <h1>
                Objects<br>
                for <span>tomorrow.</span>
            </h1>

            <p class="hero-text">
                Curated objects, refined essentials and considered
                pieces designed for a more intentional way of living.
            </p>

            <div class="hero-buttons">
                <a href="#shop" class="btn">
                    Explore collection →
                </a>

                <a href="#story" class="btn secondary">
                    Discover Nexus
                </a>
            </div>

            <div class="hero-decoration"></div>

        </div>


        <div class="hero-visual">

            <div class="product-ring"></div>
            <div class="product-orb"></div>

            <div class="hero-label">
                <small>Featured object</small>
                <strong>Form 01 — $148</strong>
            </div>

        </div>

    </div>

</section>


<!-- ================= MARQUEE ================= -->

<div class="marquee">

    <div class="marquee-track">

        <span>Designed with intention</span>
        <span class="dot">✦</span>

        <span>Objects for modern living</span>
        <span class="dot">✦</span>

        <span>Less noise. More meaning.</span>
        <span class="dot">✦</span>

        <span>Designed with intention</span>
        <span class="dot">✦</span>

        <span>Objects for modern living</span>
        <span class="dot">✦</span>

        <span>Less noise. More meaning.</span>
        <span class="dot">✦</span>

    </div>

</div>


<!-- ================= COLLECTIONS ================= -->

<section class="section" id="collections">

    <div class="container">

        <div class="section-head">

            <div>
                <div class="section-kicker">
                    01 — Collections
                </div>

                <h2 class="section-title">
                    Find your<br>frequency.
                </h2>
            </div>

            <p class="section-description">
                Three carefully considered collections built around
                function, material and the quiet details that make
                everyday objects feel extraordinary.
            </p>

        </div>


        <div class="collection-grid">

            <a class="collection" href="#shop">

                <div class="collection-shape"></div>

                <div class="collection-info">
                    <h3>Objects</h3>
                    <p>Everyday pieces, elevated.</p>
                </div>

            </a>


            <a class="collection" href="#shop">

                <div class="collection-shape"></div>

                <div class="collection-info">
                    <h3>Living</h3>
                    <p>Spaces made intentional.</p>
                </div>

            </a>


            <a class="collection" href="#shop">

                <div class="collection-shape"></div>

                <div class="collection-info">
                    <h3>Carry</h3>
                    <p>Move through the world better.</p>
                </div>

            </a>

        </div>

    </div>

</section>


<!-- ================= SHOP ================= -->

<section class="section" id="shop">

    <div class="container">

        <div class="section-head">

            <div>
                <div class="section-kicker">
                    02 — Shop
                </div>

                <h2 class="section-title">
                    The edit.
                </h2>
            </div>

            <p class="section-description">
                A focused selection of pieces chosen for their
                materiality, longevity and usefulness.
            </p>

        </div>


        <div class="shop-toolbar">

            <div class="filters">

                <button class="filter active"
                        onclick="filterProducts('all',this)">
                    All
                </button>

                <button class="filter"
                        onclick="filterProducts('objects',this)">
                    Objects
                </button>

                <button class="filter"
                        onclick="filterProducts('living',this)">
                    Living
                </button>

                <button class="filter"
                        onclick="filterProducts('carry',this)">
                    Carry
                </button>

            </div>

            <select class="sort">
                <option>Featured</option>
                <option>Price: Low to high</option>
                <option>Price: High to low</option>
            </select>

        </div>


        <div class="products" id="products">

            <!-- PRODUCT 1 -->

            <article class="product" data-category="objects">

                <div class="product-image">

                    <span class="product-tag">
                        New
                    </span>

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Form 01
                        </span>

                        <span class="product-price">
                            $148
                        </span>

                    </div>

                    <div class="product-category">
                        Sculptural object
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Form 01',148)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 2 -->

            <article class="product" data-category="living">

                <div class="product-image">

                    <span class="product-tag">
                        Best seller
                    </span>

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Halo Light
                        </span>

                        <span class="product-price">
                            $220
                        </span>

                    </div>

                    <div class="product-category">
                        Ambient lighting
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Halo Light',220)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 3 -->

            <article class="product" data-category="carry">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Mono Pack
                        </span>

                        <span class="product-price">
                            $185
                        </span>

                    </div>

                    <div class="product-category">
                        Daily carry
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Mono Pack',185)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 4 -->

            <article class="product" data-category="objects">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Arc Tray
                        </span>

                        <span class="product-price">
                            $96
                        </span>

                    </div>

                    <div class="product-category">
                        Desk object
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Arc Tray',96)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 5 -->

            <article class="product" data-category="living">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Vessel 02
                        </span>

                        <span class="product-price">
                            $124
                        </span>

                    </div>

                    <div class="product-category">
                        Ceramic vessel
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Vessel 02',124)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 6 -->

            <article class="product" data-category="carry">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Field Bottle
                        </span>

                        <span class="product-price">
                            $72
                        </span>

                    </div>

                    <div class="product-category">
                        Insulated bottle
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Field Bottle',72)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 7 -->

            <article class="product" data-category="objects">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Stone Clock
                        </span>

                        <span class="product-price">
                            $164
                        </span>

                    </div>

                    <div class="product-category">
                        Desk clock
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Stone Clock',164)">
                        Add to cart
                    </button>

                </div>

            </article>


            <!-- PRODUCT 8 -->

            <article class="product" data-category="living">

                <div class="product-image">

                    <button class="product-wish">
                        ♡
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-meta">

                        <span class="product-name">
                            Soft Chair
                        </span>

                        <span class="product-price">
                            $390
                        </span>

                    </div>

                    <div class="product-category">
                        Lounge furniture
                    </div>

                    <button class="add-product"
                            onclick="addToCart('Soft Chair',390)">
                        Add to cart
                    </button>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- ================= STORY ================= -->

<section class="section" id="story">

    <div class="container">

        <div class="story">

            <div class="story-visual">

                <div class="story-object"></div>

            </div>


            <div class="story-content">

                <div class="section-kicker">
                    03 — Our philosophy
                </div>

                <h2>
                    Make space<br>
                    for <span>better.</span>
                </h2>

                <p>
                    Nexus exists somewhere between design and utility.
                    We believe the objects around us should earn their
                    place — not through excess, but through thoughtful
                    form, honest materials and lasting usefulness.
                </p>

                <div class="features">

                    <div class="feature">
                        <strong>01 — Considered</strong>
                        <span>Every detail has a reason.</span>
                    </div>

                    <div class="feature">
                        <strong>02 — Durable</strong>
                        <span>Made for years, not seasons.</span>
                    </div>

                    <div class="feature">
                        <strong>03 — Responsible</strong>
                        <span>Materials chosen consciously.</span>
                    </div>

                    <div class="feature">
                        <strong>04 — Useful</strong>
                        <span>Beauty never replaces function.</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================= DEAL ================= -->

<section class="section">

    <div class="container">

        <div class="deal">

            <div>

                <div class="section-kicker">
                    Limited drop
                </div>

                <h2>
                    20% off<br>
                    <span>everything.</span>
                </h2>

                <p>
                    A limited-time opportunity to bring something
                    considered into your space.
                </p>

            </div>


            <div class="timer">

                <div class="time-box">
                    <div>
                        <strong id="days">04</strong>
                        <span>Days</span>
                    </div>
                </div>

                <div class="time-box">
                    <div>
                        <strong id="hours">12</strong>
                        <span>Hours</span>
                    </div>
                </div>

                <div class="time-box">
                    <div>
                        <strong id="minutes">36</strong>
                        <span>Minutes</span>
                    </div>
                </div>

                <div class="time-box">
                    <div>
                        <strong id="seconds">42</strong>
                        <span>Seconds</span>
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================= REVIEWS ================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-head">

            <div>
                <div class="section-kicker">
                    04 — People
                </div>

                <h2 class="section-title">
                    Loved by<br>the curious.
                </h2>
            </div>

        </div>


        <div class="reviews">

            <article class="review">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    “Nexus somehow makes ordinary objects feel
                    completely new. The attention to detail is
                    ridiculous.”
                </p>

                <div class="reviewer">
                    <div class="avatar"></div>

                    <div>
                        <strong>Maya R.</strong>
                        <span>New York</span>
                    </div>
                </div>

            </article>


            <article class="review">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    “The design language is beautiful without feeling
                    precious. Everything I've bought actually gets used.”
                </p>

                <div class="reviewer">
                    <div class="avatar"></div>

                    <div>
                        <strong>Daniel K.</strong>
                        <span>London</span>
                    </div>
                </div>

            </article>


            <article class="review">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    “Exactly the kind of store I've been looking for.
                    Minimal, unusual and very well made.”
                </p>

                <div class="reviewer">
                    <div class="avatar"></div>

                    <div>
                        <strong>Sofia L.</strong>
                        <span>Copenhagen</span>
                    </div>
                </div>

            </article>

        </div>

    </div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="newsletter">

    <div class="container">

        <div class="section-kicker">
            Stay connected
        </div>

        <h2>
            Keep the signal.
        </h2>

        <p>
            New objects, design stories and occasional things
            worth knowing. No noise.
        </p>

        <form class="email-form" onsubmit="subscribe(event)">

            <input
                type="email"
                placeholder="Your email address"
                required
            >

            <button type="submit">
                Join Nexus
            </button>

        </form>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">
                    <span class="logo-mark">N</span>
                    NEXUS
                </a>

                <p>
                    A curated destination for objects,
                    essentials and ideas for modern living.
                </p>

            </div>


            <div class="footer-col">

                <h4>Explore</h4>

                <a href="#shop">Shop</a>
                <a href="#collections">Collections</a>
                <a href="#story">Our Story</a>
                <a href="#reviews">Reviews</a>

            </div>


            <div class="footer-col">

                <h4>Help</h4>

                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">FAQ</a>
                <a href="#">Contact</a>

            </div>


            <div class="footer-col">

                <h4>Social</h4>

                <a href="#">Instagram</a>
                <a href="#">Pinterest</a>
                <a href="#">TikTok</a>
                <a href="#">Journal</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © 2026 NEXUS. All rights reserved.
            </span>

            <span>
                Designed for the future.
            </span>

        </div>

    </div>

</footer>


<!-- ================= CART ================= -->

<div
    class="cart-overlay"
    id="cartOverlay"
    onclick="closeCart()">
</div>


<aside class="cart" id="cart">

    <div class="cart-head">

        <h3>Your cart</h3>

        <button
            class="icon-btn"
            onclick="closeCart()">
            ×
        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <div class="empty-cart">
            <div>
                <div style="font-size:40px;margin-bottom:15px;">
                    ◌
                </div>

                <p>Your cart is empty.</p>

                <small>
                    Add something considered.
                </small>
            </div>
        </div>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>Total</span>

            <strong id="cartTotal">
                $0
            </strong>

        </div>

        <button class="checkout">
            Checkout →
        </button>

    </div>

</aside>


<!-- ================= SEARCH ================= -->

<div class="search-overlay" id="searchOverlay">

    <button
        class="icon-btn search-close"
        onclick="closeSearch()">
        ×
    </button>

    <div class="search-box">

        <input
            type="text"
            placeholder="Search Nexus..."
            id="searchInput"
        >

    </div>

</div>


<!-- ================= JAVASCRIPT ================= -->

<script>

/* =========================
   CART
========================= */

let cart = [];

function addToCart(name, price) {

    cart.push({
        name: name,
        price: price
    });

    updateCart();

    openCart();
}


function updateCart() {

    const count = document.getElementById("cartCount");
    const items = document.getElementById("cartItems");
    const total = document.getElementById("cartTotal");

    count.textContent = cart.length;

    if (cart.length === 0) {

        items.innerHTML = `
            <div class="empty-cart">
                <div>
                    <div style="font-size:40px;margin-bottom:15px;">
                        ◌
                    </div>
                    <p>Your cart is empty.</p>
                    <small>Add something considered.</small>
                </div>
            </div>
        `;

        total.textContent = "$0";

        return;
    }


    let totalPrice = 0;

    items.innerHTML = "";

    cart.forEach((item,index) => {

        totalPrice += item.price;

        const div = document.createElement("div");

        div.style.cssText = `
            display:flex;
            justify-content:space-between;
            align-items:center;
            gap:15px;
            padding:15px 0;
            border-bottom:1px solid var(--border);
        `;

        div.innerHTML = `

            <div>
                <strong>${item.name}</strong>

                <div style="
                    color:var(--muted);
                    font-size:12px;
                    margin-top:5px;
                ">
                    $${item.price}
                </div>
            </div>

            <button
                onclick="removeFromCart(${index})"
                style="
                    border:0;
                    background:none;
                    color:#777;
                    font-size:18px;
                ">
                ×
            </button>

        `;

        items.appendChild(div);

    });

    total.textContent = "$" + totalPrice;
}


function removeFromCart(index) {

    cart.splice(index,1);

    updateCart();
}


function openCart() {

    document
        .getElementById("cart")
        .classList.add("open");

    document
        .getElementById("cartOverlay")
        .classList.add("open");
}


function closeCart() {

    document
        .getElementById("cart")
        .classList.remove("open");

    document
        .getElementById("cartOverlay")
        .classList.remove("open");
}


/* =========================
   SEARCH
========================= */

function openSearch() {

    document
        .getElementById("searchOverlay")
        .classList.add("open");

    setTimeout(() => {

        document
            .getElementById("searchInput")
            .focus();

    },300);
}


function closeSearch() {

    document
        .getElementById("searchOverlay")
        .classList.remove("open");
}


document.addEventListener("keydown", function(e) {

    if (e.key === "Escape") {

        closeSearch();
        closeCart();

    }

});


/* =========================
   FILTER PRODUCTS
========================= */

function filterProducts(category, button) {

    document
        .querySelectorAll(".filter")
        .forEach(btn => btn.classList.remove("active"));

    button.classList.add("active");


    document
        .querySelectorAll(".product")
        .forEach(product => {

            if (
                category === "all" ||
                product.dataset.category === category
            ) {

                product.style.display = "";

                requestAnimationFrame(() => {
                    product.style.opacity = "1";
                    product.style.transform = "translateY(0)";
                });

            } else {

                product.style.opacity = "0";
                product.style.transform = "translateY(15px)";

                setTimeout(() => {
                    product.style.display = "none";
                },200);

            }

        });

}


/* =========================
   COUNTDOWN
========================= */

const targetDate =
    new Date().getTime() +
    (4 * 24 * 60 * 60 * 1000) +
    (12 * 60 * 60 * 1000);


function updateCountdown() {

    const now = new Date().getTime();

    const distance = targetDate - now;

    if (distance <= 0) {
        return;
    }

    const days = Math.floor(
        distance / (1000 * 60 * 60 * 24)
    );

    const hours = Math.floor(
        (distance % (1000 * 60 * 60 * 24))
        / (1000 * 60 * 60)
    );

    const minutes = Math.floor(
        (distance % (1000 * 60 * 60))
        / (1000 * 60)
    );

    const seconds = Math.floor(
        (distance % (1000 * 60))
        / 1000
    );


    document.getElementById("days").textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours").textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2,"0");

}

setInterval(updateCountdown,1000);

updateCountdown();


/* =========================
   NEWSLETTER
========================= */

function subscribe(event) {

    event.preventDefault();

    const input =
        event.target.querySelector("input");

    const button =
        event.target.querySelector("button");

    button.textContent = "You're in ✓";

    input.value = "";

    setTimeout(() => {
        button.textContent = "Join Nexus";
    },3000);

}


/* =========================
   SCROLL REVEAL
========================= */

const observer =
    new IntersectionObserver(
        entries => {

            entries.forEach(entry => {

                if (entry.isIntersecting) {

                    entry.target.style.opacity = "1";
                    entry.target.style.transform =
                        "translateY(0)";

                }

            });

        },
        {
            threshold: .08
        }
    );


document
    .querySelectorAll(
        ".collection, .product, .review, .story-content"
    )
    .forEach(el => {

        el.style.opacity = "0";
        el.style.transform = "translateY(25px)";
        el.style.transition =
            "opacity .7s ease, transform .7s ease";

        observer.observe(el);

    });

</script>

</body>
</html>
