<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Nexus — Curated Goods</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   RESET
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --ink:#171717;
    --cream:#f5f2eb;
    --paper:#fbfaf7;
    --white:#ffffff;
    --orange:#ff6b35;
    --orange-dark:#e95020;
    --green:#315c4c;
    --line:#ddd9d0;
    --muted:#77736c;
    --shadow:0 20px 60px rgba(25,22,18,.08);
    --radius:22px;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"DM Sans",sans-serif;
    background:var(--paper);
    color:var(--ink);
    line-height:1.5;
}

body.locked{
    overflow:hidden;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

img{
    max-width:100%;
    display:block;
}

/* =========================================================
   GLOBAL
========================================================= */

.container{
    width:min(1320px, calc(100% - 40px));
    margin:auto;
}

.eyebrow{
    display:flex;
    align-items:center;
    gap:9px;
    color:var(--orange);
    font-size:12px;
    font-weight:700;
    letter-spacing:.16em;
    text-transform:uppercase;
}

.eyebrow::before{
    content:"";
    width:26px;
    height:2px;
    background:var(--orange);
}

.serif{
    font-family:"Playfair Display",serif;
}

.section-space{
    padding:100px 0;
}

.section-heading{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:30px;
    margin-bottom:38px;
}

.section-heading h2{
    font-family:"Playfair Display",serif;
    font-size:clamp(38px,5vw,64px);
    line-height:1;
    font-weight:500;
    letter-spacing:-.04em;
}

.section-heading p{
    max-width:410px;
    color:var(--muted);
    font-size:15px;
}

/* =========================================================
   TOP ANNOUNCEMENT
========================================================= */

.announcement{
    background:var(--ink);
    color:#fff;
    text-align:center;
    font-size:12px;
    letter-spacing:.08em;
    padding:9px 15px;
}

/* =========================================================
   HEADER
========================================================= */

.header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(251,250,247,.93);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--line);
}

.header-inner{
    min-height:76px;
    display:grid;
    grid-template-columns:1fr auto 1fr;
    align-items:center;
}

.logo{
    font-size:24px;
    font-weight:700;
    letter-spacing:-.06em;
}

.logo span{
    color:var(--orange);
}

.nav{
    display:flex;
    gap:28px;
    font-size:13px;
    font-weight:600;
}

.nav a{
    position:relative;
    padding:28px 0;
}

.nav a::after{
    content:"";
    position:absolute;
    bottom:20px;
    left:0;
    width:0;
    height:2px;
    background:var(--orange);
    transition:.25s;
}

.nav a:hover::after{
    width:100%;
}

.header-actions{
    justify-self:end;
    display:flex;
    align-items:center;
    gap:7px;
}

.header-btn{
    width:42px;
    height:42px;
    border:1px solid transparent;
    background:transparent;
    border-radius:50%;
    display:grid;
    place-items:center;
    color:var(--ink);
    transition:.2s;
}

.header-btn:hover{
    background:var(--white);
    border-color:var(--line);
}

.cart-button{
    position:relative;
}

.cart-number{
    position:absolute;
    top:-2px;
    right:-2px;
    width:18px;
    height:18px;
    display:grid;
    place-items:center;
    border-radius:50%;
    background:var(--orange);
    color:#fff;
    font-size:9px;
    font-weight:700;
}

.mobile-menu-btn{
    display:none;
}

/* =========================================================
   HERO
========================================================= */

.hero{
    padding:45px 0 80px;
}

.hero-layout{
    min-height:680px;
    display:grid;
    grid-template-columns:1fr 1.1fr;
    gap:35px;
    position:relative;
}

.hero-copy{
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:30px 0 80px;
}

.hero-title{
    font-family:"Playfair Display",serif;
    font-size:clamp(65px,8vw,118px);
    line-height:.88;
    letter-spacing:-.07em;
    font-weight:500;
    margin:24px 0;
}

.hero-title em{
    color:var(--orange);
    font-style:normal;
}

.hero-description{
    color:var(--muted);
    max-width:460px;
    font-size:16px;
    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    align-items:center;
    gap:20px;
}

.primary-btn{
    background:var(--ink);
    color:#fff;
    border:0;
    padding:15px 23px;
    border-radius:5px;
    font-weight:700;
    display:inline-flex;
    gap:12px;
    align-items:center;
    transition:.25s;
}

.primary-btn:hover{
    background:var(--orange);
    transform:translateY(-2px);
}

.text-btn{
    border:0;
    background:none;
    font-weight:700;
    display:inline-flex;
    align-items:center;
    gap:9px;
}

.hero-visual{
    position:relative;
    min-height:650px;
}

.hero-image{
    width:78%;
    height:590px;
    object-fit:cover;
    margin-left:auto;
    border-radius:180px 180px 20px 20px;
    filter:saturate(.88);
}

.hero-card{
    position:absolute;
    left:0;
    bottom:30px;
    width:280px;
    background:var(--white);
    padding:20px;
    box-shadow:var(--shadow);
    border-radius:12px;
}

.hero-card-image{
    width:100%;
    height:170px;
    object-fit:cover;
    border-radius:8px;
    margin-bottom:15px;
}

.hero-card-top{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.hero-card-title{
    font-weight:700;
}

.hero-card-price{
    color:var(--orange);
    font-weight:700;
}

.hero-floating{
    position:absolute;
    right:5%;
    top:80px;
    width:95px;
    height:95px;
    background:var(--orange);
    color:#fff;
    border-radius:50%;
    display:grid;
    place-items:center;
    text-align:center;
    font-size:11px;
    font-weight:700;
    transform:rotate(12deg);
}

/* =========================================================
   MARQUEE
========================================================= */

.marquee{
    overflow:hidden;
    background:var(--green);
    color:#fff;
    padding:17px 0;
}

.marquee-track{
    display:flex;
    width:max-content;
    animation:marquee 25s linear infinite;
}

.marquee-item{
    display:flex;
    align-items:center;
    gap:35px;
    padding-right:35px;
    white-space:nowrap;
    font-family:"Playfair Display",serif;
    font-size:22px;
}

.marquee-item span{
    color:#e4d9c8;
}

@keyframes marquee{
    from{transform:translateX(0)}
    to{transform:translateX(-50%)}
}

/* =========================================================
   CATEGORY RAIL
========================================================= */

.categories{
    overflow-x:auto;
    display:flex;
    gap:14px;
    padding-bottom:10px;
    scrollbar-width:none;
}

.categories::-webkit-scrollbar{
    display:none;
}

.category{
    flex:0 0 190px;
    height:220px;
    border-radius:16px;
    position:relative;
    overflow:hidden;
    color:#fff;
    cursor:pointer;
}

.category img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.category::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(transparent 25%,rgba(0,0,0,.72));
}

.category:hover img{
    transform:scale(1.08);
}

.category-content{
    position:absolute;
    z-index:2;
    bottom:18px;
    left:18px;
}

.category-content h3{
    font-size:17px;
}

.category-content small{
    opacity:.75;
}

/* =========================================================
   PRODUCTS
========================================================= */

.product-toolbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:28px;
}

.filters{
    display:flex;
    gap:8px;
    overflow:auto;
}

.filter{
    border:1px solid var(--line);
    background:transparent;
    border-radius:30px;
    padding:9px 16px;
    white-space:nowrap;
    font-size:12px;
}

.filter.active,
.filter:hover{
    background:var(--ink);
    color:#fff;
    border-color:var(--ink);
}

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    position:relative;
    background:var(--white);
    border-radius:16px;
    overflow:hidden;
    transition:.3s;
}

.product:hover{
    transform:translateY(-7px);
    box-shadow:var(--shadow);
}

.product-image-wrap{
    height:320px;
    position:relative;
    background:#eeeae2;
    overflow:hidden;
}

.product-image{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.product:hover .product-image{
    transform:scale(1.05);
}

.product-badge{
    position:absolute;
    top:14px;
    left:14px;
    background:#fff;
    border-radius:20px;
    padding:6px 10px;
    font-size:10px;
    font-weight:700;
    z-index:2;
}

.product-wish{
    position:absolute;
    top:12px;
    right:12px;
    width:38px;
    height:38px;
    border:0;
    border-radius:50%;
    background:rgba(255,255,255,.9);
    z-index:3;
}

.product-info{
    padding:18px;
}

.product-category{
    color:var(--muted);
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:.1em;
}

.product-name{
    font-size:16px;
    margin:5px 0 13px;
}

.product-bottom{
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.product-price{
    font-weight:700;
    font-size:16px;
}

.old-price{
    color:#aaa;
    font-size:12px;
    text-decoration:line-through;
    margin-left:5px;
}

.add-product{
    width:38px;
    height:38px;
    border:0;
    border-radius:50%;
    background:var(--ink);
    color:#fff;
    transition:.25s;
}

.add-product:hover{
    background:var(--orange);
}

/* =========================================================
   FEATURE PANEL
========================================================= */

.feature{
    background:var(--green);
    color:#fff;
    padding:70px;
    border-radius:30px;
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:70px;
    align-items:center;
}

.feature-image{
    height:480px;
    width:100%;
    object-fit:cover;
    border-radius:12px;
}

.feature-copy h2{
    font-family:"Playfair Display",serif;
    font-size:clamp(45px,5vw,76px);
    line-height:.95;
    font-weight:500;
    margin:20px 0;
}

.feature-copy p{
    color:rgba(255,255,255,.7);
    max-width:430px;
    margin-bottom:28px;
}

.light-btn{
    background:#fff;
    color:var(--ink);
    border:0;
    padding:14px 20px;
    border-radius:5px;
    font-weight:700;
}

/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials{
    display:grid;
    grid-template-columns:1.4fr 1fr 1fr;
    gap:18px;
}

.quote{
    background:#eee9df;
    padding:35px;
    min-height:280px;
    border-radius:18px;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.quote.large{
    background:var(--orange);
    color:#fff;
}

.quote-text{
    font-family:"Playfair Display",serif;
    font-size:25px;
    line-height:1.25;
}

.quote-author{
    font-size:12px;
    font-weight:700;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
    padding:80px 0;
    display:grid;
    grid-template-columns:1fr 1fr;
    align-items:center;
    gap:50px;
}

.newsletter h2{
    font-family:"Playfair Display",serif;
    font-size:clamp(42px,5vw,70px);
    line-height:.95;
    font-weight:500;
}

.newsletter p{
    color:var(--muted);
    margin-top:14px;
}

.newsletter-form{
    display:flex;
    border-bottom:2px solid var(--ink);
    padding-bottom:8px;
}

.newsletter-form input{
    flex:1;
    border:0;
    outline:0;
    background:transparent;
    font-size:15px;
}

.newsletter-form button{
    border:0;
    background:transparent;
    font-weight:700;
}

/* =========================================================
   FOOTER
========================================================= */

footer{
    padding:60px 0 35px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-logo{
    font-size:28px;
    font-weight:700;
    letter-spacing:-.06em;
}

.footer-description{
    color:var(--muted);
    max-width:300px;
    margin-top:14px;
    font-size:13px;
}

.footer-column h4{
    font-size:12px;
    text-transform:uppercase;
    letter-spacing:.1em;
    margin-bottom:17px;
}

.footer-column a{
    display:block;
    color:var(--muted);
    font-size:13px;
    margin:10px 0;
}

.footer-column a:hover{
    color:var(--orange);
}

.footer-bottom{
    border-top:1px solid var(--line);
    margin-top:50px;
    padding-top:20px;
    display:flex;
    justify-content:space-between;
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
   SEARCH OVERLAY
========================================================= */

.search-overlay{
    position:fixed;
    inset:0;
    background:rgba(23,23,23,.45);
    backdrop-filter:blur(8px);
    z-index:300;
    display:none;
    align-items:flex-start;
    justify-content:center;
    padding-top:100px;
}

.search-overlay.show{
    display:flex;
}

.search-box{
    width:min(700px,calc(100% - 30px));
    background:var(--paper);
    padding:28px;
    border-radius:18px;
    box-shadow:var(--shadow);
}

.search-box-top{
    display:flex;
    align-items:center;
    gap:12px;
    border-bottom:1px solid var(--line);
    padding-bottom:15px;
}

.search-box input{
    border:0;
    outline:0;
    background:none;
    flex:1;
    font-size:20px;
}

.close-search{
    border:0;
    background:none;
}

/* =========================================================
   CART DRAWER
========================================================= */

.drawer-overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.35);
    z-index:250;
    display:none;
}

.drawer-overlay.show{
    display:block;
}

.cart-drawer{
    position:fixed;
    z-index:260;
    top:0;
    right:-430px;
    width:min(430px,100%);
    height:100%;
    background:var(--paper);
    transition:.35s ease;
    padding:28px;
    display:flex;
    flex-direction:column;
}

.cart-drawer.open{
    right:0;
}

.drawer-header{
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding-bottom:20px;
    border-bottom:1px solid var(--line);
}

.drawer-close{
    width:38px;
    height:38px;
    border:1px solid var(--line);
    background:none;
    border-radius:50%;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px 0;
}

.empty-cart{
    height:100%;
    display:grid;
    place-items:center;
    text-align:center;
    color:var(--muted);
}

.cart-item{
    display:grid;
    grid-template-columns:70px 1fr auto;
    gap:13px;
    align-items:center;
    margin-bottom:18px;
}

.cart-item img{
    width:70px;
    height:75px;
    object-fit:cover;
    border-radius:8px;
}

.cart-item h4{
    font-size:13px;
}

.cart-item p{
    font-size:12px;
    color:var(--muted);
}

.remove-item{
    border:0;
    background:none;
    color:#aaa;
}

.drawer-footer{
    border-top:1px solid var(--line);
    padding-top:20px;
}

.total-row{
    display:flex;
    justify-content:space-between;
    font-weight:700;
    margin-bottom:17px;
}

.checkout{
    width:100%;
    justify-content:center;
}

/* =========================================================
   MOBILE BOTTOM BAR
========================================================= */

.mobile-bar{
    display:none;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    .header-inner{
        grid-template-columns:auto 1fr auto;
    }

    .nav{
        display:none;
    }

    .mobile-menu-btn{
        display:grid;
        margin-right:10px;
    }

    .logo{
        justify-self:center;
    }

    .hero-layout{
        grid-template-columns:1fr;
    }

    .hero-copy{
        padding-bottom:20px;
    }

    .hero-title{
        max-width:800px;
    }

    .hero-visual{
        min-height:500px;
    }

    .hero-image{
        height:500px;
        width:85%;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .feature{
        grid-template-columns:1fr;
    }

    .testimonials{
        grid-template-columns:1fr 1fr;
    }

    .quote.large{
        grid-column:1/-1;
    }

    .footer-grid{
        grid-template-columns:2fr 1fr 1fr;
    }

}

@media(max-width:650px){

    .container{
        width:min(100% - 28px,1320px);
    }

    .section-space{
        padding:65px 0;
    }

    .announcement{
        font-size:10px;
    }

    .header-inner{
        min-height:65px;
    }

    .header-actions .header-btn:first-child{
        display:none;
    }

    .hero{
        padding:25px 0 50px;
    }

    .hero-layout{
        min-height:auto;
    }

    .hero-title{
        font-size:62px;
    }

    .hero-description{
        font-size:14px;
    }

    .hero-buttons{
        flex-direction:column;
        align-items:flex-start;
    }

    .hero-visual{
        min-height:430px;
    }

    .hero-image{
        height:410px;
        width:88%;
        border-radius:120px 120px 15px 15px;
    }

    .hero-card{
        width:210px;
        padding:12px;
        bottom:5px;
    }

    .hero-card-image{
        height:110px;
    }

    .hero-floating{
        width:72px;
        height:72px;
        font-size:9px;
    }

    .section-heading{
        display:block;
    }

    .section-heading h2{
        margin-bottom:15px;
    }

    .product-toolbar{
        display:block;
    }

    .filters{
        margin-top:18px;
    }

    .products{
        grid-template-columns:1fr 1fr;
        gap:10px;
    }

    .product-image-wrap{
        height:220px;
    }

    .product-info{
        padding:13px;
    }

    .product-name{
        font-size:13px;
    }

    .product-price{
        font-size:13px;
    }

    .add-product{
        width:34px;
        height:34px;
    }

    .feature{
        padding:25px;
        gap:30px;
    }

    .feature-image{
        height:330px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .quote.large{
        grid-column:auto;
    }

    .newsletter{
        grid-template-columns:1fr;
        padding:55px 0;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

    .footer-grid > div:first-child{
        grid-column:1/-1;
    }

    .footer-bottom{
        display:block;
    }

    .footer-bottom span{
        display:block;
        margin-top:8px;
    }

    .mobile-bar{
        position:fixed;
        bottom:0;
        left:0;
        right:0;
        z-index:150;
        background:rgba(251,250,247,.96);
        border-top:1px solid var(--line);
        display:grid;
        grid-template-columns:repeat(3,1fr);
        padding:8px 10px;
        backdrop-filter:blur(15px);
    }

    .mobile-bar button{
        background:none;
        border:0;
        padding:7px;
        font-size:10px;
        color:var(--muted);
    }

    .mobile-bar i{
        display:block;
        font-size:17px;
        margin-bottom:3px;
        color:var(--ink);
    }

    body{
        padding-bottom:65px;
    }
}

</style>
</head>

<body>

<!-- ======================================================
     ANNOUNCEMENT
====================================================== -->

<div class="announcement">
    FREE SHIPPING ON ORDERS OVER $75 &nbsp; · &nbsp; EASY 30-DAY RETURNS
</div>


<!-- ======================================================
     HEADER
====================================================== -->

<header class="header">

    <div class="container header-inner">

        <button class="header-btn mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>.</span>
        </a>

        <nav class="nav">
            <a href="#new">New Arrivals</a>
            <a href="#shop">Shop</a>
            <a href="#collections">Collections</a>
            <a href="#about">Our Story</a>
        </nav>

        <div class="header-actions">

            <button class="header-btn" id="searchBtn" title="Search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="header-btn" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="header-btn cart-button" id="cartBtn" title="Cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="cart-number" id="cartCount">0</span>
            </button>

        </div>

    </div>

</header>


<!-- ======================================================
     HERO
====================================================== -->

<main>

<section class="hero">

    <div class="container hero-layout">

        <div class="hero-copy">

            <div class="eyebrow">
                Autumn / Winter 2026
            </div>

            <h1 class="hero-title">
                Things<br>
                worth<br>
                <em>having.</em>
            </h1>

            <p class="hero-description">
                Thoughtfully selected essentials for everyday life.
                Discover pieces that look good, work beautifully,
                and stay with you for years.
            </p>

            <div class="hero-buttons">

                <button class="primary-btn" id="shopNow">
                    Explore collection
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

                <button class="text-btn" id="viewStory">
                    Our philosophy
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </button>

            </div>

        </div>


        <div class="hero-visual">

            <img
                class="hero-image"
                src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1100&q=85"
                alt="Nexus store">

            <div class="hero-floating">
                CURATED<br>
                FOR YOU
            </div>

            <div class="hero-card">

                <img
                    class="hero-card-image"
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=85"
                    alt="Laptop">

                <div class="hero-card-top">
                    <div>
                        <div class="product-category">
                            EDITOR'S PICK
                        </div>
                        <div class="hero-card-title">
                            Everyday Laptop
                        </div>
                    </div>

                    <div class="hero-card-price">
                        $999
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     MARQUEE
====================================================== -->

<div class="marquee">

    <div class="marquee-track">

        <div class="marquee-item">
            New arrivals <span>✦</span>
            Carefully selected <span>✦</span>
            Better everyday essentials <span>✦</span>
            Designed to last <span>✦</span>
        </div>

        <div class="marquee-item">
            New arrivals <span>✦</span>
            Carefully selected <span>✦</span>
            Better everyday essentials <span>✦</span>
            Designed to last <span>✦</span>
        </div>

    </div>

</div>


<!-- ======================================================
     CATEGORIES
====================================================== -->

<section class="section-space" id="collections">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="eyebrow">
                    Browse
                </div>

                <h2>
                    Find your<br>
                    <span class="serif">next favorite.</span>
                </h2>
            </div>

            <p>
                From everyday technology to pieces that complete
                your wardrobe, explore our carefully selected categories.
            </p>

        </div>


        <div class="categories">

            <div class="category" data-category="phones">

                <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Technology</h3>
                    <small>24 products</small>
                </div>

            </div>


            <div class="category" data-category="laptops">

                <img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Workspaces</h3>
                    <small>18 products</small>
                </div>

            </div>


            <div class="category" data-category="clothing">

                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Clothing</h3>
                    <small>42 products</small>
                </div>

            </div>


            <div class="category" data-category="gadgets">

                <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Audio</h3>
                    <small>16 products</small>
                </div>

            </div>


            <div class="category" data-category="footwear">

                <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Footwear</h3>
                    <small>31 products</small>
                </div>

            </div>


            <div class="category" data-category="accessories">

                <img src="https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=600&q=80">

                <div class="category-content">
                    <h3>Accessories</h3>
                    <small>27 products</small>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     PRODUCTS
====================================================== -->

<section class="section-space" id="shop">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="eyebrow">
                    The edit
                </div>

                <h2>
                    Trending<br>
                    <span class="serif">right now.</span>
                </h2>
            </div>

            <p>
                A handpicked selection of products our community
                can't stop talking about.
            </p>

        </div>


        <div class="product-toolbar">

            <div class="filters">

                <button class="filter active" data-filter="all">
                    All
                </button>

                <button class="filter" data-filter="phones">
                    Technology
                </button>

                <button class="filter" data-filter="laptops">
                    Workspace
                </button>

                <button class="filter" data-filter="clothing">
                    Clothing
                </button>

                <button class="filter" data-filter="gadgets">
                    Audio
                </button>

                <button class="filter" data-filter="footwear">
                    Footwear
                </button>

                <button class="filter" data-filter="accessories">
                    Accessories
                </button>

            </div>

        </div>


        <div class="products" id="products"></div>

    </div>

</section>


<!-- ======================================================
     FEATURE
====================================================== -->

<section class="section-space" id="new">

    <div class="container">

        <div class="feature">

            <img
                class="feature-image"
                src="https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=1000&q=85"
                alt="Winter collection">

            <div class="feature-copy">

                <div class="eyebrow" style="color:#ff9b76">
                    The winter edit
                </div>

                <h2>
                    Less trend.<br>
                    More timeless.
                </h2>

                <p>
                    A collection built around neutral tones,
                    beautiful materials and pieces you'll still
                    love next season.
                </p>

                <button class="light-btn">
                    Shop the collection
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     TESTIMONIALS
====================================================== -->

<section class="section-space">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="eyebrow">
                    Community
                </div>

                <h2>
                    Don't just<br>
                    take our <span class="serif">word.</span>
                </h2>
            </div>

        </div>


        <div class="testimonials">

            <div class="quote large">

                <div class="quote-text">
                    “Finally an online store where
                    everything feels considered.
                    I bought three things and love
                    all three.”
                </div>

                <div class="quote-author">
                    — Maya R. · Verified customer
                </div>

            </div>


            <div class="quote">

                <div class="quote-text">
                    “Beautiful products,
                    surprisingly fast delivery.”
                </div>

                <div class="quote-author">
                    — Daniel K.
                </div>

            </div>


            <div class="quote">

                <div class="quote-text">
                    “The packaging alone made
                    the order feel special.”
                </div>

                <div class="quote-author">
                    — Sophie M.
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
     NEWSLETTER
====================================================== -->

<section class="section-space">

    <div class="container">

        <div class="newsletter">

            <div>

                <div class="eyebrow">
                    Stay curious
                </div>

                <h2>
                    Good things<br>
                    arrive here.
                </h2>

                <p>
                    New products, thoughtful recommendations
                    and occasional offers. No noise.
                </p>

            </div>


            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required>

                <button type="submit">
                    Subscribe
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- ======================================================
     FOOTER
====================================================== -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    Nexus<span style="color:var(--orange)">.</span>
                </div>

                <p class="footer-description">
                    A curated marketplace for products
                    worth bringing into your everyday life.
                </p>

            </div>


            <div class="footer-column">

                <h4>Explore</h4>

                <a href="#shop">New arrivals</a>
                <a href="#shop">Best sellers</a>
                <a href="#collections">Collections</a>
                <a href="#shop">Sale</a>

            </div>


            <div class="footer-column">

                <h4>Help</h4>

                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact</a>
                <a href="#">FAQ</a>

            </div>


            <div class="footer-column">

                <h4>Follow</h4>

                <a href="#">Instagram</a>
                <a href="#">Pinterest</a>
                <a href="#">Facebook</a>
                <a href="#">X / Twitter</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> Nexus. All rights reserved.
            </span>

            <span>
                Made for people who care about what they buy.
            </span>

        </div>

    </div>

</footer>


<!-- ======================================================
     SEARCH OVERLAY
====================================================== -->

<div class="search-overlay" id="searchOverlay">

    <div class="search-box">

        <div class="search-box-top">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search products...">

            <button class="close-search" id="closeSearch">
                <i class="fa-solid fa-xmark"></i>
            </button>

        </div>

        <div id="searchResults" style="padding-top:20px;"></div>

    </div>

</div>


<!-- ======================================================
     CART OVERLAY
====================================================== -->

<div class="drawer-overlay" id="drawerOverlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="drawer-header">

        <div>
            <div class="eyebrow">Your selection</div>
            <h2 style="margin-top:5px;">Shopping bag</h2>
        </div>

        <button class="drawer-close" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems">

        <div class="empty-cart">

            <div>

                <i
                    class="fa-solid fa-bag-shopping"
                    style="font-size:32px;margin-bottom:12px;">
                </i>

                <p>Your bag is empty.</p>

                <small>
                    Add something you love.
                </small>

            </div>

        </div>

    </div>


    <div class="drawer-footer">

        <div class="total-row">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button class="primary-btn checkout">
            Continue to checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- ======================================================
     MOBILE BAR
====================================================== -->

<div class="mobile-bar">

    <button id="mobileHome">
        <i class="fa-solid fa-house"></i>
        Home
    </button>

    <button id="mobileSearch">
        <i class="fa-solid fa-magnifying-glass"></i>
        Search
    </button>

    <button id="mobileCart">
        <i class="fa-solid fa-bag-shopping"></i>
        Bag
    </button>

</div>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const PRODUCTS = [

    {
        id:1,
        name:"iPhone 14 Pro Max",
        category:"phones",
        categoryName:"Technology",
        price:1099,
        oldPrice:1199,
        badge:"NEW",
        image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:2,
        name:'MacBook Pro 14"',
        category:"laptops",
        categoryName:"Workspace",
        price:1999,
        image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:3,
        name:"Apple Watch",
        category:"accessories",
        categoryName:"Accessories",
        price:349,
        oldPrice:399,
        badge:"-15%",
        image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:4,
        name:"Air Max 270",
        category:"footwear",
        categoryName:"Footwear",
        price:150,
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:5,
        name:"Sony A7 IV",
        category:"gadgets",
        categoryName:"Audio & Tech",
        price:2499,
        badge:"EDITOR'S PICK",
        image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:6,
        name:"Everyday Backpack",
        category:"accessories",
        categoryName:"Accessories",
        price:79,
        oldPrice:99,
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:7,
        name:"Minimal Sneakers",
        category:"footwear",
        categoryName:"Footwear",
        price:129,
        image:"https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:8,
        name:"Studio Headphones",
        category:"gadgets",
        categoryName:"Audio",
        price:399,
        badge:"BESTSELLER",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

const productsEl =
    document.getElementById("products");

const cartCount =
    document.getElementById("cartCount");

const cartItems =
    document.getElementById("cartItems");

const cartTotal =
    document.getElementById("cartTotal");


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(list){

    productsEl.innerHTML = "";

    if(!list.length){

        productsEl.innerHTML = `
            <div style="
                grid-column:1/-1;
                padding:70px;
                text-align:center;
                color:var(--muted);
            ">
                <i class="fa-solid fa-magnifying-glass"
                   style="font-size:30px;margin-bottom:15px;">
                </i>

                <h3 style="color:var(--ink);margin-bottom:6px;">
                    Nothing found
                </h3>

                <p>
                    Try another search or category.
                </p>
            </div>
        `;

        return;
    }


    list.forEach(product => {

        const card =
        document.createElement("article");

        card.className = "product";

        card.innerHTML = `

            <div class="product-image-wrap">

                ${
                    product.badge
                    ?
                    `<span class="product-badge">
                        ${product.badge}
                    </span>`
                    :
                    ""
                }

                <button
                    class="product-wish"
                    aria-label="Add to wishlist">

                    <i class="fa-regular fa-heart"></i>

                </button>

                <img
                    class="product-image"
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy">

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.categoryName}
                </div>

                <h3 class="product-name">
                    ${product.name}
                </h3>


                <div class="product-bottom">

                    <div class="product-price">

                        $${product.price.toLocaleString()}

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>


                    <button
                        class="add-product"
                        data-id="${product.id}"
                        aria-label="Add ${product.name} to cart">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>
        `;


        productsEl.appendChild(card);

    });


    document
        .querySelectorAll(".add-product")
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

                    button.style.color =
                        icon.classList.contains("fa-solid")
                        ? "var(--orange)"
                        : "";

                }
            );

        });

}


/* =========================================================
   CART
========================================================= */

function addToCart(id){

    const product =
        PRODUCTS.find(p => p.id === id);

    if(!product) return;

    const existing =
        cart.find(item => item.id === id);

    if(existing){

        existing.quantity++;

    }else{

        cart.push({
            ...product,
            quantity:1
        });

    }

    updateCart();

    openCart();

}


function updateCart(){

    const count =
        cart.reduce(
            (total,item) =>
            total + item.quantity,
            0
        );

    cartCount.textContent = count;


    if(!cart.length){

        cartItems.innerHTML = `

            <div class="empty-cart">

                <div>

                    <i
                        class="fa-solid fa-bag-shopping"
                        style="font-size:32px;margin-bottom:12px;">
                    </i>

                    <p>Your bag is empty.</p>

                    <small>
                        Add something you love.
                    </small>

                </div>

            </div>

        `;

        cartTotal.textContent = "$0";

        return;

    }


    cartItems.innerHTML = "";

    let total = 0;


    cart.forEach(item => {

        total +=
            item.price * item.quantity;


        const row =
            document.createElement("div");

        row.className = "cart-item";

        row.innerHTML = `

            <img
                src="${item.image}"
                alt="${item.name}">

            <div>

                <h4>
                    ${item.name}
                </h4>

                <p>
                    $${item.price.toLocaleString()}
                    × ${item.quantity}
                </p>

            </div>

            <button
                class="remove-item"
                data-id="${item.id}">

                <i class="fa-solid fa-xmark"></i>

            </button>
        `;


        cartItems.appendChild(row);

    });


    cartTotal.textContent =
        "$" + total.toLocaleString();


    document
        .querySelectorAll(".remove-item")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(button.dataset.id);

                    cart =
                        cart.filter(
                            item => item.id !== id
                        );

                    updateCart();

                }
            );

        });

}


/* =========================================================
   CART DRAWER
========================================================= */

const cartDrawer =
    document.getElementById("cartDrawer");

const drawerOverlay =
    document.getElementById("drawerOverlay");


function openCart(){

    cartDrawer.classList.add("open");

    drawerOverlay.classList.add("show");

    document.body.classList.add("locked");

}


function closeCart(){

    cartDrawer.classList.remove("open");

    drawerOverlay.classList.remove("show");

    document.body.classList.remove("locked");

}


document
    .getElementById("cartBtn")
    .addEventListener("click", openCart);


document
    .getElementById("mobileCart")
    .addEventListener("click", openCart);


document
    .getElementById("closeCart")
    .addEventListener("click", closeCart);


drawerOverlay
    .addEventListener("click", closeCart);


/* =========================================================
   FILTERS
========================================================= */

document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.addEventListener(
            "click",
            () => {

                document
                    .querySelectorAll(".filter")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );

                button.classList.add("active");


                const filter =
                    button.dataset.filter;


                if(filter === "all"){

                    renderProducts(PRODUCTS);

                }else{

                    renderProducts(
                        PRODUCTS.filter(
                            product =>
                            product.category === filter
                        )
                    );

                }

            }
        );

    });


/* =========================================================
   CATEGORY CLICK
========================================================= */

document
    .querySelectorAll(".category")
    .forEach(category => {

        category.addEventListener(
            "click",
            () => {

                const type =
                    category.dataset.category;


                const filterButton =
                    document.querySelector(
                        `.filter[data-filter="${type}"]`
                    );


                if(filterButton){

                    filterButton.click();

                }


                document
                    .getElementById("shop")
                    .scrollIntoView({
                        behavior:"smooth"
                    });

            }
        );

    });


/* =========================================================
   SEARCH
========================================================= */

const searchOverlay =
    document.getElementById("searchOverlay");

const searchInput =
    document.getElementById("searchInput");

const searchResults =
    document.getElementById("searchResults");


function openSearch(){

    searchOverlay.classList.add("show");

    document.body.classList.add("locked");

    setTimeout(
        () => searchInput.focus(),
        100
    );

}


function closeSearch(){

    searchOverlay.classList.remove("show");

    document.body.classList.remove("locked");

    searchInput.value = "";

    searchResults.innerHTML = "";

}


document
    .getElementById("searchBtn")
    .addEventListener("click",openSearch);


document
    .getElementById("mobileSearch")
    .addEventListener("click",openSearch);


document
    .getElementById("closeSearch")
    .addEventListener("click",closeSearch);


searchOverlay.addEventListener(
    "click",
    e => {

        if(e.target === searchOverlay){

            closeSearch();

        }

    }
);


searchInput.addEventListener(
    "input",
    () => {

        const query =
            searchInput.value
                .trim()
                .toLowerCase();


        if(!query){

            searchResults.innerHTML = `
                <p style="color:var(--muted);">
                    Start typing to search the collection.
                </p>
            `;

            return;

        }


        const results =
            PRODUCTS.filter(
                product =>
                product.name
                    .toLowerCase()
                    .includes(query) ||
                product.categoryName
                    .toLowerCase()
                    .includes(query)
            );


        if(!results.length){

            searchResults.innerHTML = `
                <p style="color:var(--muted);">
                    No products found for "${query}".
                </p>
            `;

            return;

        }


        searchResults.innerHTML =
            results.map(product => `

                <div
                    style="
                        display:flex;
                        align-items:center;
                        gap:15px;
                        padding:10px 0;
                        border-bottom:1px solid var(--line);
                    ">

                    <img
                        src="${product.image}"
                        style="
                            width:55px;
                            height:60px;
                            object-fit:cover;
                            border-radius:6px;
                        ">

                    <div style="flex:1;">

                        <strong>
                            ${product.name}
                        </strong>

                        <div
                            style="
                                color:var(--muted);
                                font-size:12px;
                            ">

                            ${product.categoryName}

                        </div>

                    </div>

                    <strong>
                        $${product.price.toLocaleString()}
                    </strong>

                </div>

            `).join("");

    }
);


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileMenuBtn =
    document.getElementById("mobileMenuBtn");


mobileMenuBtn.addEventListener(
    "click",
    () => {

        const nav =
            document.querySelector(".nav");


        if(nav.style.display === "flex"){

            nav.style.display = "";

        }else{

            nav.style.display = "flex";

            nav.style.position = "absolute";

            nav.style.top = "65px";

            nav.style.left = "0";

            nav.style.right = "0";

            nav.style.padding = "20px";

            nav.style.background = "var(--paper)";

            nav.style.flexDirection = "column";

            nav.style.borderBottom =
                "1px solid var(--line)";

        }

    }
);


/* =========================================================
   HERO BUTTON
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("shop")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("viewStory")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("about")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
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
                document.getElementById("email");

            const button =
                event.currentTarget.querySelector("button");

            button.innerHTML =
                "You're in ✓";

            button.style.color =
                "var(--orange)";

            input.value = "";

            setTimeout(
                () => {

                    button.innerHTML = `
                        Subscribe
                        <i class="fa-solid fa-arrow-right"></i>
                    `;

                    button.style.color = "";

                },
                2500
            );

        }
    );


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();


/* =========================================================
   INIT
========================================================= */

renderProducts(PRODUCTS);

updateCart();

</script>

</body>
</html>
