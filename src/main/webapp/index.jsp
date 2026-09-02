<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Curated For You</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">

<style>
:root{
    --ink:#111111;
    --paper:#f3f0e9;
    --white:#fffdf8;
    --orange:#ff5a1f;
    --lime:#c9ff45;
    --gray:#85827b;
    --line:#d9d5cc;
    --black:#0d0d0d;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    background:var(--paper);
    color:var(--ink);
    font-family:"DM Sans",sans-serif;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    color:inherit;
    text-decoration:none;
}

img{
    display:block;
    width:100%;
}

.container{
    width:min(1380px,calc(100% - 48px));
    margin:auto;
}

/* =========================
   HEADER
========================= */

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(243,240,233,.94);
    backdrop-filter:blur(15px);
    border-bottom:1px solid var(--line);
}

.nav{
    height:78px;
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    font-family:"Space Grotesk";
    font-size:25px;
    font-weight:700;
    letter-spacing:-1.5px;
}

.logo span{
    color:var(--orange);
}

.nav-links{
    display:flex;
    gap:34px;
    font-size:14px;
    font-weight:600;
}

.nav-links a{
    position:relative;
}

.nav-links a::after{
    content:"";
    position:absolute;
    left:0;
    bottom:-7px;
    width:0;
    height:2px;
    background:var(--orange);
    transition:.25s;
}

.nav-links a:hover::after{
    width:100%;
}

.nav-right{
    display:flex;
    align-items:center;
    gap:12px;
}

.nav-btn{
    border:1px solid var(--line);
    background:transparent;
    width:42px;
    height:42px;
    display:grid;
    place-items:center;
    border-radius:50%;
}

.cart-button{
    background:var(--ink);
    color:white;
    border:0;
    padding:12px 17px;
    border-radius:100px;
    display:flex;
    gap:9px;
    align-items:center;
    font-weight:600;
}

.cart-number{
    background:var(--lime);
    color:var(--ink);
    min-width:21px;
    height:21px;
    border-radius:50%;
    display:grid;
    place-items:center;
    font-size:11px;
}

.menu{
    display:none;
}

/* =========================
   HERO
========================= */

.hero{
    padding:34px 0 70px;
}

.hero-grid{
    min-height:650px;
    display:grid;
    grid-template-columns:1.05fr .95fr;
    gap:20px;
}

.hero-copy{
    background:var(--black);
    color:white;
    padding:70px 65px;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
    position:relative;
    overflow:hidden;
}

.hero-copy::before{
    content:"";
    position:absolute;
    width:360px;
    height:360px;
    border-radius:50%;
    background:var(--orange);
    right:-160px;
    bottom:-170px;
}

.kicker{
    display:inline-flex;
    align-items:center;
    gap:8px;
    font-size:12px;
    text-transform:uppercase;
    letter-spacing:2px;
    color:#bdbdbd;
}

.kicker i{
    width:7px;
    height:7px;
    background:var(--lime);
    border-radius:50%;
}

.hero h1{
    font-family:"Space Grotesk";
    font-size:clamp(55px,7vw,108px);
    line-height:.88;
    letter-spacing:-6px;
    max-width:780px;
    position:relative;
    z-index:2;
}

.hero h1 span{
    color:var(--orange);
}

.hero-bottom{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:30px;
    position:relative;
    z-index:2;
}

.hero-description{
    max-width:390px;
    color:#aaa;
    font-size:15px;
    line-height:1.7;
}

.hero-btn{
    background:var(--lime);
    border:0;
    padding:16px 24px;
    font-weight:700;
    display:inline-flex;
    gap:15px;
    align-items:center;
}

.hero-image{
    position:relative;
    overflow:hidden;
    background:#ddd;
}

.hero-image img{
    height:100%;
    object-fit:cover;
    filter:saturate(.85);
    transition:transform .7s ease;
}

.hero-image:hover img{
    transform:scale(1.04);
}

.hero-label{
    position:absolute;
    left:22px;
    top:22px;
    background:var(--white);
    padding:10px 14px;
    font-size:11px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:1px;
}

.hero-sticker{
    position:absolute;
    right:25px;
    bottom:25px;
    width:105px;
    height:105px;
    border-radius:50%;
    background:var(--orange);
    color:white;
    display:grid;
    place-items:center;
    text-align:center;
    font-size:11px;
    font-weight:700;
    transform:rotate(-12deg);
}

/* =========================
   MARQUEE
========================= */

.marquee{
    overflow:hidden;
    background:var(--orange);
    color:white;
    border-top:1px solid var(--ink);
    border-bottom:1px solid var(--ink);
}

.marquee-track{
    width:max-content;
    display:flex;
    animation:move 20s linear infinite;
}

.marquee-item{
    padding:17px 35px;
    font-family:"Space Grotesk";
    font-size:17px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:1px;
}

.marquee-item span{
    color:var(--lime);
    margin:0 25px;
}

@keyframes move{
    to{
        transform:translateX(-50%);
    }
}

/* =========================
   SECTION
========================= */

.section{
    padding:100px 0;
}

.section-head{
    display:flex;
    justify-content:space-between;
    align-items:end;
    margin-bottom:35px;
}

.section-title{
    font-family:"Space Grotesk";
    font-size:clamp(40px,5vw,68px);
    line-height:.95;
    letter-spacing:-3px;
}

.section-description{
    max-width:340px;
    color:var(--gray);
    line-height:1.6;
    font-size:14px;
}

/* =========================
   CATEGORIES
========================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    border-top:1px solid var(--line);
    border-left:1px solid var(--line);
}

.category{
    min-height:150px;
    border-right:1px solid var(--line);
    border-bottom:1px solid var(--line);
    padding:22px;
    display:flex;
    flex-direction:column;
    justify-content:space-between;
    transition:.3s;
    background:var(--paper);
}

.category:hover{
    background:var(--black);
    color:white;
}

.category-number{
    font-size:11px;
    color:var(--gray);
}

.category-icon{
    font-size:32px;
}

.category-name{
    font-family:"Space Grotesk";
    font-size:18px;
    font-weight:600;
}

/* =========================
   PRODUCTS
========================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:16px;
}

.product{
    background:var(--white);
    position:relative;
    overflow:hidden;
}

.product-image{
    height:390px;
    position:relative;
    overflow:hidden;
    background:#e4e0d8;
}

.product-image img{
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.product:hover .product-image img{
    transform:scale(1.06);
}

.product-tag{
    position:absolute;
    top:15px;
    left:15px;
    background:var(--lime);
    padding:7px 10px;
    font-size:10px;
    font-weight:800;
    text-transform:uppercase;
    z-index:2;
}

.wishlist{
    position:absolute;
    right:15px;
    top:15px;
    width:38px;
    height:38px;
    border:0;
    background:white;
    border-radius:50%;
    z-index:3;
}

.product-info{
    padding:20px;
}

.product-category{
    font-size:10px;
    color:var(--gray);
    text-transform:uppercase;
    letter-spacing:1.4px;
    margin-bottom:8px;
}

.product-name{
    font-family:"Space Grotesk";
    font-size:19px;
    font-weight:600;
    margin-bottom:15px;
}

.product-row{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.product-price{
    font-size:17px;
    font-weight:700;
}

.old-price{
    color:#aaa;
    text-decoration:line-through;
    font-size:12px;
    margin-left:5px;
}

.add{
    width:38px;
    height:38px;
    border:1px solid var(--ink);
    background:transparent;
    border-radius:50%;
    transition:.25s;
}

.add:hover{
    background:var(--ink);
    color:white;
}

/* =========================
   FEATURE / DEAL
========================= */

.deal-section{
    background:var(--black);
    color:white;
    padding:100px 0;
}

.deal-grid{
    display:grid;
    grid-template-columns:.85fr 1.15fr;
    min-height:620px;
}

.deal-image{
    overflow:hidden;
}

.deal-image img{
    height:100%;
    object-fit:cover;
}

.deal-content{
    padding:65px;
    display:flex;
    flex-direction:column;
    justify-content:center;
    background:#171717;
}

.deal-content .kicker{
    color:#888;
}

.deal-content h2{
    font-family:"Space Grotesk";
    font-size:clamp(50px,6vw,88px);
    line-height:.9;
    letter-spacing:-4px;
    margin:25px 0;
}

.deal-content h2 span{
    color:var(--orange);
}

.deal-text{
    color:#999;
    max-width:440px;
    line-height:1.7;
}

.countdown{
    display:flex;
    gap:8px;
    margin:35px 0;
}

.time{
    border:1px solid #333;
    width:90px;
    padding:15px;
}

.time strong{
    display:block;
    font-family:"Space Grotesk";
    font-size:27px;
}

.time small{
    color:#777;
    font-size:10px;
    text-transform:uppercase;
}

.deal-buy{
    width:max-content;
    background:var(--orange);
    color:white;
    border:0;
    padding:16px 25px;
    font-weight:700;
}

/* =========================
   TESTIMONIALS
========================= */

.reviews{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    gap:16px;
}

.review{
    border-top:3px solid var(--ink);
    padding:25px 0;
}

.stars{
    color:var(--orange);
    letter-spacing:3px;
    margin-bottom:25px;
}

.review p{
    font-family:"Space Grotesk";
    font-size:23px;
    line-height:1.25;
    margin-bottom:30px;
}

.reviewer{
    color:var(--gray);
    font-size:13px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter{
    background:var(--lime);
    padding:70px;
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:40px;
    align-items:center;
}

.newsletter h2{
    font-family:"Space Grotesk";
    font-size:clamp(42px,5vw,70px);
    line-height:.9;
    letter-spacing:-3px;
}

.newsletter p{
    margin-top:20px;
    max-width:420px;
}

.subscribe{
    display:flex;
    border-bottom:2px solid var(--ink);
}

.subscribe input{
    width:100%;
    padding:17px 0;
    border:0;
    background:transparent;
    outline:none;
}

.subscribe button{
    border:0;
    background:var(--ink);
    color:white;
    padding:0 22px;
}

/* =========================
   FOOTER
========================= */

footer{
    background:var(--black);
    color:white;
    padding:70px 0 30px;
}

.footer-top{
    display:flex;
    justify-content:space-between;
    gap:50px;
    padding-bottom:70px;
}

.footer-logo{
    font-family:"Space Grotesk";
    font-size:45px;
    letter-spacing:-3px;
}

.footer-logo span{
    color:var(--orange);
}

.footer-links{
    display:flex;
    gap:80px;
}

.footer-column h4{
    color:#666;
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:2px;
    margin-bottom:18px;
}

.footer-column a{
    display:block;
    margin-bottom:10px;
    color:#ccc;
    font-size:14px;
}

.footer-bottom{
    border-top:1px solid #292929;
    padding-top:22px;
    color:#666;
    font-size:12px;
    display:flex;
    justify-content:space-between;
}

/* =========================
   CART DRAWER
========================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.45);
    z-index:2000;
    opacity:0;
    pointer-events:none;
    transition:.3s;
}

.overlay.active{
    opacity:1;
    pointer-events:auto;
}

.cart-drawer{
    position:fixed;
    z-index:2001;
    top:0;
    right:-430px;
    width:min(430px,100%);
    height:100vh;
    background:var(--white);
    transition:.35s ease;
    display:flex;
    flex-direction:column;
}

.cart-drawer.active{
    right:0;
}

.cart-head{
    padding:25px;
    border-bottom:1px solid var(--line);
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.cart-head h3{
    font-family:"Space Grotesk";
    font-size:24px;
}

.close-cart{
    width:38px;
    height:38px;
    border:1px solid var(--line);
    background:transparent;
    border-radius:50%;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px;
}

.empty-cart{
    text-align:center;
    color:var(--gray);
    padding:70px 20px;
}

.cart-footer{
    padding:25px;
    border-top:1px solid var(--line);
}

.total{
    display:flex;
    justify-content:space-between;
    font-weight:700;
    font-size:18px;
    margin-bottom:18px;
}

.checkout{
    width:100%;
    padding:17px;
    border:0;
    background:var(--black);
    color:white;
    font-weight:700;
}

/* =========================
   SEARCH
========================= */

.search-panel{
    position:fixed;
    inset:0;
    background:var(--paper);
    z-index:3000;
    padding:80px 6%;
    transform:translateY(-100%);
    transition:.4s;
}

.search-panel.active{
    transform:translateY(0);
}

.search-close{
    position:absolute;
    right:35px;
    top:30px;
    width:45px;
    height:45px;
    border-radius:50%;
    border:1px solid var(--line);
    background:transparent;
}

.search-title{
    font-family:"Space Grotesk";
    font-size:clamp(45px,7vw,100px);
    letter-spacing:-5px;
}

.search-input{
    margin-top:40px;
    width:100%;
    border:0;
    border-bottom:3px solid var(--ink);
    background:transparent;
    padding:20px 0;
    outline:none;
    font-size:30px;
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:1100px){

    .nav-links{
        display:none;
    }

    .menu{
        display:grid;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-image{
        height:550px;
    }

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .deal-grid{
        grid-template-columns:1fr;
    }

    .deal-image{
        height:450px;
    }

    .reviews{
        grid-template-columns:1fr;
    }
}

@media(max-width:650px){

    .container{
        width:min(100% - 28px,1380px);
    }

    .nav{
        height:68px;
    }

    .hero{
        padding-top:14px;
    }

    .hero-copy{
        padding:40px 25px;
        min-height:600px;
    }

    .hero h1{
        font-size:58px;
        letter-spacing:-4px;
    }

    .hero-bottom{
        flex-direction:column;
        align-items:flex-start;
    }

    .hero-image{
        height:400px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .category{
        min-height:130px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        height:430px;
    }

    .section{
        padding:70px 0;
    }

    .section-head{
        display:block;
    }

    .section-description{
        margin-top:20px;
    }

    .deal-content{
        padding:40px 25px;
    }

    .deal-content h2{
        font-size:55px;
    }

    .countdown{
        gap:5px;
    }

    .time{
        width:70px;
    }

    .newsletter{
        grid-template-columns:1fr;
        padding:40px 25px;
    }

    .footer-top{
        flex-direction:column;
    }

    .footer-links{
        gap:35px;
        flex-wrap:wrap;
    }

    .footer-bottom{
        display:block;
    }

    .footer-bottom div{
        margin-top:10px;
    }
}
</style>
</head>

<body>

<!-- HEADER -->
<header>
    <div class="container nav">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav-links">
            <a href="#">New Arrivals</a>
            <a href="#products">Shop</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Drops</a>
            <a href="#about">About</a>
        </nav>

        <div class="nav-right">

            <button class="nav-btn" id="searchOpen">
                ⌕
            </button>

            <button class="nav-btn menu">
                ☰
            </button>

            <button class="cart-button" id="cartOpen">
                Bag
                <span class="cart-number" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>


<!-- HERO -->
<main>

<section class="hero">
    <div class="container hero-grid">

        <div class="hero-copy">

            <div>
                <div class="kicker">
                    <i></i>
                    Winter / 2026 Collection
                </div>
            </div>

            <h1>
                Things<br>
                worth<br>
                <span>having.</span>
            </h1>

            <div class="hero-bottom">

                <p class="hero-description">
                    Discover carefully selected pieces for the way
                    you live, work and move. No clutter. Just things
                    worth making room for.
                </p>

                <button class="hero-btn" onclick="scrollToProducts()">
                    Explore collection →
                </button>

            </div>

        </div>

        <div class="hero-image">

            <img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85">

            <div class="hero-label">
                New / Selected
            </div>

            <div class="hero-sticker">
                CURATED<br>
                FOR YOU
            </div>

        </div>

    </div>
</section>


<!-- MARQUEE -->
<div class="marquee">
    <div class="marquee-track">

        <div class="marquee-item">
            Free shipping worldwide <span>✦</span>
        </div>

        <div class="marquee-item">
            New pieces every week <span>✦</span>
        </div>

        <div class="marquee-item">
            Curated with intention <span>✦</span>
        </div>

        <div class="marquee-item">
            Free shipping worldwide <span>✦</span>
        </div>

        <div class="marquee-item">
            New pieces every week <span>✦</span>
        </div>

        <div class="marquee-item">
            Curated with intention <span>✦</span>
        </div>

    </div>
</div>


<!-- CATEGORIES -->
<section class="section" id="categories">

    <div class="container">

        <div class="section-head">

            <h2 class="section-title">
                Browse<br>your world.
            </h2>

            <p class="section-description">
                From everyday essentials to technology
                worth obsessing over. Find your next favorite.
            </p>

        </div>

        <div class="categories">

            <div class="category">
                <span class="category-number">01</span>
                <span class="category-icon">◉</span>
                <span class="category-name">Phones</span>
            </div>

            <div class="category">
                <span class="category-number">02</span>
                <span class="category-icon">▣</span>
                <span class="category-name">Laptops</span>
            </div>

            <div class="category">
                <span class="category-number">03</span>
                <span class="category-icon">◒</span>
                <span class="category-name">Fashion</span>
            </div>

            <div class="category">
                <span class="category-number">04</span>
                <span class="category-icon">◉</span>
                <span class="category-name">Audio</span>
            </div>

            <div class="category">
                <span class="category-number">05</span>
                <span class="category-icon">◇</span>
                <span class="category-name">Footwear</span>
            </div>

            <div class="category">
                <span class="category-number">06</span>
                <span class="category-icon">○</span>
                <span class="category-name">Lifestyle</span>
            </div>

        </div>

    </div>

</section>


<!-- PRODUCTS -->
<section class="section" id="products">

    <div class="container">

        <div class="section-head">

            <h2 class="section-title">
                Currently<br>obsessing over.
            </h2>

            <p class="section-description">
                The pieces everyone is talking about.
                Updated regularly.
            </p>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>


<!-- DEAL -->
<section class="deal-section" id="deals">

    <div class="container">

        <div class="deal-grid">

            <div class="deal-image">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85">
            </div>

            <div class="deal-content">

                <div class="kicker">
                    <i></i>
                    Limited drop
                </div>

                <h2>
                    The<br>
                    <span>daily</span><br>
                    driver.
                </h2>

                <p class="deal-text">
                    MacBook Air M2. Lightweight enough to disappear
                    into your bag, powerful enough to handle the
                    workday. Available at a special price for a
                    limited time.
                </p>

                <div class="countdown">

                    <div class="time">
                        <strong id="days">00</strong>
                        <small>Days</small>
                    </div>

                    <div class="time">
                        <strong id="hours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="time">
                        <strong id="minutes">00</strong>
                        <small>Minutes</small>
                    </div>

                    <div class="time">
                        <strong id="seconds">00</strong>
                        <small>Seconds</small>
                    </div>

                </div>

                <button class="deal-buy" onclick="addDeal()">
                    Add to bag — $999
                </button>

            </div>

        </div>

    </div>

</section>


<!-- REVIEWS -->
<section class="section" id="about">

    <div class="container">

        <div class="section-head">

            <h2 class="section-title">
                Don't take<br>our word for it.
            </h2>

            <p class="section-description">
                Real people. Real purchases.
                Real opinions.
            </p>

        </div>

        <div class="reviews">

            <div class="review">
                <div class="stars">★★★★★</div>
                <p>
                    “Finally an online store that doesn't feel
                    like scrolling through a warehouse.”
                </p>
                <div class="reviewer">
                    Ava Martin — Verified buyer
                </div>
            </div>

            <div class="review">
                <div class="stars">★★★★★</div>
                <p>
                    “The products are genuinely great.
                    Shipping was ridiculously fast.”
                </p>
                <div class="reviewer">
                    Michael Lee — Verified buyer
                </div>
            </div>

            <div class="review">
                <div class="stars">★★★★★</div>
                <p>
                    “Bought one thing. Came back for three more.
                    That probably says enough.”
                </p>
                <div class="reviewer">
                    Sofia Chen — Verified buyer
                </div>
            </div>

        </div>

    </div>

</section>


<!-- NEWSLETTER -->
<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>
                <h2>
                    Stay<br>
                    curious.
                </h2>

                <p>
                    New arrivals, unexpected finds and
                    occasional offers. No spam.
                </p>
            </div>

            <form class="subscribe" id="subscribeForm">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required
                >

                <button>
                    Join →
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-top">

            <div>
                <div class="footer-logo">
                    Nexus<span>Shop</span>
                </div>
            </div>

            <div class="footer-links">

                <div class="footer-column">
                    <h4>Explore</h4>
                    <a href="#">New Arrivals</a>
                    <a href="#">Trending</a>
                    <a href="#">Collections</a>
                    <a href="#">Deals</a>
                </div>

                <div class="footer-column">
                    <h4>Help</h4>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">FAQ</a>
                    <a href="#">Contact</a>
                </div>

                <div class="footer-column">
                    <h4>Social</h4>
                    <a href="#">Instagram</a>
                    <a href="#">Facebook</a>
                    <a href="#">Pinterest</a>
                </div>

            </div>

        </div>

        <div class="footer-bottom">
            <div>© 2026 NexusShop</div>
            <div>Made for people with good taste.</div>
        </div>

    </div>

</footer>


<!-- CART -->
<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-head">
        <h3>Your bag</h3>
        <button class="close-cart" id="cartClose">×</button>
    </div>

    <div class="cart-items" id="cartItems">

        <div class="empty-cart">
            Your bag is currently empty.
        </div>

    </div>

    <div class="cart-footer">

        <div class="total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button class="checkout">
            Checkout →
        </button>

    </div>

</aside>


<!-- SEARCH -->
<div class="search-panel" id="searchPanel">

    <button class="search-close" id="searchClose">
        ×
    </button>

    <div class="kicker">
        <i></i>
        Search NexusShop
    </div>

    <h2 class="search-title">
        What are you<br>
        looking for?
    </h2>

    <input
        class="search-input"
        id="searchInput"
        placeholder="Search products..."
        autocomplete="off"
    >

</div>


<script>

/* =========================
   PRODUCTS
========================= */

const PRODUCTS = [

    {
        id:1,
        name:"iPhone 14 Pro Max",
        category:"Technology",
        price:1099,
        oldPrice:1199,
        tag:"New",
        image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:2,
        name:"MacBook Pro 14",
        category:"Technology",
        price:1999,
        tag:"Popular",
        image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:3,
        name:"Apple Watch Series 8",
        category:"Lifestyle",
        price:349,
        oldPrice:399,
        tag:"-25%",
        image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:4,
        name:"Air Max 270",
        category:"Footwear",
        price:150,
        tag:"Trending",
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:5,
        name:"Sony A7 IV",
        category:"Photography",
        price:2499,
        image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:6,
        name:"Leather Weekend Bag",
        category:"Lifestyle",
        price:179,
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:7,
        name:"Classic Chronograph",
        category:"Accessories",
        price:299,
        image:"https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:8,
        name:"WH-1000XM5",
        category:"Audio",
        price:399,
        tag:"Best seller",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    }

];

let cart = [];


/* =========================
   RENDER PRODUCTS
========================= */

function renderProducts(list = PRODUCTS){

    const grid = document.getElementById("productsGrid");

    grid.innerHTML = "";

    if(!list.length){

        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                padding:80px;
                text-align:center;
                color:#85827b;
            ">
                No products found.
            </div>
        `;

        return;
    }

    list.forEach(product => {

        const card = document.createElement("article");

        card.className = "product";

        card.innerHTML = `

            ${
                product.tag
                ? `<div class="product-tag">${product.tag}</div>`
                : ""
            }

            <div class="product-image">

                <button
                    class="wishlist"
                    onclick="toggleWishlist(this)"
                >
                    ♡
                </button>

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy"
                >

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-name">
                    ${product.name}
                </div>

                <div class="product-row">

                    <div class="product-price">
                        $${product.price.toLocaleString()}

                        ${
                            product.oldPrice
                            ? `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                               </span>`
                            : ""
                        }

                    </div>

                    <button
                        class="add"
                        onclick="addToCart(${product.id})"
                        aria-label="Add ${product.name}"
                    >
                        +
                    </button>

                </div>

            </div>
        `;

        grid.appendChild(card);

    });

}


/* =========================
   CART
========================= */

function addToCart(id){

    const product = PRODUCTS.find(p => p.id === id);

    if(!product) return;

    const existing = cart.find(item => item.id === id);

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


function addDeal(){

    const existing = cart.find(item => item.id === 99);

    if(existing){
        existing.quantity++;
    }else{
        cart.push({
            id:99,
            name:"MacBook Air M2",
            category:"Limited Drop",
            price:999,
            quantity:1,
            image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80"
        });
    }

    updateCart();

    openCart();
}


function updateCart(){

    const count = cart.reduce(
        (total,item) => total + item.quantity,
        0
    );

    document.getElementById("cartCount").textContent = count;

    const items = document.getElementById("cartItems");

    if(!cart.length){

        items.innerHTML = `
            <div class="empty-cart">
                Your bag is currently empty.
            </div>
        `;

        document.getElementById("cartTotal").textContent = "$0";

        return;
    }

    items.innerHTML = "";

    let total = 0;

    cart.forEach(item => {

        total += item.price * item.quantity;

        const row = document.createElement("div");

        row.style.cssText = `
            display:grid;
            grid-template-columns:75px 1fr auto;
            gap:14px;
            align-items:center;
            padding:15px 0;
            border-bottom:1px solid #ddd8ce;
        `;

        row.innerHTML = `

            <img
                src="${item.image}"
                style="
                    width:75px;
                    height:75px;
                    object-fit:cover;
                "
            >

            <div>

                <strong style="font-size:14px">
                    ${item.name}
                </strong>

                <div style="
                    color:#85827b;
                    font-size:12px;
                    margin-top:5px;
                ">
                    $${item.price.toLocaleString()}
                    × ${item.quantity}
                </div>

            </div>

            <button
                onclick="removeFromCart(${item.id})"
                style="
                    border:0;
                    background:none;
                    font-size:20px;
                "
            >
                ×
            </button>
        `;

        items.appendChild(row);

    });

    document.getElementById("cartTotal").textContent =
        "$" + total.toLocaleString();

}


function removeFromCart(id){

    cart = cart.filter(item => item.id !== id);

    updateCart();
}


/* =========================
   CART DRAWER
========================= */

const drawer = document.getElementById("cartDrawer");
const overlay = document.getElementById("overlay");

function openCart(){

    drawer.classList.add("active");
    overlay.classList.add("active");

}

function closeCart(){

    drawer.classList.remove("active");
    overlay.classList.remove("active");

}

document.getElementById("cartOpen")
    .addEventListener("click",openCart);

document.getElementById("cartClose")
    .addEventListener("click",closeCart);

overlay.addEventListener("click",closeCart);


/* =========================
   SEARCH
========================= */

const searchPanel =
    document.getElementById("searchPanel");

const searchInput =
    document.getElementById("searchInput");

document.getElementById("searchOpen")
    .addEventListener("click",() => {

        searchPanel.classList.add("active");

        setTimeout(() => {
            searchInput.focus();
        },300);

    });

document.getElementById("searchClose")
    .addEventListener("click",() => {

        searchPanel.classList.remove("active");

        searchInput.value = "";

        renderProducts();

    });

searchInput.addEventListener("input",function(){

    const query = this.value
        .toLowerCase()
        .trim();

    const filtered = PRODUCTS.filter(product =>

        product.name.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)

    );

    renderProducts(filtered);

});


/* =========================
   WISHLIST
========================= */

function toggleWishlist(button){

    button.textContent =
        button.textContent === "♡" ? "♥" : "♡";

    button.style.color =
        button.textContent === "♥"
        ? "#ff5a1f"
        : "#111";

}


/* =========================
   SCROLL
========================= */

function scrollToProducts(){

    document.getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

}


/* =========================
   NEWSLETTER
========================= */

document
    .getElementById("subscribeForm")
    .addEventListener("submit",function(e){

        e.preventDefault();

        const email =
            document.getElementById("email");

        if(!email.value.includes("@")){

            email.focus();

            return;
        }

        alert("You're on the list. Welcome to NexusShop.");

        email.value = "";

    });


/* =========================
   COUNTDOWN
========================= */

const target =
    Date.now() + (2 * 24 * 60 * 60 * 1000)
    + (7 * 60 * 60 * 1000);


function countdown(){

    const difference =
        Math.max(0,target - Date.now());

    const days =
        Math.floor(
            difference / (1000*60*60*24)
        );

    const hours =
        Math.floor(
            difference / (1000*60*60)
        ) % 24;

    const minutes =
        Math.floor(
            difference / (1000*60)
        ) % 60;

    const seconds =
        Math.floor(
            difference / 1000
        ) % 60;

    document.getElementById("days")
        .textContent = String(days).padStart(2,"0");

    document.getElementById("hours")
        .textContent = String(hours).padStart(2,"0");

    document.getElementById("minutes")
        .textContent = String(minutes).padStart(2,"0");

    document.getElementById("seconds")
        .textContent = String(seconds).padStart(2,"0");

}

setInterval(countdown,1000);
countdown();


/* =========================
   INIT
========================= */

renderProducts();
updateCart();

</script>

</body>
</html>
