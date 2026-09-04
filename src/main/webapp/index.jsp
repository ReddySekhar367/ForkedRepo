<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Modern Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Manrope:wght@500;600;700;800&display=swap"
    rel="stylesheet"
>

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
>

<style>

/* =========================================================
   CORE
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --black:#070707;
    --black-2:#0d0d0e;
    --black-3:#141416;

    --white:#f7f7f4;
    --white-soft:#b5b5b1;

    --lime:#d8ff45;
    --lime-dark:#b9df27;

    --line:rgba(255,255,255,.10);

    --container:1440px;

    --ease:cubic-bezier(.22,.8,.2,1);
}

html{
    scroll-behavior:smooth;
}

body{
    background:var(--black);
    color:var(--white);
    font-family:Inter,sans-serif;
    line-height:1.5;
    overflow-x:hidden;
}

body.no-scroll{
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
    width:100%;
    display:block;
}

/* =========================================================
   UTILITIES
========================================================= */

.container{
    width:min(var(--container),calc(100% - 64px));
    margin:auto;
}

.section{
    padding:120px 0;
}

.muted{
    color:var(--white-soft);
}

.upper{
    text-transform:uppercase;
    letter-spacing:.16em;
}

/* =========================================================
   TOP BAR
========================================================= */

.topbar{
    height:34px;
    background:var(--lime);
    color:#050505;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:10px;
    font-weight:800;
    letter-spacing:.16em;
    text-transform:uppercase;
}

/* =========================================================
   NAVIGATION
========================================================= */

.navbar{
    height:82px;

    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(7,7,7,.86);
    backdrop-filter:blur(20px);

    border-bottom:1px solid var(--line);
}

.nav-inner{
    height:100%;

    display:grid;
    grid-template-columns:1fr auto 1fr;
    align-items:center;
}

.logo{
    font-family:Manrope,sans-serif;
    font-size:24px;
    font-weight:800;
    letter-spacing:-.08em;
}

.logo-mark{
    color:var(--lime);
}

.main-nav{
    display:flex;
    gap:34px;

    font-size:11px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:.12em;
}

.main-nav a{
    color:#bdbdb9;
    transition:.2s;
}

.main-nav a:hover{
    color:#fff;
}

.nav-actions{
    display:flex;
    justify-content:flex-end;
    align-items:center;
    gap:7px;
}

.nav-btn{
    width:42px;
    height:42px;

    border:1px solid transparent;
    border-radius:50%;

    background:transparent;
    color:#fff;

    transition:.25s;
}

.nav-btn:hover{
    border-color:var(--line);
    background:var(--black-3);
}

.bag-btn{
    position:relative;
}

.bag-count{
    position:absolute;

    top:-2px;
    right:-2px;

    width:17px;
    height:17px;

    border-radius:50%;

    display:grid;
    place-items:center;

    background:var(--lime);
    color:#000;

    font-size:8px;
    font-weight:800;
}

/* =========================================================
   HERO
========================================================= */

.hero{
    min-height:calc(100vh - 116px);

    position:relative;

    display:flex;
    align-items:center;

    overflow:hidden;
}

.hero-grid{
    display:grid;
    grid-template-columns:1.05fr .95fr;
    min-height:760px;
    align-items:center;
    gap:80px;
}

.hero-copy{
    position:relative;
    z-index:2;
}

.hero-kicker{
    display:flex;
    align-items:center;
    gap:12px;

    margin-bottom:28px;

    color:var(--lime);

    font-size:10px;
    font-weight:800;
    letter-spacing:.22em;
    text-transform:uppercase;
}

.hero-kicker::before{
    content:"";

    width:35px;
    height:1px;

    background:var(--lime);
}

.hero h1{
    max-width:850px;

    font-family:Manrope,sans-serif;

    font-size:clamp(68px,8.7vw,138px);

    line-height:.84;

    letter-spacing:-.085em;

    font-weight:800;
}

.hero h1 span{
    color:var(--lime);
}

.hero-description{
    max-width:510px;

    margin-top:34px;

    color:#999994;

    font-size:15px;
    line-height:1.8;
}

.hero-actions{
    display:flex;
    align-items:center;
    gap:14px;

    margin-top:38px;
}

.btn{
    border:0;

    padding:16px 22px;

    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:13px;

    font-size:11px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.12em;

    transition:.3s var(--ease);
}

.btn-primary{
    background:var(--lime);
    color:#000;
}

.btn-primary:hover{
    background:#fff;
    transform:translateY(-3px);
}

.btn-outline{
    border:1px solid var(--line);
    background:transparent;
    color:#fff;
}

.btn-outline:hover{
    border-color:#fff;
}

/* =========================================================
   HERO VISUAL
========================================================= */

.hero-visual{
    position:relative;
    height:680px;
}

.hero-main-image{
    position:absolute;

    right:0;
    top:0;

    width:83%;
    height:100%;

    object-fit:cover;

    filter:saturate(.7) contrast(1.08);

    clip-path:polygon(
        13% 0,
        100% 0,
        100% 88%,
        82% 100%,
        0 100%,
        0 13%
    );
}

.hero-overlay{
    position:absolute;
    inset:0;

    background:
        linear-gradient(
            90deg,
            var(--black) 0%,
            transparent 45%
        ),
        linear-gradient(
            0deg,
            rgba(0,0,0,.55),
            transparent 45%
        );

    pointer-events:none;
}

.hero-product{
    position:absolute;

    left:0;
    bottom:42px;

    width:290px;

    background:#111;

    border:1px solid var(--line);

    padding:10px;

    z-index:3;
}

.hero-product-image{
    height:180px;
    object-fit:cover;
}

.hero-product-info{
    padding:15px 8px 7px;
}

.hero-product-meta{
    color:#777;
    font-size:9px;
    text-transform:uppercase;
    letter-spacing:.15em;
}

.hero-product-name{
    margin-top:5px;
    font-size:14px;
    font-weight:700;
}

.hero-product-bottom{
    display:flex;
    justify-content:space-between;
    margin-top:15px;
}

.hero-product-price{
    color:var(--lime);
    font-weight:800;
}

.hero-index{
    position:absolute;

    right:-20px;
    bottom:20px;

    font-family:Manrope,sans-serif;

    font-size:100px;
    line-height:1;

    color:rgba(255,255,255,.07);

    font-weight:800;
}

/* =========================================================
   TICKER
========================================================= */

.ticker{
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);

    overflow:hidden;

    background:#0a0a0a;
}

.ticker-track{
    width:max-content;

    display:flex;

    animation:ticker 28s linear infinite;
}

.ticker-item{
    padding:21px 30px;

    font-size:10px;
    font-weight:800;

    letter-spacing:.2em;
    text-transform:uppercase;

    white-space:nowrap;
}

.ticker-item span{
    color:var(--lime);
    margin-left:30px;
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
   SECTION HEADER
========================================================= */

.section-header{
    display:flex;
    justify-content:space-between;
    align-items:flex-end;

    margin-bottom:45px;
}

.section-number{
    color:var(--lime);

    font-size:10px;
    font-weight:800;

    letter-spacing:.2em;
}

.section-title{
    margin-top:10px;

    font-family:Manrope,sans-serif;

    font-size:clamp(40px,5vw,72px);

    line-height:.92;

    letter-spacing:-.065em;

    font-weight:800;
}

.section-description{
    max-width:380px;

    color:#777;

    font-size:13px;
    line-height:1.7;
}

/* =========================================================
   CATEGORY SYSTEM
========================================================= */

.category-grid{
    display:grid;

    grid-template-columns:
        1.3fr
        .7fr
        1fr
        .8fr;

    grid-auto-rows:260px;

    gap:10px;
}

.category{
    position:relative;

    overflow:hidden;

    background:#111;

    cursor:pointer;
}

.category:nth-child(1){
    grid-row:span 2;
}

.category:nth-child(4){
    grid-row:span 2;
}

.category img{
    width:100%;
    height:100%;

    object-fit:cover;

    opacity:.7;

    transition:
        transform .7s var(--ease),
        opacity .5s;
}

.category:hover img{
    transform:scale(1.07);
    opacity:.95;
}

.category::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            transparent 30%,
            rgba(0,0,0,.9)
        );
}

.category-info{
    position:absolute;

    left:24px;
    right:24px;
    bottom:22px;

    z-index:2;
}

.category-number{
    color:var(--lime);

    font-size:9px;
    font-weight:800;

    letter-spacing:.2em;
}

.category h3{
    margin-top:5px;

    font-family:Manrope,sans-serif;

    font-size:25px;

    letter-spacing:-.04em;
}

.category-count{
    color:#999;

    margin-top:5px;

    font-size:10px;
}

/* =========================================================
   PRODUCT SECTION
========================================================= */

.shop-section{
    background:#f0f0ec;
    color:#090909;
}

.shop-section .section-number{
    color:#111;
}

.shop-section .section-description{
    color:#777;
}

.shop-tools{
    display:flex;
    justify-content:space-between;
    align-items:center;

    border-bottom:1px solid #d5d5d0;

    margin-bottom:35px;

    padding-bottom:14px;
}

.filters{
    display:flex;
    gap:24px;

    overflow:auto;
}

.filter{
    border:0;

    background:none;

    padding:4px 0;

    color:#777;

    font-size:10px;
    font-weight:800;

    letter-spacing:.12em;

    text-transform:uppercase;

    white-space:nowrap;

    position:relative;
}

.filter.active{
    color:#000;
}

.filter.active::after{
    content:"";

    position:absolute;

    bottom:-15px;
    left:0;

    width:100%;
    height:2px;

    background:#000;
}

.product-count{
    color:#888;

    font-size:10px;

    white-space:nowrap;
}

.products{
    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:12px;
}

.product{
    position:relative;

    background:#e6e6e1;

    overflow:hidden;

    cursor:pointer;

    transition:
        transform .35s var(--ease);
}

.product:hover{
    transform:translateY(-6px);
}

.product-image{
    position:relative;

    height:390px;

    overflow:hidden;
}

.product-image img{
    height:100%;
    object-fit:cover;

    transition:
        transform .7s var(--ease);
}

.product:hover .product-image img{
    transform:scale(1.05);
}

.product-label{
    position:absolute;

    left:13px;
    top:13px;

    z-index:2;

    padding:6px 8px;

    background:#000;
    color:#fff;

    font-size:8px;
    font-weight:800;

    letter-spacing:.12em;
}

.product-heart{
    position:absolute;

    right:13px;
    top:13px;

    z-index:2;

    width:34px;
    height:34px;

    border:0;

    background:rgba(255,255,255,.88);

    border-radius:50%;
}

.product-info{
    padding:17px;
}

.product-category{
    color:#8b8b87;

    font-size:8px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.14em;
}

.product-name{
    margin-top:5px;

    font-family:Manrope,sans-serif;

    font-size:14px;
    font-weight:800;
}

.product-bottom{
    display:flex;

    align-items:center;
    justify-content:space-between;

    margin-top:17px;
}

.price{
    font-size:13px;
    font-weight:800;
}

.add{
    width:35px;
    height:35px;

    border:0;

    background:#000;
    color:#fff;

    transition:.2s;
}

.add:hover{
    background:var(--lime);
    color:#000;
}

/* =========================================================
   FEATURE
========================================================= */

.feature-section{
    padding:0;
}

.feature{
    min-height:650px;

    position:relative;

    display:grid;

    grid-template-columns:1fr 1fr;

    overflow:hidden;
}

.feature-image{
    height:650px;

    object-fit:cover;

    filter:grayscale(.35);
}

.feature-copy{
    background:var(--lime);
    color:#080808;

    padding:80px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.feature-number{
    font-size:10px;
    font-weight:800;

    letter-spacing:.2em;
}

.feature h2{
    margin:25px 0;

    font-family:Manrope,sans-serif;

    font-size:clamp(50px,6vw,92px);

    line-height:.85;

    letter-spacing:-.075em;

    font-weight:800;
}

.feature p{
    max-width:430px;

    font-size:14px;

    line-height:1.8;

    color:#313313;
}

.feature .btn{
    width:max-content;

    margin-top:30px;

    background:#000;
    color:#fff;
}

/* =========================================================
   EDITORIAL
========================================================= */

.editorial{
    display:grid;

    grid-template-columns:
        .8fr
        1.4fr
        .8fr;

    min-height:600px;

    gap:10px;
}

.editorial-card{
    position:relative;

    overflow:hidden;

    background:#111;
}

.editorial-card img{
    height:100%;
    object-fit:cover;

    transition:.7s var(--ease);
}

.editorial-card:hover img{
    transform:scale(1.04);
}

.editorial-card:nth-child(2){
    min-height:600px;
}

.editorial-overlay{
    position:absolute;

    inset:0;

    display:flex;

    flex-direction:column;

    justify-content:flex-end;

    padding:30px;

    background:
        linear-gradient(
            transparent 45%,
            rgba(0,0,0,.85)
        );
}

.editorial-tag{
    color:var(--lime);

    font-size:9px;
    font-weight:800;

    letter-spacing:.18em;

    text-transform:uppercase;
}

.editorial-title{
    margin-top:8px;

    font-family:Manrope,sans-serif;

    font-size:26px;

    line-height:1;

    letter-spacing:-.05em;
}

/* =========================================================
   TRUST
========================================================= */

.trust{
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);

    display:grid;

    grid-template-columns:repeat(4,1fr);
}

.trust-item{
    padding:35px;

    border-right:1px solid var(--line);
}

.trust-item:last-child{
    border-right:0;
}

.trust-icon{
    color:var(--lime);

    font-size:18px;

    margin-bottom:20px;
}

.trust-title{
    font-size:11px;
    font-weight:800;

    text-transform:uppercase;
    letter-spacing:.1em;
}

.trust-text{
    color:#777;

    margin-top:8px;

    font-size:11px;
}

/* =========================================================
   FOOTER
========================================================= */

.footer{
    padding:90px 0 30px;
}

.footer-top{
    display:grid;

    grid-template-columns:2fr 1fr 1fr 1fr;

    gap:50px;

    padding-bottom:80px;
}

.footer-logo{
    font-family:Manrope,sans-serif;

    font-size:35px;

    font-weight:800;

    letter-spacing:-.08em;
}

.footer-description{
    max-width:310px;

    margin-top:18px;

    color:#777;

    font-size:12px;

    line-height:1.8;
}

.footer-column h4{
    margin-bottom:20px;

    color:#fff;

    font-size:9px;

    letter-spacing:.18em;

    text-transform:uppercase;
}

.footer-column a{
    display:block;

    margin:11px 0;

    color:#777;

    font-size:11px;

    transition:.2s;
}

.footer-column a:hover{
    color:var(--lime);
}

.footer-bottom{
    border-top:1px solid var(--line);

    padding-top:20px;

    display:flex;
    justify-content:space-between;

    color:#555;

    font-size:9px;

    text-transform:uppercase;
    letter-spacing:.1em;
}

/* =========================================================
   SEARCH
========================================================= */

.search-overlay{
    position:fixed;

    inset:0;

    z-index:2000;

    background:rgba(0,0,0,.8);

    backdrop-filter:blur(15px);

    display:none;

    align-items:flex-start;

    justify-content:center;

    padding-top:130px;
}

.search-overlay.open{
    display:flex;
}

.search{
    width:min(800px,calc(100% - 30px));

    background:#111;

    border:1px solid var(--line);
}

.search-head{
    display:flex;

    align-items:center;

    gap:15px;

    padding:25px;

    border-bottom:1px solid var(--line);
}

.search-head i{
    color:var(--lime);
}

.search-head input{
    flex:1;

    border:0;
    outline:0;

    background:none;

    color:#fff;

    font-size:22px;
}

.search-close{
    border:0;

    background:none;

    color:#777;

    font-size:18px;
}

.search-results{
    max-height:500px;

    overflow:auto;
}

.search-result{
    display:flex;

    align-items:center;

    gap:15px;

    padding:15px 25px;

    border-bottom:1px solid var(--line);

    cursor:pointer;
}

.search-result:hover{
    background:#171717;
}

.search-result img{
    width:55px;
    height:65px;

    object-fit:cover;
}

.search-result-info{
    flex:1;
}

.search-result-name{
    font-size:13px;
    font-weight:700;
}

.search-result-category{
    color:#777;

    margin-top:4px;

    font-size:9px;

    text-transform:uppercase;
}

/* =========================================================
   CART
========================================================= */

.cart-overlay{
    position:fixed;

    inset:0;

    z-index:1800;

    background:rgba(0,0,0,.55);

    display:none;
}

.cart-overlay.open{
    display:block;
}

.cart{
    position:fixed;

    z-index:1900;

    right:-470px;
    top:0;

    width:min(470px,100%);

    height:100%;

    background:#111;

    border-left:1px solid var(--line);

    transition:.4s var(--ease);

    display:flex;
    flex-direction:column;
}

.cart.open{
    right:0;
}

.cart-header{
    padding:25px;

    border-bottom:1px solid var(--line);

    display:flex;
    justify-content:space-between;
    align-items:center;
}

.cart-title{
    font-family:Manrope,sans-serif;

    font-size:25px;
    font-weight:800;

    letter-spacing:-.05em;
}

.cart-close{
    width:38px;
    height:38px;

    border:1px solid var(--line);

    background:none;

    color:#fff;

    border-radius:50%;
}

.cart-items{
    flex:1;

    overflow:auto;

    padding:25px;
}

.empty{
    height:100%;

    display:grid;
    place-items:center;

    color:#666;

    text-align:center;
}

.empty i{
    color:var(--lime);

    font-size:30px;

    margin-bottom:15px;
}

.cart-item{
    display:grid;

    grid-template-columns:75px 1fr auto;

    gap:13px;

    align-items:center;

    padding:14px 0;

    border-bottom:1px solid var(--line);
}

.cart-item img{
    width:75px;
    height:85px;

    object-fit:cover;
}

.cart-item-name{
    font-size:12px;
    font-weight:700;
}

.cart-item-price{
    color:#777;

    margin-top:5px;

    font-size:10px;
}

.remove{
    border:0;

    background:none;

    color:#555;
}

.cart-footer{
    padding:25px;

    border-top:1px solid var(--line);
}

.total{
    display:flex;
    justify-content:space-between;

    margin-bottom:18px;

    font-size:13px;
    font-weight:800;
}

.checkout{
    width:100%;

    background:var(--lime);

    color:#000;
}

/* =========================================================
   PRODUCT MODAL
========================================================= */

.product-modal{
    position:fixed;

    inset:0;

    z-index:3000;

    background:rgba(0,0,0,.78);

    backdrop-filter:blur(18px);

    display:none;

    align-items:center;

    justify-content:center;

    padding:30px;
}

.product-modal.open{
    display:flex;
}

.modal-content{
    width:min(1050px,100%);

    max-height:90vh;

    overflow:auto;

    background:#111;

    border:1px solid var(--line);

    display:grid;

    grid-template-columns:1fr 1fr;

    position:relative;
}

.modal-image{
    min-height:650px;

    height:100%;

    object-fit:cover;
}

.modal-info{
    padding:60px;

    display:flex;
    flex-direction:column;
    justify-content:center;
}

.modal-close{
    position:absolute;

    right:18px;
    top:18px;

    z-index:5;

    width:40px;
    height:40px;

    border:1px solid var(--line);

    background:#111;

    color:#fff;
}

.modal-category{
    color:var(--lime);

    font-size:9px;
    font-weight:800;

    letter-spacing:.2em;

    text-transform:uppercase;
}

.modal-title{
    margin-top:15px;

    font-family:Manrope,sans-serif;

    font-size:clamp(40px,5vw,65px);

    line-height:.9;

    letter-spacing:-.07em;
}

.modal-price{
    margin-top:22px;

    font-size:18px;
    font-weight:800;
}

.modal-description{
    margin-top:25px;

    color:#777;

    font-size:13px;

    line-height:1.8;
}

.modal-add{
    margin-top:35px;

    width:100%;
}

/* =========================================================
   MOBILE NAV
========================================================= */

.mobile-nav{
    display:none;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1100px){

    .main-nav{
        display:none;
    }

    .nav-inner{
        grid-template-columns:auto 1fr;
    }

    .nav-actions{
        grid-column:2;
        grid-row:1;
    }

    .hero-grid{
        grid-template-columns:1fr;
        padding:70px 0;
    }

    .hero-visual{
        height:600px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .editorial{
        grid-template-columns:1fr 1fr;
    }

    .editorial-card:nth-child(2){
        grid-column:1/-1;
        grid-row:1;
    }

    .trust{
        grid-template-columns:1fr 1fr;
    }

    .trust-item:nth-child(2){
        border-right:0;
    }

    .trust-item:nth-child(-n+2){
        border-bottom:1px solid var(--line);
    }

}

@media(max-width:700px){

    .container{
        width:calc(100% - 30px);
    }

    .section{
        padding:75px 0;
    }

    .topbar{
        font-size:8px;
        height:30px;
    }

    .navbar{
        height:68px;
    }

    .logo{
        font-size:21px;
    }

    .nav-btn{
        width:38px;
        height:38px;
    }

    .hero{
        min-height:auto;
    }

    .hero-grid{
        min-height:auto;
        gap:45px;
        padding:65px 0;
    }

    .hero h1{
        font-size:67px;
    }

    .hero-description{
        font-size:13px;
    }

    .hero-actions{
        flex-direction:column;
        align-items:stretch;
    }

    .hero-actions .btn{
        width:100%;
    }

    .hero-visual{
        height:440px;
    }

    .hero-main-image{
        width:90%;
        height:100%;
    }

    .hero-product{
        width:230px;
        bottom:15px;
    }

    .hero-product-image{
        height:125px;
    }

    .hero-index{
        font-size:65px;
    }

    .section-header{
        display:block;
    }

    .section-description{
        margin-top:20px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;
        grid-auto-rows:180px;
    }

    .category:nth-child(1),
    .category:nth-child(4){
        grid-row:span 1;
    }

    .category h3{
        font-size:17px;
    }

    .category-info{
        left:14px;
        right:14px;
        bottom:14px;
    }

    .shop-tools{
        align-items:flex-start;
    }

    .filters{
        gap:18px;
    }

    .product-count{
        display:none;
    }

    .products{
        grid-template-columns:1fr 1fr;
        gap:8px;
    }

    .product-image{
        height:235px;
    }

    .product-info{
        padding:12px;
    }

    .product-name{
        font-size:12px;
    }

    .product-bottom{
        margin-top:13px;
    }

    .feature{
        display:block;
    }

    .feature-image{
        height:400px;
    }

    .feature-copy{
        padding:50px 25px 60px;
    }

    .editorial{
        grid-template-columns:1fr;
    }

    .editorial-card:nth-child(2){
        grid-column:auto;
        min-height:500px;
    }

    .editorial-card{
        min-height:350px;
    }

    .trust{
        grid-template-columns:1fr 1fr;
    }

    .trust-item{
        padding:22px 15px;
    }

    .footer-top{
        grid-template-columns:1fr 1fr;
        gap:35px;
    }

    .footer-top > div:first-child{
        grid-column:1/-1;
    }

    .footer-bottom{
        display:block;
        line-height:2;
    }

    .modal-content{
        grid-template-columns:1fr;
    }

    .modal-image{
        height:350px;
        min-height:350px;
    }

    .modal-info{
        padding:35px 25px 45px;
    }

    .mobile-nav{
        position:fixed;

        display:grid;

        grid-template-columns:repeat(3,1fr);

        bottom:0;
        left:0;
        right:0;

        z-index:1200;

        background:rgba(10,10,10,.96);

        border-top:1px solid var(--line);

        padding:8px 10px;

        backdrop-filter:blur(15px);
    }

    .mobile-nav button{
        border:0;

        background:none;

        color:#777;

        font-size:8px;

        font-weight:800;

        text-transform:uppercase;

        letter-spacing:.1em;
    }

    .mobile-nav i{
        display:block;

        color:#fff;

        font-size:16px;

        margin-bottom:4px;
    }

    body{
        padding-bottom:65px;
    }

}

/* =========================================================
   REDUCED MOTION
========================================================= */

@media(prefers-reduced-motion:reduce){

    *,
    *::before,
    *::after{
        animation-duration:.01ms!important;
        transition-duration:.01ms!important;
    }

}

</style>
</head>

<body>

<!-- =======================================================
     TOP BAR
======================================================= -->

<div class="topbar">
    Complimentary shipping on orders over $100 · Worldwide delivery
</div>


<!-- =======================================================
     NAV
======================================================= -->

<header class="navbar">

    <div class="container nav-inner">

        <a href="#" class="logo">
            NEXUS<span class="logo-mark">/</span>
        </a>

        <nav class="main-nav">
            <a href="#shop">Shop</a>
            <a href="#collections">Collections</a>
            <a href="#edit">The Edit</a>
            <a href="#journal">Journal</a>
        </nav>

        <div class="nav-actions">

            <button
                class="nav-btn"
                id="searchButton"
                aria-label="Search">

                <i class="fa-solid fa-magnifying-glass"></i>

            </button>

            <button
                class="nav-btn"
                aria-label="Wishlist">

                <i class="fa-regular fa-heart"></i>

            </button>

            <button
                class="nav-btn bag-btn"
                id="bagButton"
                aria-label="Shopping bag">

                <i class="fa-solid fa-bag-shopping"></i>

                <span
                    class="bag-count"
                    id="bagCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<!-- =======================================================
     HERO
======================================================= -->

<main>

<section class="hero">

    <div class="container hero-grid">

        <div class="hero-copy">

            <div class="hero-kicker">
                Collection 06 / 26
            </div>

            <h1>
                Designed<br>
                for <span>now.</span>
            </h1>

            <p class="hero-description">
                A considered selection of technology, objects and
                everyday essentials. Less noise. Better choices.
            </p>

            <div class="hero-actions">

                <button
                    class="btn btn-primary"
                    id="heroShop">

                    Explore collection

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

                <button
                    class="btn btn-outline"
                    id="heroEdit">

                    View the edit

                </button>

            </div>

        </div>


        <div class="hero-visual">

            <img
                class="hero-main-image"
                src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=1400&q=90"
                alt="Nexus collection">

            <div class="hero-overlay"></div>

            <div class="hero-product">

                <img
                    class="hero-product-image"
                    src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
                    alt="Minimal watch">

                <div class="hero-product-info">

                    <div class="hero-product-meta">
                        Featured object
                    </div>

                    <div class="hero-product-name">
                        Series 04 Chronograph
                    </div>

                    <div class="hero-product-bottom">

                        <span class="hero-product-price">
                            $349
                        </span>

                        <span class="muted">
                            04 / 12
                        </span>

                    </div>

                </div>

            </div>

            <div class="hero-index">
                01
            </div>

        </div>

    </div>

</section>


<!-- =======================================================
     TICKER
======================================================= -->

<div class="ticker">

    <div class="ticker-track">

        <div class="ticker-item">
            Objects with intention
            <span>✦</span>
        </div>

        <div class="ticker-item">
            New season / new perspective
            <span>✦</span>
        </div>

        <div class="ticker-item">
            Built for everyday
            <span>✦</span>
        </div>

        <div class="ticker-item">
            Objects with intention
            <span>✦</span>
        </div>

        <div class="ticker-item">
            New season / new perspective
            <span>✦</span>
        </div>

        <div class="ticker-item">
            Built for everyday
            <span>✦</span>
        </div>

    </div>

</div>


<!-- =======================================================
     COLLECTIONS
======================================================= -->

<section
    class="section"
    id="collections">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="section-number">
                    01 / CATEGORIES
                </div>

                <h2 class="section-title">
                    Explore<br>
                    by world.
                </h2>

            </div>

            <p class="section-description">
                From everyday technology to objects that make
                your space feel considered. Start anywhere.
            </p>

        </div>


        <div class="category-grid">

            <article
                class="category"
                data-filter="technology">

                <img
                    src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=85"
                    alt="Technology">

                <div class="category-info">

                    <div class="category-number">
                        01
                    </div>

                    <h3>Technology</h3>

                    <div class="category-count">
                        24 objects
                    </div>

                </div>

            </article>


            <article
                class="category"
                data-filter="audio">

                <img
                    src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
                    alt="Audio">

                <div class="category-info">

                    <div class="category-number">
                        02
                    </div>

                    <h3>Audio</h3>

                    <div class="category-count">
                        16 objects
                    </div>

                </div>

            </article>


            <article
                class="category"
                data-filter="workspace">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=85"
                    alt="Workspace">

                <div class="category-info">

                    <div class="category-number">
                        03
                    </div>

                    <h3>Workspace</h3>

                    <div class="category-count">
                        18 objects
                    </div>

                </div>

            </article>


            <article
                class="category"
                data-filter="fashion">

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=900&q=85"
                    alt="Fashion">

                <div class="category-info">

                    <div class="category-number">
                        04
                    </div>

                    <h3>Fashion</h3>

                    <div class="category-count">
                        42 objects
                    </div>

                </div>

            </article>


            <article
                class="category"
                data-filter="travel">

                <img
                    src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
                    alt="Travel">

                <div class="category-info">

                    <div class="category-number">
                        05
                    </div>

                    <h3>Travel</h3>

                    <div class="category-count">
                        21 objects
                    </div>

                </div>

            </article>


            <article
                class="category"
                data-filter="footwear">

                <img
                    src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
                    alt="Footwear">

                <div class="category-info">

                    <div class="category-number">
                        06
                    </div>

                    <h3>Footwear</h3>

                    <div class="category-count">
                        31 objects
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =======================================================
     SHOP
======================================================= -->

<section
    class="section shop-section"
    id="shop">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="section-number">
                    02 / SHOP
                </div>

                <h2 class="section-title">
                    The current<br>
                    selection.
                </h2>

            </div>

            <p class="section-description">
                Products chosen for function, form and the
                simple fact that they deserve your attention.
            </p>

        </div>


        <div class="shop-tools">

            <div class="filters">

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
                    data-filter="audio">
                    Audio
                </button>

                <button
                    class="filter"
                    data-filter="fashion">
                    Fashion
                </button>

                <button
                    class="filter"
                    data-filter="footwear">
                    Footwear
                </button>

                <button
                    class="filter"
                    data-filter="travel">
                    Travel
                </button>

            </div>

            <div
                class="product-count"
                id="productCount">
                08 PRODUCTS
            </div>

        </div>


        <div
            class="products"
            id="products">
        </div>

    </div>

</section>


<!-- =======================================================
     FEATURE
======================================================= -->

<section class="feature-section">

    <div class="feature">

        <img
            class="feature-image"
            src="https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=1300&q=90"
            alt="The winter edit">

        <div class="feature-copy">

            <div class="feature-number">
                03 / THE EDIT
            </div>

            <h2>
                Quiet<br>
                confidence.
            </h2>

            <p>
                Neutral textures. Functional silhouettes.
                Pieces that don't need to announce themselves
                to make an impression.
            </p>

            <button
                class="btn"
                id="featureButton">

                Shop the edit
                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>

    </div>

</section>


<!-- =======================================================
     EDITORIAL
======================================================= -->

<section
    class="section"
    id="edit">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="section-number">
                    04 / JOURNAL
                </div>

                <h2 class="section-title">
                    More than<br>
                    a storefront.
                </h2>

            </div>

            <p class="section-description">
                Ideas, objects and the thinking behind what
                makes a product worth keeping.
            </p>

        </div>


        <div class="editorial">

            <article class="editorial-card">

                <img
                    src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?auto=format&fit=crop&w=900&q=85"
                    alt="Workspace">

                <div class="editorial-overlay">

                    <div class="editorial-tag">
                        Guide
                    </div>

                    <div class="editorial-title">
                        Building a better workspace
                    </div>

                </div>

            </article>


            <article class="editorial-card">

                <img
                    src="https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=1200&q=90"
                    alt="Minimal interior">

                <div class="editorial-overlay">

                    <div class="editorial-tag">
                        Perspective
                    </div>

                    <div class="editorial-title">
                        Why less can feel like more
                    </div>

                </div>

            </article>


            <article class="editorial-card">

                <img
                    src="https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=900&q=85"
                    alt="Fashion">

                <div class="editorial-overlay">

                    <div class="editorial-tag">
                        Style
                    </div>

                    <div class="editorial-title">
                        The art of everyday dressing
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =======================================================
     TRUST
======================================================= -->

<div class="container">

    <div class="trust">

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-box"></i>
            </div>

            <div class="trust-title">
                Carefully packed
            </div>

            <div class="trust-text">
                Every order leaves our studio protected.
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-globe"></i>
            </div>

            <div class="trust-title">
                Worldwide
            </div>

            <div class="trust-text">
                We deliver to more than 80 countries.
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-arrow-rotate-left"></i>
            </div>

            <div class="trust-title">
                Easy returns
            </div>

            <div class="trust-text">
                30 days to change your mind.
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-headset"></i>
            </div>

            <div class="trust-title">
                Human support
            </div>

            <div class="trust-text">
                Real people, Monday through Friday.
            </div>

        </div>

    </div>

</div>

</main>


<!-- =======================================================
     FOOTER
======================================================= -->

<footer class="footer" id="journal">

    <div class="container">

        <div class="footer-top">

            <div>

                <div class="footer-logo">
                    NEXUS<span class="logo-mark">/</span>
                </div>

                <p class="footer-description">
                    A modern marketplace built around objects
                    with purpose, personality and longevity.
                </p>

            </div>


            <div class="footer-column">

                <h4>Explore</h4>

                <a href="#shop">Shop</a>
                <a href="#collections">Collections</a>
                <a href="#edit">The Edit</a>
                <a href="#">New arrivals</a>

            </div>


            <div class="footer-column">

                <h4>Support</h4>

                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact</a>
                <a href="#">FAQ</a>

            </div>


            <div class="footer-column">

                <h4>Social</h4>

                <a href="#">Instagram</a>
                <a href="#">Pinterest</a>
                <a href="#">YouTube</a>
                <a href="#">X / Twitter</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NEXUS
            </span>

            <span>
                Designed with intention.
            </span>

        </div>

    </div>

</footer>


<!-- =======================================================
     SEARCH
======================================================= -->

<div
    class="search-overlay"
    id="searchOverlay">

    <div class="search">

        <div class="search-head">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search the collection...">

            <button
                class="search-close"
                id="searchClose">

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>

        <div
            class="search-results"
            id="searchResults">
        </div>

    </div>

</div>


<!-- =======================================================
     CART
======================================================= -->

<div
    class="cart-overlay"
    id="cartOverlay">
</div>

<aside
    class="cart"
    id="cart">

    <div class="cart-header">

        <div>

            <div class="section-number">
                YOUR SELECTION
            </div>

            <div class="cart-title">
                Shopping bag
            </div>

        </div>

        <button
            class="cart-close"
            id="cartClose">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">
    </div>


    <div class="cart-footer">

        <div class="total">

            <span>Total</span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button
            class="btn checkout">

            Continue to checkout

            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>

</aside>


<!-- =======================================================
     PRODUCT MODAL
======================================================= -->

<div
    class="product-modal"
    id="productModal">

    <div class="modal-content">

        <button
            class="modal-close"
            id="modalClose">

            <i class="fa-solid fa-xmark"></i>

        </button>

        <img
            class="modal-image"
            id="modalImage"
            alt="">

        <div class="modal-info">

            <div
                class="modal-category"
                id="modalCategory">
            </div>

            <h2
                class="modal-title"
                id="modalTitle">
            </h2>

            <div
                class="modal-price"
                id="modalPrice">
            </div>

            <p class="modal-description">
                A considered object selected for its
                balance of function, material and form.
                Designed to become part of your everyday.
            </p>

            <button
                class="btn btn-primary modal-add"
                id="modalAdd">

                Add to bag

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>

    </div>

</div>


<!-- =======================================================
     MOBILE NAV
======================================================= -->

<div class="mobile-nav">

    <button id="mobileHome">

        <i class="fa-solid fa-house"></i>

        Home

    </button>

    <button id="mobileSearch">

        <i class="fa-solid fa-magnifying-glass"></i>

        Search

    </button>

    <button id="mobileBag">

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
        label:"NEW",
        image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:2,
        name:"MacBook Pro 14",
        category:"workspace",
        categoryName:"Workspace",
        price:1999,
        label:"ESSENTIAL",
        image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:3,
        name:"Studio Headphones",
        category:"audio",
        categoryName:"Audio",
        price:399,
        label:"BESTSELLER",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:4,
        name:"Series 04 Watch",
        category:"fashion",
        categoryName:"Fashion",
        price:349,
        label:"NEW",
        image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:5,
        name:"Everyday Runner",
        category:"footwear",
        categoryName:"Footwear",
        price:150,
        label:"FAVORITE",
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:6,
        name:"Utility Backpack",
        category:"travel",
        categoryName:"Travel",
        price:129,
        label:"ESSENTIAL",
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:7,
        name:"Minimal Camera",
        category:"technology",
        categoryName:"Technology",
        price:1299,
        label:"EDITOR'S PICK",
        image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:8,
        name:"Daily Overshirt",
        category:"fashion",
        categoryName:"Fashion",
        price:119,
        label:"LIMITED",
        image:"https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=900&q=90"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];

let selectedProduct = null;


/* =========================================================
   ELEMENTS
========================================================= */

const productsEl =
    document.getElementById("products");

const productCount =
    document.getElementById("productCount");

const bagCount =
    document.getElementById("bagCount");

const cartEl =
    document.getElementById("cart");

const cartOverlay =
    document.getElementById("cartOverlay");

const cartItems =
    document.getElementById("cartItems");

const cartTotal =
    document.getElementById("cartTotal");

const searchOverlay =
    document.getElementById("searchOverlay");

const searchInput =
    document.getElementById("searchInput");

const searchResults =
    document.getElementById("searchResults");

const productModal =
    document.getElementById("productModal");


/* =========================================================
   PRODUCT RENDER
========================================================= */

function renderProducts(list){

    productsEl.innerHTML = "";

    productCount.textContent =
        String(list.length).padStart(2,"0") +
        " PRODUCTS";


    if(!list.length){

        productsEl.innerHTML = `

            <div style="
                grid-column:1/-1;
                padding:100px 20px;
                text-align:center;
                color:#777;
            ">

                <i
                    class="fa-solid fa-box-open"
                    style="
                        font-size:30px;
                        margin-bottom:15px;
                    ">
                </i>

                <p>
                    No products found.
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

                <span class="product-label">
                    ${product.label}
                </span>

                <button
                    class="product-heart"
                    aria-label="Wishlist">

                    <i class="fa-regular fa-heart"></i>

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

                <div class="product-name">
                    ${product.name}
                </div>


                <div class="product-bottom">

                    <div class="price">
                        $${product.price.toLocaleString()}
                    </div>

                    <button
                        class="add"
                        data-id="${product.id}"
                        aria-label="Add to bag">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>

        `;


        card
            .querySelector(".add")
            .addEventListener(
                "click",
                event => {

                    event.stopPropagation();

                    addToCart(product.id);

                }
            );


        card
            .querySelector(".product-heart")
            .addEventListener(
                "click",
                event => {

                    event.stopPropagation();

                    const icon =
                        event.currentTarget.querySelector("i");

                    icon.classList.toggle("fa-regular");
                    icon.classList.toggle("fa-solid");

                    event.currentTarget.style.color =
                        icon.classList.contains("fa-solid")
                        ? "#d8ff45"
                        : "";

                }
            );


        card.addEventListener(
            "click",
            () => openProduct(product)
        );


        productsEl.appendChild(card);

    });

}


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

                const filter =
                    category.dataset.filter;

                const filterButton =
                    document.querySelector(
                        `.filter[data-filter="${filter}"]`
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


    bagCount.textContent = count;


    if(!cart.length){

        cartItems.innerHTML = `

            <div class="empty">

                <div>

                    <i class="fa-solid fa-bag-shopping"></i>

                    <p>
                        Your bag is empty.
                    </p>

                    <small>
                        Start with something worth keeping.
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

                <div class="cart-item-name">
                    ${item.name}
                </div>

                <div class="cart-item-price">
                    $${item.price.toLocaleString()}
                    × ${item.quantity}
                </div>

            </div>

            <button
                class="remove"
                data-id="${item.id}">

                <i class="fa-solid fa-xmark"></i>

            </button>

        `;


        row
            .querySelector(".remove")
            .addEventListener(
                "click",
                () => {

                    cart =
                        cart.filter(
                            item =>
                                item.id !== Number(
                                    row
                                        .querySelector(".remove")
                                        .dataset.id
                                )
                        );

                    updateCart();

                }
            );


        cartItems.appendChild(row);

    });


    cartTotal.textContent =
        "$" + total.toLocaleString();

}


function openCart(){

    cartEl.classList.add("open");

    cartOverlay.classList.add("open");

    document.body.classList.add("no-scroll");

}


function closeCart(){

    cartEl.classList.remove("open");

    cartOverlay.classList.remove("open");

    document.body.classList.remove("no-scroll");

}


document
    .getElementById("bagButton")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("mobileBag")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("cartClose")
    .addEventListener(
        "click",
        closeCart
    );


cartOverlay.addEventListener(
    "click",
    closeCart
);


/* =========================================================
   PRODUCT MODAL
========================================================= */

function openProduct(product){

    selectedProduct = product;

    document
        .getElementById("modalImage")
        .src = product.image;

    document
        .getElementById("modalImage")
        .alt = product.name;

    document
        .getElementById("modalCategory")
        .textContent = product.categoryName;

    document
        .getElementById("modalTitle")
        .textContent = product.name;

    document
        .getElementById("modalPrice")
        .textContent =
            "$" + product.price.toLocaleString();


    productModal.classList.add("open");

    document.body.classList.add("no-scroll");

}


function closeProduct(){

    productModal.classList.remove("open");

    document.body.classList.remove("no-scroll");

}


document
    .getElementById("modalClose")
    .addEventListener(
        "click",
        closeProduct
    );


productModal.addEventListener(
    "click",
    event => {

        if(event.target === productModal){

            closeProduct();

        }

    }
);


document
    .getElementById("modalAdd")
    .addEventListener(
        "click",
        () => {

            if(selectedProduct){

                addToCart(selectedProduct.id);

                closeProduct();

            }

        }
    );


/* =========================================================
   SEARCH
========================================================= */

function openSearch(){

    searchOverlay.classList.add("open");

    document.body.classList.add("no-scroll");

    setTimeout(
        () => searchInput.focus(),
        100
    );

}


function closeSearch(){

    searchOverlay.classList.remove("open");

    document.body.classList.remove("no-scroll");

    searchInput.value = "";

    searchResults.innerHTML = "";

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
    .getElementById("searchClose")
    .addEventListener(
        "click",
        closeSearch
    );


searchOverlay.addEventListener(
    "click",
    event => {

        if(event.target === searchOverlay){

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

            searchResults.innerHTML = "";

            return;

        }


        const results =
            PRODUCTS.filter(product =>

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
                        padding:35px 25px;
                        color:#666;
                        font-size:12px;
                    ">

                    Nothing matched "${query}".

                </div>

            `;

            return;

        }


        searchResults.innerHTML =
            results.map(product => `

                <div
                    class="search-result"
                    data-id="${product.id}">

                    <img
                        src="${product.image}"
                        alt="${product.name}">

                    <div class="search-result-info">

                        <div class="search-result-name">
                            ${product.name}
                        </div>

                        <div class="search-result-category">
                            ${product.categoryName}
                        </div>

                    </div>

                    <strong>
                        $${product.price.toLocaleString()}
                    </strong>

                </div>

            `).join("");


        document
            .querySelectorAll(".search-result")
            .forEach(result => {

                result.addEventListener(
                    "click",
                    () => {

                        const product =
                            PRODUCTS.find(
                                item =>
                                    item.id === Number(
                                        result.dataset.id
                                    )
                            );

                        closeSearch();

                        if(product){

                            openProduct(product);

                        }

                    }
                );

            });

    }
);


/* =========================================================
   HERO ACTIONS
========================================================= */

document
    .getElementById("heroShop")
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
    .getElementById("heroEdit")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("edit")
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
   ESC KEY
========================================================= */

document.addEventListener(
    "keydown",
    event => {

        if(event.key === "Escape"){

            closeSearch();

            closeCart();

            closeProduct();

        }

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
