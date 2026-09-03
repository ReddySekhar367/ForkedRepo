<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Modern Marketplace</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
  href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=DM+Mono:wght@400;500&display=swap"
  rel="stylesheet"
>

<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
>

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
    --bg:#090a0d;
    --surface:#101217;
    --surface-2:#15171d;
    --surface-3:#1c1f27;

    --white:#f4f5f7;
    --muted:#858a96;
    --muted-2:#5e636d;

    --lime:#c8ff2c;
    --blue:#4d7cff;
    --pink:#ff4d91;
    --cyan:#42e8ff;

    --border:rgba(255,255,255,.09);

    --radius:18px;

    --shadow:
        0 30px 80px rgba(0,0,0,.4);
}

html{
    scroll-behavior:smooth;
}

body{
    background:var(--bg);
    color:var(--white);
    font-family:"Space Grotesk",sans-serif;
    line-height:1.5;
    overflow-x:hidden;
}

body.lock{
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
    color:inherit;
    text-decoration:none;
}

img{
    max-width:100%;
    display:block;
}

::selection{
    background:var(--lime);
    color:#000;
}


/* =========================================================
   BACKGROUND
========================================================= */

body::before{
    content:"";
    position:fixed;
    width:700px;
    height:700px;
    top:-350px;
    right:-250px;

    background:
        radial-gradient(
            circle,
            rgba(77,124,255,.13),
            transparent 65%
        );

    pointer-events:none;
    z-index:-1;
}

body::after{
    content:"";
    position:fixed;
    width:600px;
    height:600px;
    bottom:-300px;
    left:-250px;

    background:
        radial-gradient(
            circle,
            rgba(200,255,44,.06),
            transparent 65%
        );

    pointer-events:none;
    z-index:-1;
}


/* =========================================================
   GLOBAL
========================================================= */

.container{
    width:min(1380px,calc(100% - 44px));
    margin:auto;
}

.mono{
    font-family:"DM Mono",monospace;
}

.label{
    font-family:"DM Mono",monospace;
    color:var(--muted);
    font-size:10px;
    letter-spacing:.16em;
    text-transform:uppercase;
}

.section{
    padding:110px 0;
}

.section-top{
    display:flex;
    justify-content:space-between;
    align-items:flex-end;
    gap:30px;
    margin-bottom:42px;
}

.section-title{
    font-size:clamp(38px,5vw,72px);
    line-height:.95;
    letter-spacing:-.055em;
}

.section-description{
    max-width:390px;
    color:var(--muted);
    font-size:14px;
}


/* =========================================================
   TOP BAR
========================================================= */

.topbar{
    height:34px;

    background:var(--lime);
    color:#080900;

    display:flex;
    align-items:center;
    justify-content:center;

    font-family:"DM Mono",monospace;
    font-size:10px;
    font-weight:500;
    letter-spacing:.08em;
    text-transform:uppercase;
}


/* =========================================================
   NAVIGATION
========================================================= */

.navbar{
    position:sticky;
    top:0;
    z-index:100;

    height:78px;

    background:rgba(9,10,13,.82);
    backdrop-filter:blur(20px);

    border-bottom:1px solid var(--border);
}

.nav-inner{
    height:100%;

    display:grid;
    grid-template-columns:1fr auto 1fr;
    align-items:center;
}

.brand{
    display:flex;
    align-items:center;
    gap:11px;

    font-size:20px;
    font-weight:700;
    letter-spacing:-.06em;
}

.brand-mark{
    width:28px;
    height:28px;

    background:var(--lime);
    color:#000;

    display:grid;
    place-items:center;

    border-radius:7px;

    font-size:14px;
    font-weight:700;

    transform:rotate(-8deg);
}

.nav-links{
    display:flex;
    gap:32px;

    font-size:12px;
    color:#b9bcc5;
}

.nav-links a{
    transition:.2s;
}

.nav-links a:hover{
    color:var(--lime);
}

.nav-actions{
    justify-self:end;

    display:flex;
    align-items:center;
    gap:8px;
}

.icon-btn{
    width:40px;
    height:40px;

    border:1px solid var(--border);
    background:var(--surface);

    color:#fff;

    border-radius:10px;

    display:grid;
    place-items:center;

    transition:.2s;
}

.icon-btn:hover{
    border-color:var(--lime);
    color:var(--lime);
    transform:translateY(-2px);
}

.cart-btn{
    position:relative;
}

.cart-count{
    position:absolute;

    width:17px;
    height:17px;

    top:-6px;
    right:-6px;

    background:var(--lime);
    color:#000;

    border-radius:50%;

    display:grid;
    place-items:center;

    font-size:9px;
    font-weight:700;
}

.mobile-toggle{
    display:none;
}


/* =========================================================
   HERO
========================================================= */

.hero{
    padding:55px 0 85px;
}

.hero-grid{
    display:grid;

    grid-template-columns:
        minmax(0,1.1fr)
        minmax(380px,.9fr);

    min-height:680px;

    gap:30px;
}

.hero-main{
    position:relative;

    background:
        linear-gradient(
            135deg,
            #151820,
            #0d0f14
        );

    border:1px solid var(--border);

    border-radius:28px;

    overflow:hidden;

    padding:65px;

    display:flex;
    flex-direction:column;
    justify-content:flex-end;
}

.hero-main::before{
    content:"";

    position:absolute;

    width:500px;
    height:500px;

    top:-180px;
    right:-100px;

    border-radius:50%;

    border:1px solid rgba(200,255,44,.12);

    box-shadow:
        0 0 0 70px rgba(200,255,44,.02),
        0 0 0 140px rgba(200,255,44,.015);
}

.hero-grid-noise{
    position:absolute;
    inset:0;

    opacity:.025;

    background-image:
        linear-gradient(#fff 1px,transparent 1px),
        linear-gradient(90deg,#fff 1px,transparent 1px);

    background-size:32px 32px;

    pointer-events:none;
}

.hero-status{
    position:absolute;
    top:30px;
    left:32px;

    display:flex;
    align-items:center;
    gap:8px;

    font-family:"DM Mono",monospace;
    font-size:10px;

    color:var(--muted);
}

.status-dot{
    width:7px;
    height:7px;

    border-radius:50%;

    background:var(--lime);

    box-shadow:0 0 12px var(--lime);
}

.hero-copy{
    position:relative;
    z-index:2;
}

.hero-kicker{
    color:var(--lime);

    font-family:"DM Mono",monospace;
    font-size:11px;

    letter-spacing:.18em;
    text-transform:uppercase;

    margin-bottom:20px;
}

.hero-title{
    font-size:
        clamp(58px,8vw,118px);

    line-height:.82;

    letter-spacing:-.08em;

    max-width:800px;
}

.hero-title span{
    color:var(--lime);
}

.hero-description{
    color:var(--muted);

    max-width:470px;

    margin-top:28px;

    font-size:14px;
}

.hero-actions{
    display:flex;
    gap:12px;

    margin-top:34px;
}

.primary{
    border:0;

    background:var(--lime);
    color:#050600;

    padding:15px 22px;

    border-radius:9px;

    font-weight:700;
    font-size:13px;

    display:inline-flex;
    align-items:center;
    gap:12px;

    transition:.25s;
}

.primary:hover{
    transform:translateY(-3px);
    box-shadow:0 15px 35px rgba(200,255,44,.15);
}

.secondary{
    background:transparent;

    border:1px solid var(--border);

    color:#fff;

    padding:15px 22px;

    border-radius:9px;

    font-size:13px;
}

.secondary:hover{
    border-color:#fff;
}


/* =========================================================
   HERO SIDE
========================================================= */

.hero-side{
    display:grid;
    grid-template-rows:1fr 1fr;
    gap:18px;
}

.hero-product{
    position:relative;

    border-radius:24px;

    overflow:hidden;

    border:1px solid var(--border);

    background:#14161b;
}

.hero-product img{
    width:100%;
    height:100%;
    object-fit:cover;

    opacity:.78;

    transition:.6s;
}

.hero-product:hover img{
    transform:scale(1.05);
    opacity:.95;
}

.hero-product::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            transparent 30%,
            rgba(0,0,0,.9)
        );
}

.hero-product-info{
    position:absolute;

    z-index:2;

    left:25px;
    right:25px;
    bottom:24px;

    display:flex;
    justify-content:space-between;
    align-items:end;
}

.hero-product-name{
    font-size:21px;
    font-weight:600;
}

.hero-product-price{
    color:var(--lime);

    font-family:"DM Mono",monospace;
    font-size:14px;
}

.hero-mini{
    display:grid;

    grid-template-columns:1fr 1fr;

    gap:18px;
}

.mini-card{
    position:relative;

    overflow:hidden;

    border-radius:24px;

    background:var(--surface);

    border:1px solid var(--border);

    min-height:230px;
}

.mini-card img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.75;

    transition:.4s;
}

.mini-card:hover img{
    transform:scale(1.06);
}

.mini-content{
    position:absolute;

    left:18px;
    bottom:18px;

    z-index:2;
}

.mini-content strong{
    display:block;
    font-size:14px;
}

.mini-content small{
    color:var(--muted);
}


/* =========================================================
   TICKER
========================================================= */

.ticker{
    border-top:1px solid var(--border);
    border-bottom:1px solid var(--border);

    overflow:hidden;

    background:#0c0e12;
}

.ticker-track{
    width:max-content;

    display:flex;

    animation:ticker 25s linear infinite;
}

.ticker-item{
    display:flex;
    align-items:center;

    gap:25px;

    padding:19px 25px;

    font-family:"DM Mono",monospace;
    font-size:11px;

    color:#777c87;

    white-space:nowrap;
}

.ticker-item b{
    color:var(--lime);
}

@keyframes ticker{
    from{
        transform:translateX(0);
    }

    to{
        transform:translateX(-50%);
    }
}


/* =========================================================
   CATEGORY GRID
========================================================= */

.category-grid{
    display:grid;

    grid-template-columns:
        1.4fr
        1fr
        1fr;

    grid-auto-rows:240px;

    gap:14px;
}

.category-card{
    position:relative;

    overflow:hidden;

    border-radius:20px;

    border:1px solid var(--border);

    background:var(--surface);

    cursor:pointer;
}

.category-card:first-child{
    grid-row:span 2;
}

.category-card img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.6;

    transition:.5s;
}

.category-card:hover img{
    transform:scale(1.08);
    opacity:.8;
}

.category-card::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            transparent 25%,
            rgba(0,0,0,.9)
        );
}

.category-info{
    position:absolute;

    z-index:2;

    left:22px;
    right:22px;
    bottom:20px;
}

.category-number{
    color:var(--lime);

    font-family:"DM Mono",monospace;

    font-size:10px;

    margin-bottom:8px;
}

.category-info h3{
    font-size:24px;

    letter-spacing:-.04em;
}

.category-info p{
    color:#a2a6af;

    font-size:11px;
}


/* =========================================================
   PRODUCTS
========================================================= */

.shop-head{
    display:flex;
    justify-content:space-between;
    align-items:center;

    gap:20px;

    margin-bottom:25px;
}

.filter-list{
    display:flex;
    gap:7px;

    overflow:auto;

    scrollbar-width:none;
}

.filter-list::-webkit-scrollbar{
    display:none;
}

.filter{
    border:1px solid var(--border);

    background:transparent;

    color:#888d97;

    padding:9px 15px;

    border-radius:8px;

    font-size:11px;

    white-space:nowrap;

    transition:.2s;
}

.filter:hover,
.filter.active{
    background:var(--lime);

    border-color:var(--lime);

    color:#000;

    font-weight:600;
}

.products{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:14px;
}

.product{
    position:relative;

    background:var(--surface);

    border:1px solid var(--border);

    border-radius:18px;

    overflow:hidden;

    transition:.3s;
}

.product:hover{
    transform:translateY(-5px);

    border-color:
        rgba(200,255,44,.25);
}

.product-image{
    height:310px;

    position:relative;

    background:#17191f;

    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.5s;
}

.product:hover .product-image img{
    transform:scale(1.05);
}

.product-tag{
    position:absolute;

    z-index:3;

    top:13px;
    left:13px;

    background:var(--lime);

    color:#000;

    border-radius:5px;

    padding:5px 8px;

    font-family:"DM Mono",monospace;

    font-size:8px;

    font-weight:500;
}

.wishlist{
    position:absolute;

    z-index:3;

    top:12px;
    right:12px;

    width:35px;
    height:35px;

    border:1px solid rgba(255,255,255,.12);

    border-radius:50%;

    background:rgba(0,0,0,.55);

    color:#fff;
}

.wishlist.active{
    background:var(--pink);
    border-color:var(--pink);
}

.product-info{
    padding:18px;
}

.product-category{
    color:var(--muted);

    font-family:"DM Mono",monospace;

    font-size:9px;

    text-transform:uppercase;

    letter-spacing:.1em;
}

.product-name{
    font-size:15px;

    margin:7px 0 15px;
}

.product-bottom{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.price{
    font-family:"DM Mono",monospace;

    font-size:14px;
}

.old-price{
    color:var(--muted-2);

    font-size:10px;

    text-decoration:line-through;

    margin-left:5px;
}

.add{
    width:38px;
    height:38px;

    border:1px solid var(--border);

    border-radius:9px;

    background:#1a1d24;

    color:#fff;

    transition:.2s;
}

.add:hover{
    background:var(--lime);
    color:#000;
    border-color:var(--lime);
}


/* =========================================================
   FEATURE
========================================================= */

.feature{
    display:grid;

    grid-template-columns:
        1fr
        1fr;

    min-height:560px;

    border-radius:26px;

    overflow:hidden;

    background:
        linear-gradient(
            135deg,
            #171a22,
            #0e1015
        );

    border:1px solid var(--border);
}

.feature-image{
    position:relative;

    overflow:hidden;
}

.feature-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    filter:saturate(.7);

    transition:.7s;
}

.feature:hover .feature-image img{
    transform:scale(1.04);
}

.feature-copy{
    padding:70px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.feature-number{
    color:var(--lime);

    font-family:"DM Mono",monospace;

    font-size:11px;

    margin-bottom:25px;
}

.feature-copy h2{
    font-size:clamp(45px,5vw,75px);

    line-height:.88;

    letter-spacing:-.065em;
}

.feature-copy p{
    color:var(--muted);

    max-width:420px;

    font-size:14px;

    margin:25px 0 30px;
}

.feature-list{
    display:grid;
    gap:12px;

    margin-bottom:32px;
}

.feature-list div{
    display:flex;
    align-items:center;
    gap:10px;

    font-size:12px;
}

.feature-list i{
    color:var(--lime);
}


/* =========================================================
   STATS
========================================================= */

.stats{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    border:1px solid var(--border);

    border-radius:18px;

    overflow:hidden;

    background:var(--surface);
}

.stat{
    padding:35px 30px;

    border-right:1px solid var(--border);
}

.stat:last-child{
    border-right:0;
}

.stat-number{
    font-size:38px;

    font-weight:600;

    letter-spacing:-.06em;

    color:var(--white);
}

.stat-number span{
    color:var(--lime);
}

.stat-label{
    color:var(--muted);

    font-family:"DM Mono",monospace;

    font-size:9px;

    text-transform:uppercase;

    letter-spacing:.1em;

    margin-top:6px;
}


/* =========================================================
   TESTIMONIALS
========================================================= */

.reviews{
    display:grid;

    grid-template-columns:
        1.3fr
        1fr
        1fr;

    gap:14px;
}

.review{
    background:var(--surface);

    border:1px solid var(--border);

    border-radius:18px;

    padding:30px;

    min-height:260px;

    display:flex;

    flex-direction:column;

    justify-content:space-between;
}

.review.featured{
    background:var(--lime);
    color:#000;
}

.stars{
    color:var(--lime);

    font-size:11px;

    letter-spacing:3px;
}

.featured .stars{
    color:#000;
}

.review-text{
    font-size:19px;

    line-height:1.3;

    letter-spacing:-.025em;
}

.review-author{
    display:flex;
    align-items:center;
    gap:10px;

    font-family:"DM Mono",monospace;

    font-size:9px;
}

.avatar{
    width:30px;
    height:30px;

    border-radius:50%;

    background:var(--surface-3);

    display:grid;
    place-items:center;

    font-size:10px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    position:relative;

    padding:65px;

    border-radius:25px;

    overflow:hidden;

    background:
        radial-gradient(
            circle at 90% 20%,
            rgba(77,124,255,.22),
            transparent 35%
        ),
        #11141b;

    border:1px solid var(--border);
}

.newsletter::before{
    content:"N";

    position:absolute;

    right:50px;
    top:-90px;

    font-size:350px;

    font-weight:700;

    color:rgba(255,255,255,.025);

    pointer-events:none;
}

.newsletter-content{
    position:relative;
    z-index:2;

    max-width:650px;
}

.newsletter h2{
    font-size:clamp(42px,5vw,70px);

    line-height:.9;

    letter-spacing:-.065em;
}

.newsletter p{
    color:var(--muted);

    margin:18px 0 28px;

    max-width:450px;

    font-size:13px;
}

.newsletter-form{
    display:flex;

    max-width:550px;

    padding:5px;

    background:#090b0f;

    border:1px solid var(--border);

    border-radius:10px;
}

.newsletter-form input{
    flex:1;

    min-width:0;

    border:0;
    outline:0;

    background:transparent;

    color:#fff;

    padding:12px;

    font-size:12px;
}

.newsletter-form button{
    border:0;

    background:var(--lime);

    color:#000;

    border-radius:7px;

    padding:0 20px;

    font-size:11px;

    font-weight:700;
}


/* =========================================================
   FOOTER
========================================================= */

footer{
    padding:80px 0 35px;
}

.footer-top{
    display:grid;

    grid-template-columns:
        2fr 1fr 1fr 1fr;

    gap:50px;

    padding-bottom:60px;
}

.footer-brand p{
    max-width:300px;

    color:var(--muted);

    font-size:12px;

    margin-top:15px;
}

.footer-column h4{
    font-family:"DM Mono",monospace;

    font-size:9px;

    color:var(--muted);

    text-transform:uppercase;

    letter-spacing:.14em;

    margin-bottom:18px;
}

.footer-column a{
    display:block;

    font-size:12px;

    color:#a0a4ae;

    margin:11px 0;

    transition:.2s;
}

.footer-column a:hover{
    color:var(--lime);
}

.footer-bottom{
    padding-top:22px;

    border-top:1px solid var(--border);

    display:flex;

    justify-content:space-between;

    color:var(--muted-2);

    font-family:"DM Mono",monospace;

    font-size:9px;
}


/* =========================================================
   CART DRAWER
========================================================= */

.overlay{
    position:fixed;

    inset:0;

    background:rgba(0,0,0,.65);

    backdrop-filter:blur(5px);

    z-index:300;

    opacity:0;
    pointer-events:none;

    transition:.3s;
}

.overlay.show{
    opacity:1;
    pointer-events:auto;
}

.cart-drawer{
    position:fixed;

    z-index:310;

    top:0;
    right:0;

    height:100vh;

    width:min(440px,100%);

    background:#0d0f14;

    border-left:1px solid var(--border);

    transform:translateX(100%);

    transition:.35s ease;

    display:flex;
    flex-direction:column;
}

.cart-drawer.open{
    transform:translateX(0);
}

.drawer-top{
    padding:25px;

    border-bottom:1px solid var(--border);

    display:flex;
    justify-content:space-between;
    align-items:center;
}

.drawer-top h2{
    font-size:20px;
}

.close{
    width:36px;
    height:36px;

    border:1px solid var(--border);

    background:var(--surface);

    color:#fff;

    border-radius:8px;
}

.drawer-items{
    flex:1;

    overflow:auto;

    padding:22px;
}

.empty{
    height:100%;

    display:grid;
    place-items:center;

    text-align:center;

    color:var(--muted);
}

.empty-icon{
    width:65px;
    height:65px;

    border-radius:50%;

    background:var(--surface);

    display:grid;
    place-items:center;

    margin:auto auto 15px;

    color:var(--lime);
}

.cart-item{
    display:grid;

    grid-template-columns:65px 1fr auto;

    gap:13px;

    align-items:center;

    padding-bottom:18px;

    margin-bottom:18px;

    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:65px;
    height:70px;

    object-fit:cover;

    border-radius:9px;
}

.cart-item-name{
    font-size:12px;
    font-weight:600;
}

.cart-item-meta{
    color:var(--muted);

    font-family:"DM Mono",monospace;

    font-size:9px;

    margin-top:5px;
}

.remove{
    border:0;

    background:none;

    color:#666b75;
}

.drawer-bottom{
    padding:22px;

    border-top:1px solid var(--border);
}

.total{
    display:flex;

    justify-content:space-between;

    margin-bottom:15px;

    font-size:13px;
}

.total strong{
    font-family:"DM Mono",monospace;

    color:var(--lime);
}

.checkout{
    width:100%;

    justify-content:center;
}


/* =========================================================
   SEARCH MODAL
========================================================= */

.search-modal{
    position:fixed;

    inset:0;

    z-index:400;

    display:flex;

    justify-content:center;

    align-items:flex-start;

    padding-top:120px;

    background:rgba(0,0,0,.7);

    backdrop-filter:blur(15px);

    opacity:0;

    pointer-events:none;

    transition:.25s;
}

.search-modal.show{
    opacity:1;
    pointer-events:auto;
}

.search-box{
    width:min(720px,calc(100% - 30px));

    background:#101217;

    border:1px solid var(--border);

    border-radius:18px;

    box-shadow:var(--shadow);

    overflow:hidden;
}

.search-input-wrap{
    display:flex;

    align-items:center;

    gap:13px;

    padding:20px;

    border-bottom:1px solid var(--border);
}

.search-input-wrap i{
    color:var(--lime);
}

.search-input{
    flex:1;

    background:none;

    border:0;
    outline:0;

    color:#fff;

    font-size:18px;
}

.search-results{
    max-height:450px;

    overflow:auto;

    padding:12px;
}

.search-result{
    display:flex;

    align-items:center;

    gap:14px;

    padding:10px;

    border-radius:10px;

    cursor:pointer;
}

.search-result:hover{
    background:var(--surface-3);
}

.search-result img{
    width:50px;
    height:55px;

    object-fit:cover;

    border-radius:7px;
}

.search-result-info{
    flex:1;
}

.search-result-info strong{
    font-size:12px;
}

.search-result-info small{
    display:block;

    color:var(--muted);

    font-size:10px;
}

.search-price{
    font-family:"DM Mono",monospace;

    color:var(--lime);

    font-size:10px;
}


/* =========================================================
   QUICK VIEW
========================================================= */

.quick-view{
    position:fixed;

    inset:0;

    z-index:500;

    display:grid;

    place-items:center;

    padding:20px;

    background:rgba(0,0,0,.75);

    backdrop-filter:blur(10px);

    opacity:0;

    pointer-events:none;

    transition:.25s;
}

.quick-view.show{
    opacity:1;
    pointer-events:auto;
}

.quick-card{
    width:min(900px,100%);

    display:grid;

    grid-template-columns:1fr 1fr;

    background:#11141a;

    border:1px solid var(--border);

    border-radius:22px;

    overflow:hidden;

    box-shadow:var(--shadow);
}

.quick-image{
    min-height:500px;
}

.quick-image img{
    width:100%;
    height:100%;

    object-fit:cover;
}

.quick-info{
    padding:45px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.quick-info h2{
    font-size:38px;

    line-height:1;

    letter-spacing:-.055em;

    margin:10px 0;
}

.quick-info p{
    color:var(--muted);

    font-size:13px;

    margin:15px 0 25px;
}

.quick-price{
    font-family:"DM Mono",monospace;

    color:var(--lime);

    font-size:18px;

    margin-bottom:25px;
}

.quick-close{
    position:absolute;

    top:25px;
    right:25px;

    width:40px;
    height:40px;

    border:1px solid var(--border);

    background:var(--surface);

    color:#fff;

    border-radius:50%;
}


/* =========================================================
   MOBILE BAR
========================================================= */

.mobile-bar{
    display:none;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    .nav-inner{
        grid-template-columns:auto 1fr auto;
    }

    .nav-links{
        display:none;
    }

    .mobile-toggle{
        display:grid;
        margin-right:8px;
    }

    .brand{
        justify-self:center;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-main{
        min-height:650px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .feature{
        grid-template-columns:1fr;
    }

    .feature-image{
        min-height:400px;
    }

    .reviews{
        grid-template-columns:1fr 1fr;
    }

    .review.featured{
        grid-column:1/-1;
    }

    .footer-top{
        grid-template-columns:2fr 1fr 1fr;
    }
}


@media(max-width:680px){

    .container{
        width:calc(100% - 26px);
    }

    .section{
        padding:70px 0;
    }

    .topbar{
        font-size:8px;
    }

    .navbar{
        height:68px;
    }

    .hero{
        padding:25px 0 55px;
    }

    .hero-main{
        padding:30px;

        min-height:570px;

        border-radius:20px;
    }

    .hero-status{
        left:22px;
        top:22px;
    }

    .hero-title{
        font-size:61px;
    }

    .hero-description{
        font-size:13px;
    }

    .hero-actions{
        flex-direction:column;
        align-items:stretch;
    }

    .primary,
    .secondary{
        justify-content:center;
    }

    .hero-side{
        grid-template-rows:300px auto;
    }

    .mini-card{
        min-height:190px;
    }

    .section-top{
        display:block;
    }

    .section-title{
        margin-bottom:15px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;

        grid-auto-rows:190px;
    }

    .category-card:first-child{
        grid-column:1/-1;
        grid-row:auto;
    }

    .category-info h3{
        font-size:18px;
    }

    .shop-head{
        display:block;
    }

    .filter-list{
        margin-top:18px;
    }

    .products{
        grid-template-columns:1fr 1fr;

        gap:9px;
    }

    .product-image{
        height:220px;
    }

    .product-info{
        padding:13px;
    }

    .product-name{
        font-size:12px;
    }

    .price{
        font-size:11px;
    }

    .add{
        width:32px;
        height:32px;
    }

    .feature-copy{
        padding:35px 25px;
    }

    .feature-image{
        min-height:320px;
    }

    .stats{
        grid-template-columns:1fr 1fr;
    }

    .stat{
        border-bottom:1px solid var(--border);
    }

    .stat:nth-child(2){
        border-right:0;
    }

    .stat-number{
        font-size:30px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .review.featured{
        grid-column:auto;
    }

    .newsletter{
        padding:35px 25px;
    }

    .newsletter-form{
        flex-direction:column;
        background:transparent;
        border:0;
        gap:8px;
        padding:0;
    }

    .newsletter-form input{
        background:#090b0f;
        border:1px solid var(--border);
        border-radius:8px;
        padding:14px;
    }

    .newsletter-form button{
        min-height:45px;
    }

    .footer-top{
        grid-template-columns:1fr 1fr;
        gap:35px;
    }

    .footer-brand{
        grid-column:1/-1;
    }

    .footer-bottom{
        display:block;
    }

    .footer-bottom span{
        display:block;
        margin-top:8px;
    }

    .quick-card{
        grid-template-columns:1fr;

        max-height:90vh;

        overflow:auto;
    }

    .quick-image{
        min-height:280px;
        max-height:300px;
    }

    .quick-info{
        padding:28px;
    }

    .quick-info h2{
        font-size:30px;
    }

    .mobile-bar{
        position:fixed;

        display:grid;

        grid-template-columns:repeat(3,1fr);

        left:0;
        right:0;
        bottom:0;

        z-index:200;

        background:rgba(12,14,18,.95);

        border-top:1px solid var(--border);

        backdrop-filter:blur(15px);

        padding:7px 10px;
    }

    .mobile-bar button{
        background:none;

        border:0;

        color:var(--muted);

        font-size:9px;

        padding:6px;
    }

    .mobile-bar i{
        display:block;

        color:#fff;

        font-size:16px;

        margin-bottom:3px;
    }

    body{
        padding-bottom:60px;
    }
}

</style>
</head>


<body>


<!-- =====================================================
     TOP BAR
===================================================== -->

<div class="topbar">
    ⚡ Free shipping on orders over $75 — 30 day returns
</div>


<!-- =====================================================
     NAVIGATION
===================================================== -->

<header class="navbar">

    <div class="container nav-inner">

        <button class="icon-btn mobile-toggle" id="mobileToggle">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="brand">

            <span class="brand-mark">N</span>

            <span>NEXUS</span>

        </a>


        <nav class="nav-links" id="navLinks">

            <a href="#shop">Shop</a>

            <a href="#categories">Categories</a>

            <a href="#featured">Featured</a>

            <a href="#story">About</a>

        </nav>


        <div class="nav-actions">

            <button class="icon-btn" id="searchButton">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="icon-btn">

                <i class="fa-regular fa-heart"></i>

            </button>

            <button class="icon-btn cart-btn" id="cartButton">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="cart-count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<main>


<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

    <div class="container hero-grid">


        <div class="hero-main">

            <div class="hero-grid-noise"></div>

            <div class="hero-status">

                <span class="status-dot"></span>

                LIVE COLLECTION · 2026

            </div>


            <div class="hero-copy">

                <div class="hero-kicker">
                    New way to shop
                </div>

                <h1 class="hero-title">

                    Objects<br>
                    for your<br>
                    <span>next move.</span>

                </h1>

                <p class="hero-description">

                    Technology, fashion and everyday gear
                    selected for people who want less clutter
                    and better stuff.

                </p>


                <div class="hero-actions">

                    <button class="primary" id="exploreButton">

                        Explore products

                        <i class="fa-solid fa-arrow-right"></i>

                    </button>


                    <button class="secondary" id="collectionButton">

                        View collection

                    </button>

                </div>

            </div>

        </div>


        <div class="hero-side">


            <div class="hero-product">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1100&q=85"
                    alt="MacBook">

                <div class="hero-product-info">

                    <div>

                        <div class="label">
                            Featured device
                        </div>

                        <div class="hero-product-name">
                            MacBook Pro
                        </div>

                    </div>

                    <div class="hero-product-price">
                        $1,999
                    </div>

                </div>

            </div>


            <div class="hero-mini">


                <div class="mini-card">

                    <img
                        src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
                        alt="Smart watch">

                    <div class="mini-content">

                        <small>
                            NEW
                        </small>

                        <strong>
                            Smart Gear
                        </strong>

                    </div>

                </div>


                <div class="mini-card">

                    <img
                        src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
                        alt="Headphones">

                    <div class="mini-content">

                        <small>
                            TRENDING
                        </small>

                        <strong>
                            Audio Lab
                        </strong>

                    </div>

                </div>


            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     TICKER
===================================================== -->

<div class="ticker">

    <div class="ticker-track">

        <div class="ticker-item">
            CURATED GOODS
            <b>●</b>
            BETTER PRODUCTS
            <b>●</b>
            FAST DELIVERY
            <b>●</b>
            NO COMPROMISE
            <b>●</b>
        </div>

        <div class="ticker-item">
            CURATED GOODS
            <b>●</b>
            BETTER PRODUCTS
            <b>●</b>
            FAST DELIVERY
            <b>●</b>
            NO COMPROMISE
            <b>●</b>
        </div>

    </div>

</div>


<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-top">

            <div>

                <div class="label">
                    01 / Browse
                </div>

                <h2 class="section-title">
                    Pick your<br>
                    <span style="color:var(--lime)">
                        territory.
                    </span>
                </h2>

            </div>

            <p class="section-description">

                Explore collections built around how
                modern life actually works.

            </p>

        </div>


        <div class="category-grid">


            <div
                class="category-card"
                data-category="technology">

                <img
                    src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=85"
                    alt="Technology">

                <div class="category-info">

                    <div class="category-number">
                        01
                    </div>

                    <h3>
                        Technology
                    </h3>

                    <p>
                        Devices that keep up.
                    </p>

                </div>

            </div>


            <div
                class="category-card"
                data-category="workspace">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85"
                    alt="Workspace">

                <div class="category-info">

                    <div class="category-number">
                        02
                    </div>

                    <h3>
                        Workspace
                    </h3>

                    <p>
                        Built for focus.
                    </p>

                </div>

            </div>


            <div
                class="category-card"
                data-category="fashion">

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=900&q=85"
                    alt="Fashion">

                <div class="category-info">

                    <div class="category-number">
                        03
                    </div>

                    <h3>
                        Fashion
                    </h3>

                    <p>
                        Everyday uniform.
                    </p>

                </div>

            </div>


            <div
                class="category-card"
                data-category="audio">

                <img
                    src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85"
                    alt="Audio">

                <div class="category-info">

                    <div class="category-number">
                        04
                    </div>

                    <h3>
                        Audio
                    </h3>

                    <p>
                        Sound differently.
                    </p>

                </div>

            </div>


            <div
                class="category-card"
                data-category="footwear">

                <img
                    src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85"
                    alt="Footwear">

                <div class="category-info">

                    <div class="category-number">
                        05
                    </div>

                    <h3>
                        Footwear
                    </h3>

                    <p>
                        Move better.
                    </p>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section" id="shop">

    <div class="container">


        <div class="section-top">

            <div>

                <div class="label">
                    02 / The drop
                </div>

                <h2 class="section-title">
                    Currently<br>
                    <span style="color:var(--lime)">
                        obsessed.
                    </span>
                </h2>

            </div>

            <p class="section-description">

                The products getting the most attention
                this week.

            </p>

        </div>


        <div class="shop-head">

            <div class="filter-list">

                <button
                    class="filter active"
                    data-filter="all">
                    All
                </button>

                <button
                    class="filter"
                    data-filter="technology">
                    Technology
                </button>

                <button
                    class="filter"
                    data-filter="workspace">
                    Workspace
                </button>

                <button
                    class="filter"
                    data-filter="fashion">
                    Fashion
                </button>

                <button
                    class="filter"
                    data-filter="audio">
                    Audio
                </button>

                <button
                    class="filter"
                    data-filter="footwear">
                    Footwear
                </button>

            </div>

        </div>


        <div class="products" id="products"></div>

    </div>

</section>


<!-- =====================================================
     FEATURE
===================================================== -->

<section class="section" id="featured">

    <div class="container">

        <div class="feature">


            <div class="feature-image">

                <img
                    src="https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=1200&q=85"
                    alt="Nexus collection">

            </div>


            <div class="feature-copy">

                <div class="feature-number">
                    DROP 07 / ESSENTIALS
                </div>

                <h2>
                    Less stuff.<br>
                    Better stuff.
                </h2>

                <p>

                    We don't chase every trend.
                    We search for products that earn
                    their place in your everyday life.

                </p>


                <div class="feature-list">

                    <div>
                        <i class="fa-solid fa-check"></i>
                        Independent quality checks
                    </div>

                    <div>
                        <i class="fa-solid fa-check"></i>
                        Curated by real people
                    </div>

                    <div>
                        <i class="fa-solid fa-check"></i>
                        30-day easy returns
                    </div>

                </div>


                <button class="primary" id="featureButton">

                    Discover the drop

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     STATS
===================================================== -->

<section class="section">

    <div class="container">

        <div class="stats">

            <div class="stat">

                <div class="stat-number">
                    48<span>k</span>
                </div>

                <div class="stat-label">
                    Happy customers
                </div>

            </div>


            <div class="stat">

                <div class="stat-number">
                    4.9<span>/5</span>
                </div>

                <div class="stat-label">
                    Average rating
                </div>

            </div>


            <div class="stat">

                <div class="stat-number">
                    72<span>h</span>
                </div>

                <div class="stat-label">
                    Fast dispatch
                </div>

            </div>


            <div class="stat">

                <div class="stat-number">
                    30<span>d</span>
                </div>

                <div class="stat-label">
                    Easy returns
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="section">

    <div class="container">

        <div class="section-top">

            <div>

                <div class="label">
                    03 / Community
                </div>

                <h2 class="section-title">
                    People are<br>
                    <span style="color:var(--lime)">
                        talking.
                    </span>
                </h2>

            </div>

        </div>


        <div class="reviews">


            <div class="review featured">

                <div class="stars">
                    ★★★★★
                </div>

                <div class="review-text">

                    “Nexus feels less like a store
                    and more like someone with
                    really good taste shopping
                    for you.”

                </div>

                <div class="review-author">

                    <span class="avatar">
                        MR
                    </span>

                    Maya R. · Verified buyer

                </div>

            </div>


            <div class="review">

                <div class="stars">
                    ★★★★★
                </div>

                <div class="review-text">

                    “Everything I ordered looked
                    even better in person.”

                </div>

                <div class="review-author">

                    <span class="avatar">
                        DK
                    </span>

                    Daniel K.

                </div>

            </div>


            <div class="review">

                <div class="stars">
                    ★★★★★
                </div>

                <div class="review-text">

                    “The product selection is
                    genuinely different from
                    every other marketplace.”

                </div>

                <div class="review-author">

                    <span class="avatar">
                        SL
                    </span>

                    Sophie L.

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div class="newsletter-content">

                <div class="label">
                    04 / Stay in the loop
                </div>

                <h2>
                    Don't miss<br>
                    the good stuff.
                </h2>

                <p>

                    New drops, useful finds and occasional
                    offers. One email when it matters.

                </p>


                <form
                    class="newsletter-form"
                    id="newsletterForm">

                    <input
                        type="email"
                        id="email"
                        placeholder="you@example.com"
                        required>

                    <button type="submit">
                        Join Nexus
                    </button>

                </form>

            </div>

        </div>

    </div>

</section>


</main>


<!-- =====================================================
     FOOTER
===================================================== -->

<footer id="story">

    <div class="container">

        <div class="footer-top">


            <div class="footer-brand">

                <a href="#" class="brand">

                    <span class="brand-mark">
                        N
                    </span>

                    <span>
                        NEXUS
                    </span>

                </a>

                <p>

                    A modern marketplace for products
                    that make everyday life better.

                </p>

            </div>


            <div class="footer-column">

                <h4>
                    Shop
                </h4>

                <a href="#shop">
                    New arrivals
                </a>

                <a href="#shop">
                    Best sellers
                </a>

                <a href="#shop">
                    Technology
                </a>

                <a href="#shop">
                    Fashion
                </a>

            </div>


            <div class="footer-column">

                <h4>
                    Support
                </h4>

                <a href="#">
                    Shipping
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    Contact
                </a>

                <a href="#">
                    FAQ
                </a>

            </div>


            <div class="footer-column">

                <h4>
                    Social
                </h4>

                <a href="#">
                    Instagram
                </a>

                <a href="#">
                    TikTok
                </a>

                <a href="#">
                    Pinterest
                </a>

                <a href="#">
                    X / Twitter
                </a>

            </div>


        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NEXUS
            </span>

            <span>
                BUILT FOR THE NEXT MOVE.
            </span>

        </div>

    </div>

</footer>


<!-- =====================================================
     CART
===================================================== -->

<div class="overlay" id="overlay"></div>


<aside class="cart-drawer" id="cartDrawer">


    <div class="drawer-top">

        <div>

            <div class="label">
                Your selection
            </div>

            <h2>
                Shopping bag
            </h2>

        </div>


        <button class="close" id="closeCart">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div class="drawer-items" id="cartItems">

        <div class="empty">

            <div>

                <div class="empty-icon">

                    <i class="fa-solid fa-bag-shopping"></i>

                </div>

                <p>
                    Your bag is empty.
                </p>

                <small>
                    Find something worth adding.
                </small>

            </div>

        </div>

    </div>


    <div class="drawer-bottom">

        <div class="total">

            <span>
                Total
            </span>

            <strong id="cartTotal">
                $0
            </strong>

        </div>


        <button class="primary checkout">

            Checkout

            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<!-- =====================================================
     SEARCH
===================================================== -->

<div class="search-modal" id="searchModal">

    <div class="search-box">

        <div class="search-input-wrap">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                class="search-input"
                id="searchInput"
                type="search"
                placeholder="Search Nexus...">

            <button
                class="close"
                id="closeSearch">

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>


        <div
            class="search-results"
            id="searchResults">

            <div
                style="
                    padding:30px;
                    text-align:center;
                    color:#666b75;
                    font-size:12px;
                ">

                Search for products, categories
                or collections.

            </div>

        </div>

    </div>

</div>


<!-- =====================================================
     QUICK VIEW
===================================================== -->

<div class="quick-view" id="quickView">

    <button
        class="quick-close"
        id="quickClose">

        <i class="fa-solid fa-xmark"></i>

    </button>


    <div class="quick-card">

        <div class="quick-image">

            <img
                id="quickImage"
                src=""
                alt="">

        </div>


        <div class="quick-info">

            <div
                class="label"
                id="quickCategory">
            </div>

            <h2 id="quickName">
            </h2>

            <div
                class="quick-price"
                id="quickPrice">
            </div>

            <p>

                Carefully selected by the Nexus team.
                Designed to look good, work well and
                stay useful.

            </p>


            <button
                class="primary"
                id="quickAdd">

                Add to bag

                <i class="fa-solid fa-plus"></i>

            </button>

        </div>

    </div>

</div>


<!-- =====================================================
     MOBILE BAR
===================================================== -->

<div class="mobile-bar">

    <button
        onclick="window.scrollTo({top:0,behavior:'smooth'})">

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
   PRODUCTS
========================================================= */

const PRODUCTS = [

    {
        id:1,
        name:"iPhone 15 Pro",
        category:"technology",
        categoryName:"Technology",
        price:999,
        oldPrice:1099,
        tag:"NEW",
        image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:2,
        name:"MacBook Pro 14",
        category:"workspace",
        categoryName:"Workspace",
        price:1999,
        tag:"POPULAR",
        image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:3,
        name:"Everyday Overshirt",
        category:"fashion",
        categoryName:"Fashion",
        price:89,
        oldPrice:120,
        tag:"SALE",
        image:"https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:4,
        name:"Studio Headphones",
        category:"audio",
        categoryName:"Audio",
        price:399,
        tag:"BESTSELLER",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:5,
        name:"Air Max 270",
        category:"footwear",
        categoryName:"Footwear",
        price:150,
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:6,
        name:"Apple Watch",
        category:"technology",
        categoryName:"Technology",
        price:349,
        oldPrice:399,
        tag:"-15%",
        image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:7,
        name:"Minimal Backpack",
        category:"workspace",
        categoryName:"Workspace",
        price:79,
        tag:"ESSENTIAL",
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:8,
        name:"Everyday Sneakers",
        category:"footwear",
        categoryName:"Footwear",
        price:129,
        image:"https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=800&q=85"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

let wishlist = new Set();

let quickProduct = null;


/* =========================================================
   ELEMENTS
========================================================= */

const productsEl =
    document.getElementById("products");

const cartCount =
    document.getElementById("cartCount");

const cartItems =
    document.getElementById("cartItems");

const cartTotal =
    document.getElementById("cartTotal");

const overlay =
    document.getElementById("overlay");

const cartDrawer =
    document.getElementById("cartDrawer");

const searchModal =
    document.getElementById("searchModal");

const searchInput =
    document.getElementById("searchInput");

const searchResults =
    document.getElementById("searchResults");

const quickView =
    document.getElementById("quickView");


/* =========================================================
   PRODUCT RENDER
========================================================= */

function renderProducts(list){

    productsEl.innerHTML = "";


    if(!list.length){

        productsEl.innerHTML = `

            <div style="
                grid-column:1/-1;
                padding:80px 20px;
                text-align:center;
                color:#666b75;
            ">

                <i
                    class="fa-solid fa-box-open"
                    style="
                        font-size:35px;
                        color:var(--lime);
                        margin-bottom:15px;
                    ">
                </i>

                <h3
                    style="
                        color:#fff;
                        margin-bottom:5px;
                    ">

                    Nothing here yet.

                </h3>

                <p>
                    Try another category.
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

            <div class="product-image">

                ${
                    product.tag
                    ?
                    `<span class="product-tag">
                        ${product.tag}
                    </span>`
                    :
                    ""
                }


                <button
                    class="wishlist ${
                        wishlist.has(product.id)
                        ? "active"
                        : ""
                    }"
                    data-wishlist="${product.id}">

                    <i class="${
                        wishlist.has(product.id)
                        ? "fa-solid"
                        : "fa-regular"
                    } fa-heart"></i>

                </button>


                <img
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

                    <div class="price">

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
                        class="add"
                        data-add="${product.id}"
                        title="Add to bag">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>

        `;


        productsEl.appendChild(card);


        card
            .querySelector(".product-image")
            .addEventListener(
                "click",
                event => {

                    if(
                        event.target.closest(".wishlist")
                    ){
                        return;
                    }

                    openQuickView(product);

                }
            );

    });


    document
        .querySelectorAll("[data-add]")
        .forEach(button => {

            button.addEventListener(
                "click",
                event => {

                    event.stopPropagation();

                    addToCart(
                        Number(
                            button.dataset.add
                        )
                    );

                }
            );

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener(
                "click",
                event => {

                    event.stopPropagation();

                    const id =
                        Number(
                            button.dataset.wishlist
                        );

                    toggleWishlist(id);

                }
            );

        });

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id){

    if(wishlist.has(id)){

        wishlist.delete(id);

    }else{

        wishlist.add(id);

    }

    renderProducts(
        getCurrentProducts()
    );

}


/* =========================================================
   CURRENT FILTER
========================================================= */

let currentFilter = "all";


function getCurrentProducts(){

    if(currentFilter === "all"){

        return PRODUCTS;

    }

    return PRODUCTS.filter(
        product =>
            product.category === currentFilter
    );

}


/* =========================================================
   FILTER
========================================================= */

document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.addEventListener(
            "click",
            () => {

                document
                    .querySelectorAll(".filter")
                    .forEach(item =>
                        item.classList.remove("active")
                    );

                button.classList.add("active");

                currentFilter =
                    button.dataset.filter;

                renderProducts(
                    getCurrentProducts()
                );

            }
        );

    });


/* =========================================================
   CATEGORY CLICK
========================================================= */

document
    .querySelectorAll(".category-card")
    .forEach(card => {

        card.addEventListener(
            "click",
            () => {

                const category =
                    card.dataset.category;

                const filter =
                    document.querySelector(
                        `.filter[data-filter="${category}"]`
                    );

                if(filter){

                    filter.click();

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
   CART
========================================================= */

function addToCart(id){

    const product =
        PRODUCTS.find(
            item => item.id === id
        );

    if(!product) return;


    const existing =
        cart.find(
            item => item.id === id
        );


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
            (sum,item) =>
                sum + item.quantity,
            0
        );


    cartCount.textContent = count;


    if(!cart.length){

        cartItems.innerHTML = `

            <div class="empty">

                <div>

                    <div class="empty-icon">

                        <i class="fa-solid fa-bag-shopping"></i>

                    </div>

                    <p>
                        Your bag is empty.
                    </p>

                    <small>
                        Find something worth adding.
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
            item.price *
            item.quantity;


        const row =
            document.createElement("div");

        row.className = "cart-item";


        row.innerHTML = `

            <img
                src="${item.image}"
                alt="${item.name}">


            <div>

                <div class="cart-item-name">
                    ${item.name}
                </div>

                <div class="cart-item-meta">

                    $${item.price.toLocaleString()}
                    × ${item.quantity}

                </div>

            </div>


            <button
                class="remove"
                data-remove="${item.id}">

                <i class="fa-solid fa-xmark"></i>

            </button>

        `;


        cartItems.appendChild(row);

    });


    cartTotal.textContent =
        "$" + total.toLocaleString();


    document
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    const id =
                        Number(
                            button.dataset.remove
                        );

                    cart =
                        cart.filter(
                            item =>
                                item.id !== id
                        );

                    updateCart();

                }
            );

        });

}


/* =========================================================
   CART OPEN / CLOSE
========================================================= */

function openCart(){

    cartDrawer.classList.add("open");

    overlay.classList.add("show");

    document.body.classList.add("lock");

}


function closeCart(){

    cartDrawer.classList.remove("open");

    overlay.classList.remove("show");

    document.body.classList.remove("lock");

}


document
    .getElementById("cartButton")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("mobileCart")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("closeCart")
    .addEventListener(
        "click",
        closeCart
    );


overlay.addEventListener(
    "click",
    closeCart
);


/* =========================================================
   SEARCH
========================================================= */

function openSearch(){

    searchModal.classList.add("show");

    document.body.classList.add("lock");

    setTimeout(
        () => searchInput.focus(),
        100
    );

}


function closeSearch(){

    searchModal.classList.remove("show");

    document.body.classList.remove("lock");

    searchInput.value = "";

    renderSearchResults("");

}


document
    .getElementById("searchButton")
    .addEventListener(
        "click",
        openSearch
    );


document
    .getElementById("mobileSearch")
    .addEventListener(
        "click",
        openSearch
    );


document
    .getElementById("closeSearch")
    .addEventListener(
        "click",
        closeSearch
    );


searchModal.addEventListener(
    "click",
    event => {

        if(event.target === searchModal){

            closeSearch();

        }

    }
);


searchInput.addEventListener(
    "input",
    event => {

        renderSearchResults(
            event.target.value
        );

    }
);


function renderSearchResults(query){

    query =
        query
            .trim()
            .toLowerCase();


    if(!query){

        searchResults.innerHTML = `

            <div
                style="
                    padding:30px;
                    text-align:center;
                    color:#666b75;
                    font-size:12px;
                ">

                Search for products, categories
                or collections.

            </div>

        `;

        return;

    }


    const results =
        PRODUCTS.filter(
            product =>
                product.name
                    .toLowerCase()
                    .includes(query)
                ||
                product.categoryName
                    .toLowerCase()
                    .includes(query)
        );


    if(!results.length){

        searchResults.innerHTML = `

            <div
                style="
                    padding:30px;
                    text-align:center;
                    color:#666b75;
                ">

                No results for
                "<strong>${query}</strong>"

            </div>

        `;

        return;

    }


    searchResults.innerHTML =
        results
            .map(
                product => `

                    <div
                        class="search-result"
                        data-search-id="${product.id}">

                        <img
                            src="${product.image}"
                            alt="${product.name}">

                        <div
                            class="search-result-info">

                            <strong>
                                ${product.name}
                            </strong>

                            <small>
                                ${product.categoryName}
                            </small>

                        </div>

                        <span class="search-price">
                            $${product.price.toLocaleString()}
                        </span>

                    </div>

                `
            )
            .join("");


    document
        .querySelectorAll("[data-search-id]")
        .forEach(item => {

            item.addEventListener(
                "click",
                () => {

                    const product =
                        PRODUCTS.find(
                            p =>
                                p.id ===
                                Number(
                                    item.dataset.searchId
                                )
                        );

                    closeSearch();

                    openQuickView(product);

                }
            );

        });

}


/* =========================================================
   QUICK VIEW
========================================================= */

function openQuickView(product){

    if(!product) return;

    quickProduct = product;

    document
        .getElementById("quickImage")
        .src = product.image;

    document
        .getElementById("quickImage")
        .alt = product.name;

    document
        .getElementById("quickCategory")
        .textContent =
            product.categoryName;

    document
        .getElementById("quickName")
        .textContent =
            product.name;

    document
        .getElementById("quickPrice")
        .textContent =
            "$" +
            product.price.toLocaleString();


    quickView.classList.add("show");

    document.body.classList.add("lock");

}


function closeQuickView(){

    quickView.classList.remove("show");

    document.body.classList.remove("lock");

}


document
    .getElementById("quickClose")
    .addEventListener(
        "click",
        closeQuickView
    );


quickView.addEventListener(
    "click",
    event => {

        if(event.target === quickView){

            closeQuickView();

        }

    }
);


document
    .getElementById("quickAdd")
    .addEventListener(
        "click",
        () => {

            if(quickProduct){

                addToCart(
                    quickProduct.id
                );

                closeQuickView();

            }

        }
    );


/* =========================================================
   HERO BUTTONS
========================================================= */

document
    .getElementById("exploreButton")
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
    .getElementById("collectionButton")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("featured")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("featureButton")
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


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const button =
                event.currentTarget
                    .querySelector("button");

            const input =
                document.getElementById("email");


            button.textContent =
                "You're in ✓";

            button.style.background =
                "#42e8ff";

            input.value = "";


            setTimeout(
                () => {

                    button.textContent =
                        "Join Nexus";

                    button.style.background =
                        "";

                },
                2500
            );

        }
    );


/* =========================================================
   MOBILE NAV
========================================================= */

document
    .getElementById("mobileToggle")
    .addEventListener(
        "click",
        () => {

            const nav =
                document.getElementById("navLinks");


            if(nav.style.display === "flex"){

                nav.style.display = "none";

                return;

            }


            nav.style.display = "flex";

            nav.style.position = "absolute";

            nav.style.top = "68px";

            nav.style.left = "0";

            nav.style.right = "0";

            nav.style.padding = "20px";

            nav.style.background =
                "rgba(9,10,13,.98)";

            nav.style.borderBottom =
                "1px solid var(--border)";

            nav.style.flexDirection =
                "column";

            nav.style.gap = "20px";

        }
    );


/* =========================================================
   ESC KEY
========================================================= */

document.addEventListener(
    "keydown",
    event => {

        if(event.key !== "Escape") return;

        closeCart();

        closeSearch();

        closeQuickView();

    }
);


/* =========================================================
   YEAR
========================================================= */

document
    .getElementById("year")
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
