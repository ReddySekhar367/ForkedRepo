<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Future Goods</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">

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
    --bg:#0b0c0d;
    --surface:#121416;
    --surface-2:#191b1e;
    --surface-3:#202327;

    --white:#f4f4ef;
    --muted:#858a8d;
    --muted-2:#5d6265;

    --lime:#d7ff42;
    --lime-dark:#b6df24;

    --line:#292d30;
    --red:#ff5f57;

    --max:1440px;
}

html{
    scroll-behavior:smooth;
}

body{
    background:var(--bg);
    color:var(--white);
    font-family:"DM Sans",sans-serif;
    line-height:1.5;
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
    display:block;
    width:100%;
}

/* =========================================================
   GLOBAL
========================================================= */

.container{
    width:min(var(--max),calc(100% - 48px));
    margin:auto;
}

.mono{
    font-family:"Space Grotesk",sans-serif;
}

.label{
    font-family:"Space Grotesk",sans-serif;
    color:var(--lime);
    font-size:11px;
    font-weight:700;
    letter-spacing:.14em;
    text-transform:uppercase;
}

.section{
    padding:110px 0;
}

.section-header{
    display:flex;
    justify-content:space-between;
    align-items:flex-end;
    gap:40px;
    margin-bottom:45px;
}

.section-header h2{
    font-family:"Space Grotesk",sans-serif;
    font-size:clamp(42px,6vw,82px);
    font-weight:600;
    line-height:.95;
    letter-spacing:-.065em;
}

.section-header p{
    max-width:370px;
    color:var(--muted);
    font-size:14px;
}

/* =========================================================
   TOP BAR
========================================================= */

.topbar{
    min-height:35px;
    background:var(--lime);
    color:#10120b;

    display:flex;
    align-items:center;
    justify-content:center;

    font-family:"Space Grotesk",sans-serif;
    font-size:10px;
    font-weight:700;
    letter-spacing:.1em;
    text-transform:uppercase;
}

/* =========================================================
   HEADER
========================================================= */

.header{
    position:sticky;
    top:0;
    z-index:100;

    background:rgba(11,12,13,.86);
    backdrop-filter:blur(20px);

    border-bottom:1px solid var(--line);
}

.header-inner{
    min-height:76px;

    display:grid;
    grid-template-columns:1fr auto 1fr;
    align-items:center;
}

.brand{
    font-family:"Space Grotesk",sans-serif;
    font-size:24px;
    font-weight:700;
    letter-spacing:-.08em;
}

.brand span{
    color:var(--lime);
}

.main-nav{
    display:flex;
    gap:34px;

    font-family:"Space Grotesk",sans-serif;
    font-size:12px;
    font-weight:600;
    text-transform:uppercase;
    letter-spacing:.04em;
}

.main-nav a{
    color:#aeb2b3;
    transition:.2s;
}

.main-nav a:hover,
.main-nav a.active{
    color:var(--white);
}

.header-actions{
    justify-self:end;
    display:flex;
    gap:7px;
}

.icon-btn{
    width:40px;
    height:40px;

    border:1px solid var(--line);
    background:transparent;
    color:var(--white);

    display:grid;
    place-items:center;

    transition:.2s;
}

.icon-btn:hover{
    background:var(--surface-2);
    border-color:#41464a;
}

.cart-btn{
    position:relative;
}

.cart-count{
    position:absolute;
    top:-5px;
    right:-5px;

    width:17px;
    height:17px;

    background:var(--lime);
    color:#10120b;

    border-radius:50%;

    display:grid;
    place-items:center;

    font-size:9px;
    font-weight:800;
}

.mobile-toggle{
    display:none;
}

/* =========================================================
   HERO
========================================================= */

.hero{
    padding:30px 0 0;
}

.hero-grid{
    min-height:760px;

    display:grid;
    grid-template-columns:1.05fr .95fr;
    gap:12px;
}

.hero-main{
    position:relative;
    min-height:760px;

    overflow:hidden;
    background:#191b1d;
}

.hero-main img{
    position:absolute;
    inset:0;

    width:100%;
    height:100%;

    object-fit:cover;

    filter:brightness(.62) saturate(.75);

    transition:transform 1s ease;
}

.hero-main:hover img{
    transform:scale(1.035);
}

.hero-main::after{
    content:"";

    position:absolute;
    inset:0;

    background:
        linear-gradient(
            180deg,
            rgba(0,0,0,.08),
            rgba(0,0,0,.2) 35%,
            rgba(0,0,0,.9)
        );
}

.hero-content{
    position:absolute;
    z-index:2;

    left:50px;
    right:50px;
    bottom:48px;
}

.hero-index{
    display:flex;
    justify-content:space-between;
    align-items:center;

    margin-bottom:25px;

    color:#c4c7c8;

    font-family:"Space Grotesk",sans-serif;
    font-size:10px;
    letter-spacing:.12em;
    text-transform:uppercase;
}

.hero-title{
    max-width:850px;

    font-family:"Space Grotesk",sans-serif;
    font-size:clamp(58px,7vw,108px);
    line-height:.86;
    letter-spacing:-.08em;
    font-weight:600;
}

.hero-title span{
    color:var(--lime);
}

.hero-description{
    max-width:510px;
    color:#bfc3c4;
    margin:25px 0 30px;
    font-size:15px;
}

.hero-actions{
    display:flex;
    gap:10px;
}

.primary{
    min-height:48px;
    padding:0 20px;

    border:0;
    background:var(--lime);
    color:#0b0d0c;

    font-family:"Space Grotesk",sans-serif;
    font-size:12px;
    font-weight:700;
    text-transform:uppercase;

    display:inline-flex;
    align-items:center;
    gap:12px;

    transition:.2s;
}

.primary:hover{
    background:#efffa2;
    transform:translateY(-2px);
}

.secondary{
    min-height:48px;
    padding:0 20px;

    border:1px solid #54595c;
    background:rgba(0,0,0,.25);
    color:#fff;

    font-family:"Space Grotesk",sans-serif;
    font-size:12px;
    font-weight:700;
    text-transform:uppercase;

    display:inline-flex;
    align-items:center;
    gap:12px;
}

.secondary:hover{
    background:#fff;
    color:#000;
}

/* =========================================================
   HERO SIDE
========================================================= */

.hero-side{
    display:grid;
    grid-template-rows:1fr 1fr;
    gap:12px;
}

.hero-panel{
    position:relative;
    overflow:hidden;
    background:var(--surface);
}

.hero-panel img{
    height:100%;
    object-fit:cover;

    filter:saturate(.7) brightness(.72);

    transition:.7s;
}

.hero-panel:hover img{
    transform:scale(1.04);
}

.hero-panel::after{
    content:"";

    position:absolute;
    inset:0;

    background:linear-gradient(
        transparent 20%,
        rgba(0,0,0,.85)
    );
}

.panel-content{
    position:absolute;
    z-index:2;

    left:30px;
    right:30px;
    bottom:28px;
}

.panel-content h3{
    font-family:"Space Grotesk",sans-serif;
    font-size:34px;
    line-height:.95;
    letter-spacing:-.05em;
    margin:7px 0;
}

.panel-content p{
    color:#a9adaf;
    font-size:12px;
}

.panel-number{
    position:absolute;
    top:25px;
    right:25px;
    z-index:3;

    color:#fff;
    font-family:"Space Grotesk",sans-serif;
    font-size:11px;
}

/* =========================================================
   TICKER
========================================================= */

.ticker{
    overflow:hidden;

    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);

    margin-top:12px;

    background:#0e1011;
}

.ticker-track{
    width:max-content;

    display:flex;

    animation:ticker 30s linear infinite;
}

.ticker-item{
    padding:18px 25px;

    font-family:"Space Grotesk",sans-serif;
    font-size:12px;
    font-weight:600;

    text-transform:uppercase;
    letter-spacing:.08em;

    white-space:nowrap;
}

.ticker-item span{
    color:var(--lime);
    margin:0 20px;
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
   CATEGORY SYSTEM
========================================================= */

.category-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:12px;
}

.category-card{
    min-height:250px;

    position:relative;
    overflow:hidden;

    background:var(--surface);

    cursor:pointer;
}

.category-card:first-child{
    grid-column:span 2;
}

.category-card img{
    height:100%;
    min-height:250px;

    object-fit:cover;

    opacity:.62;
    filter:saturate(.65);

    transition:.6s;
}

.category-card:hover img{
    opacity:.82;
    transform:scale(1.06);
}

.category-overlay{
    position:absolute;
    inset:0;

    display:flex;
    flex-direction:column;
    justify-content:space-between;

    padding:24px;

    background:linear-gradient(
        180deg,
        rgba(0,0,0,.05),
        rgba(0,0,0,.75)
    );
}

.category-number{
    align-self:flex-end;

    color:#aaa;
    font-family:"Space Grotesk",sans-serif;
    font-size:10px;
}

.category-name{
    font-family:"Space Grotesk",sans-serif;
    font-size:27px;
    font-weight:600;
    letter-spacing:-.05em;
}

.category-meta{
    color:#9da1a3;
    font-size:11px;
    margin-top:4px;
}

/* =========================================================
   PRODUCTS
========================================================= */

.shop-toolbar{
    display:flex;
    justify-content:space-between;
    align-items:center;

    margin-bottom:30px;
}

.filter-list{
    display:flex;
    gap:5px;
    overflow:auto;

    scrollbar-width:none;
}

.filter-list::-webkit-scrollbar{
    display:none;
}

.filter{
    border:1px solid var(--line);
    background:transparent;
    color:#858a8d;

    padding:10px 15px;

    font-family:"Space Grotesk",sans-serif;
    font-size:10px;
    font-weight:700;

    text-transform:uppercase;
    white-space:nowrap;

    transition:.2s;
}

.filter:hover,
.filter.active{
    background:var(--lime);
    border-color:var(--lime);
    color:#11140d;
}

.result-count{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
   PRODUCT GRID
========================================================= */

.products{
    display:grid;
    grid-template-columns:repeat(12,1fr);
    gap:12px;
}

.product{
    grid-column:span 3;

    background:var(--surface);

    border:1px solid transparent;

    transition:.25s;
}

.product:nth-child(3n){
    grid-column:span 4;
}

.product:nth-child(4n){
    grid-column:span 2;
}

.product:hover{
    border-color:#303538;
    transform:translateY(-3px);
}

.product-image{
    position:relative;

    height:330px;

    overflow:hidden;

    background:#17191b;
}

.product-image img{
    height:100%;
    object-fit:cover;

    transition:.5s;
}

.product:hover .product-image img{
    transform:scale(1.045);
}

.product-badge{
    position:absolute;
    top:12px;
    left:12px;

    z-index:2;

    padding:6px 9px;

    background:var(--lime);
    color:#11140d;

    font-family:"Space Grotesk",sans-serif;
    font-size:9px;
    font-weight:700;
}

.product-heart{
    position:absolute;
    top:10px;
    right:10px;

    width:36px;
    height:36px;

    border:1px solid rgba(255,255,255,.15);
    background:rgba(10,10,10,.5);
    color:#fff;

    z-index:2;

    transition:.2s;
}

.product-heart:hover,
.product-heart.liked{
    color:var(--lime);
    border-color:var(--lime);
}

.product-info{
    padding:18px;
}

.product-category{
    color:var(--muted);
    font-family:"Space Grotesk",sans-serif;
    font-size:9px;
    font-weight:600;
    letter-spacing:.1em;
    text-transform:uppercase;
}

.product-name{
    font-family:"Space Grotesk",sans-serif;
    font-size:16px;
    font-weight:500;

    margin:7px 0 18px;

    letter-spacing:-.025em;
}

.product-bottom{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.price{
    font-family:"Space Grotesk",sans-serif;
    font-size:15px;
    font-weight:700;
}

.old-price{
    color:#5d6265;
    text-decoration:line-through;
    font-size:11px;
    margin-left:5px;
}

.add-btn{
    width:38px;
    height:38px;

    border:1px solid #383d40;
    background:transparent;
    color:#fff;

    transition:.2s;
}

.add-btn:hover{
    background:var(--lime);
    color:#0b0d0c;
    border-color:var(--lime);
}

/* =========================================================
   STORY
========================================================= */

.story{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:620px;

    border:1px solid var(--line);
}

.story-image{
    overflow:hidden;
}

.story-image img{
    height:100%;
    object-fit:cover;
    filter:saturate(.65);
}

.story-content{
    padding:70px;

    display:flex;
    flex-direction:column;
    justify-content:center;

    background:var(--surface);
}

.story-content h2{
    font-family:"Space Grotesk",sans-serif;
    font-size:clamp(48px,5vw,78px);
    line-height:.9;
    letter-spacing:-.07em;

    margin:18px 0 25px;
}

.story-content h2 span{
    color:var(--lime);
}

.story-content p{
    max-width:470px;

    color:var(--muted);

    font-size:14px;

    margin-bottom:30px;
}

.story-stat-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);

    border-top:1px solid var(--line);

    padding-top:22px;

    margin-top:20px;
}

.stat strong{
    display:block;

    font-family:"Space Grotesk",sans-serif;
    font-size:25px;
}

.stat span{
    color:var(--muted);
    font-size:10px;
}

/* =========================================================
   REVIEWS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:1.5fr 1fr 1fr;
    gap:12px;
}

.review{
    min-height:290px;

    background:var(--surface);

    padding:30px;

    border:1px solid var(--line);

    display:flex;
    flex-direction:column;
    justify-content:space-between;
}

.review.featured{
    background:var(--lime);
    color:#11140d;
    border-color:var(--lime);
}

.review-stars{
    font-size:12px;
    color:var(--lime);
}

.review.featured .review-stars{
    color:#11140d;
}

.review-text{
    font-family:"Space Grotesk",sans-serif;
    font-size:25px;
    line-height:1.1;
    letter-spacing:-.035em;
}

.review-author{
    font-size:10px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:.08em;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    position:relative;
    overflow:hidden;

    background:var(--lime);
    color:#11140d;

    padding:65px;

    display:grid;
    grid-template-columns:1fr 1fr;
    gap:60px;

    align-items:center;
}

.newsletter::before{
    content:"N";

    position:absolute;

    right:-30px;
    bottom:-110px;

    font-family:"Space Grotesk",sans-serif;
    font-size:330px;
    font-weight:700;

    opacity:.08;
}

.newsletter h2{
    font-family:"Space Grotesk",sans-serif;
    font-size:clamp(45px,5vw,75px);
    line-height:.88;
    letter-spacing:-.07em;
}

.newsletter p{
    max-width:430px;

    margin-top:15px;

    font-size:13px;
}

.newsletter-form{
    position:relative;
    z-index:2;

    display:flex;

    border-bottom:2px solid #11140d;

    padding-bottom:10px;
}

.newsletter-form input{
    flex:1;

    border:0;
    outline:0;

    background:transparent;

    color:#11140d;

    font-size:14px;
}

.newsletter-form input::placeholder{
    color:#52582e;
}

.newsletter-form button{
    border:0;
    background:none;

    color:#11140d;

    font-family:"Space Grotesk",sans-serif;
    font-size:11px;
    font-weight:700;
    text-transform:uppercase;
}

/* =========================================================
   FOOTER
========================================================= */

footer{
    padding:75px 0 30px;
}

.footer-top{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-brand{
    font-family:"Space Grotesk",sans-serif;
    font-size:28px;
    font-weight:700;
    letter-spacing:-.08em;
}

.footer-brand span{
    color:var(--lime);
}

.footer-description{
    max-width:290px;

    color:var(--muted);

    margin-top:15px;

    font-size:12px;
}

.footer-column h4{
    font-family:"Space Grotesk",sans-serif;
    font-size:10px;
    text-transform:uppercase;
    letter-spacing:.12em;

    margin-bottom:18px;
}

.footer-column a{
    display:block;

    color:var(--muted);

    font-size:12px;

    margin:9px 0;

    transition:.2s;
}

.footer-column a:hover{
    color:var(--lime);
}

.footer-bottom{
    display:flex;
    justify-content:space-between;

    border-top:1px solid var(--line);

    margin-top:65px;
    padding-top:20px;

    color:var(--muted);

    font-size:10px;
}

/* =========================================================
   SEARCH
========================================================= */

.search-layer{
    position:fixed;
    inset:0;

    z-index:500;

    background:rgba(5,6,7,.88);

    backdrop-filter:blur(20px);

    display:none;

    padding:100px 20px;
}

.search-layer.open{
    display:block;
}

.search-container{
    width:min(850px,100%);
    margin:auto;
}

.search-head{
    display:flex;
    align-items:center;
    gap:15px;

    border-bottom:1px solid #444;

    padding-bottom:18px;
}

.search-head i{
    color:var(--lime);
}

.search-input{
    flex:1;

    border:0;
    outline:0;

    background:none;

    color:#fff;

    font-family:"Space Grotesk",sans-serif;
    font-size:35px;
}

.search-input::placeholder{
    color:#44484a;
}

.search-close{
    border:0;
    background:none;
    color:#fff;

    font-size:20px;
}

.search-results{
    margin-top:25px;
}

.search-result{
    display:flex;
    align-items:center;
    gap:15px;

    padding:13px 0;

    border-bottom:1px solid var(--line);
}

.search-result img{
    width:55px;
    height:55px;
    object-fit:cover;
}

.search-result-info{
    flex:1;
}

.search-result-info strong{
    font-family:"Space Grotesk",sans-serif;
    font-size:14px;
}

.search-result-info span{
    display:block;

    color:var(--muted);

    font-size:11px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.drawer-backdrop{
    position:fixed;
    inset:0;

    z-index:600;

    background:rgba(0,0,0,.55);

    display:none;
}

.drawer-backdrop.open{
    display:block;
}

.cart-drawer{
    position:fixed;

    top:0;
    right:-480px;

    z-index:601;

    width:min(480px,100%);
    height:100%;

    background:#101214;

    border-left:1px solid var(--line);

    display:flex;
    flex-direction:column;

    transition:.35s ease;
}

.cart-drawer.open{
    right:0;
}

.cart-header{
    min-height:85px;

    padding:20px 25px;

    display:flex;
    justify-content:space-between;
    align-items:center;

    border-bottom:1px solid var(--line);
}

.cart-header h2{
    font-family:"Space Grotesk",sans-serif;
    font-size:22px;
}

.cart-close{
    width:38px;
    height:38px;

    background:none;
    border:1px solid var(--line);
    color:#fff;
}

.cart-content{
    flex:1;
    overflow:auto;

    padding:25px;
}

.empty-cart{
    min-height:100%;

    display:grid;
    place-items:center;

    text-align:center;

    color:var(--muted);
}

.empty-cart i{
    font-size:35px;
    color:var(--lime);
    margin-bottom:15px;
}

.cart-item{
    display:grid;
    grid-template-columns:70px 1fr auto;

    gap:13px;

    padding:15px 0;

    border-bottom:1px solid var(--line);
}

.cart-item img{
    width:70px;
    height:75px;

    object-fit:cover;
}

.cart-item h4{
    font-family:"Space Grotesk",sans-serif;
    font-size:13px;
}

.cart-item p{
    color:var(--muted);
    font-size:11px;
    margin-top:4px;
}

.remove{
    border:0;
    background:none;
    color:#666;

    align-self:start;
}

.remove:hover{
    color:var(--red);
}

.cart-footer{
    padding:25px;

    border-top:1px solid var(--line);
}

.total{
    display:flex;
    justify-content:space-between;

    font-family:"Space Grotesk",sans-serif;

    margin-bottom:18px;
}

.checkout{
    width:100%;
    justify-content:center;
}

/* =========================================================
   TOAST
========================================================= */

.toast{
    position:fixed;

    right:25px;
    bottom:25px;

    z-index:1000;

    background:var(--lime);
    color:#10120b;

    padding:13px 18px;

    font-family:"Space Grotesk",sans-serif;
    font-size:11px;
    font-weight:700;

    transform:translateY(120px);
    opacity:0;

    transition:.3s;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
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

    .header-inner{
        grid-template-columns:auto 1fr auto;
    }

    .mobile-toggle{
        display:grid;
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

    .hero-side{
        grid-template-columns:1fr 1fr;
        grid-template-rows:360px;
    }

    .category-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .category-card:first-child{
        grid-column:span 2;
    }

    .product{
        grid-column:span 4;
    }

    .product:nth-child(3n),
    .product:nth-child(4n){
        grid-column:span 4;
    }

    .story{
        grid-template-columns:1fr;
    }

    .story-image{
        min-height:500px;
    }

    .reviews{
        grid-template-columns:1fr 1fr;
    }

    .review.featured{
        grid-column:span 2;
    }

    .footer-top{
        grid-template-columns:2fr 1fr 1fr;
    }

}

@media(max-width:650px){

    .container{
        width:calc(100% - 26px);
    }

    .section{
        padding:70px 0;
    }

    .topbar{
        font-size:8px;
    }

    .header-inner{
        min-height:65px;
    }

    .header-actions .icon-btn:first-child{
        display:none;
    }

    .hero{
        padding-top:12px;
    }

    .hero-main{
        min-height:600px;
    }

    .hero-content{
        left:22px;
        right:22px;
        bottom:28px;
    }

    .hero-title{
        font-size:58px;
    }

    .hero-description{
        font-size:13px;
    }

    .hero-actions{
        flex-direction:column;
        align-items:stretch;
    }

    .hero-actions button{
        justify-content:center;
    }

    .hero-side{
        grid-template-columns:1fr;
        grid-template-rows:280px 280px;
    }

    .panel-content{
        left:20px;
        right:20px;
        bottom:20px;
    }

    .panel-content h3{
        font-size:27px;
    }

    .section-header{
        display:block;
    }

    .section-header h2{
        margin-bottom:18px;
    }

    .category-grid{
        grid-template-columns:1fr 1fr;
        gap:8px;
    }

    .category-card,
    .category-card:first-child{
        grid-column:span 1;
        min-height:200px;
    }

    .category-card img{
        min-height:200px;
    }

    .category-name{
        font-size:19px;
    }

    .category-overlay{
        padding:15px;
    }

    .shop-toolbar{
        display:block;
    }

    .result-count{
        display:block;
        margin-top:15px;
    }

    .products{
        grid-template-columns:1fr 1fr;
        gap:8px;
    }

    .product,
    .product:nth-child(3n),
    .product:nth-child(4n){
        grid-column:span 1;
    }

    .product-image{
        height:220px;
    }

    .product-info{
        padding:13px;
    }

    .product-name{
        font-size:13px;
    }

    .price{
        font-size:13px;
    }

    .add-btn{
        width:32px;
        height:32px;
    }

    .story-image{
        min-height:350px;
    }

    .story-content{
        padding:35px 25px;
    }

    .story-stat-grid{
        gap:10px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .review.featured{
        grid-column:auto;
    }

    .review-text{
        font-size:22px;
    }

    .newsletter{
        padding:40px 25px;
        grid-template-columns:1fr;
        gap:35px;
    }

    .footer-top{
        grid-template-columns:1fr 1fr;
        gap:35px 20px;
    }

    .footer-top > div:first-child{
        grid-column:span 2;
    }

    .footer-bottom{
        display:block;
    }

    .footer-bottom span{
        display:block;
        margin-top:8px;
    }

    .search-input{
        font-size:24px;
    }

    .mobile-nav{
        position:fixed;
        bottom:0;
        left:0;
        right:0;

        z-index:200;

        height:62px;

        display:grid;
        grid-template-columns:repeat(4,1fr);

        background:#111315;

        border-top:1px solid var(--line);
    }

    .mobile-nav button{
        border:0;
        background:none;
        color:#777c7e;

        font-size:9px;
        text-transform:uppercase;
    }

    .mobile-nav i{
        display:block;
        font-size:16px;
        margin-bottom:4px;
    }

    .mobile-nav button.active{
        color:var(--lime);
    }

    body{
        padding-bottom:62px;
    }

    .toast{
        bottom:78px;
        right:13px;
    }
}

</style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">
    Free delivery on orders over $75 — limited edition drops every week
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header class="header">

    <div class="container header-inner">

        <button class="icon-btn mobile-toggle" id="mobileToggle">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="brand">
            NEXUS<span>.</span>
        </a>

        <nav class="main-nav">

            <a href="#shop" class="active">
                Shop
            </a>

            <a href="#collections">
                Collections
            </a>

            <a href="#story">
                Journal
            </a>

            <a href="#reviews">
                Community
            </a>

        </nav>

        <div class="header-actions">

            <button class="icon-btn" id="searchBtn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="icon-btn">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="icon-btn cart-btn" id="cartBtn">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="cart-count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<!-- =========================================================
     HERO
========================================================= -->

<main>

<section class="hero">

    <div class="container hero-grid">

        <div class="hero-main">

            <img
                src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1500&q=90"
                alt="Nexus collection">

            <div class="hero-content">

                <div class="hero-index">

                    <span>
                        NEXUS / 026
                    </span>

                    <span>
                        01 — 04
                    </span>

                </div>

                <div class="label">
                    The new everyday
                </div>

                <h1 class="hero-title">
                    Objects for<br>
                    <span>better living.</span>
                </h1>

                <p class="hero-description">
                    Technology, clothing and everyday objects
                    selected for people who care about design,
                    performance and longevity.
                </p>

                <div class="hero-actions">

                    <button class="primary" id="exploreBtn">
                        Explore drop
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="secondary" id="storyBtn">
                        Our approach
                    </button>

                </div>

            </div>

        </div>


        <div class="hero-side">

            <div class="hero-panel">

                <span class="panel-number">
                    02
                </span>

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=85"
                    alt="Workspace">

                <div class="panel-content">

                    <div class="label">
                        Workspace
                    </div>

                    <h3>
                        Work<br>better.
                    </h3>

                    <p>
                        Tools designed around your day.
                    </p>

                </div>

            </div>


            <div class="hero-panel">

                <span class="panel-number">
                    03
                </span>

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=1000&q=85"
                    alt="Clothing">

                <div class="panel-content">

                    <div class="label">
                        Essentials
                    </div>

                    <h3>
                        Wear<br>often.
                    </h3>

                    <p>
                        Quiet pieces. Strong materials.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     TICKER
========================================================= -->

<div class="ticker">

    <div class="ticker-track">

        <div class="ticker-item">
            Curated daily
            <span>✦</span>
            Designed to last
            <span>✦</span>
            No unnecessary noise
            <span>✦</span>
            Better everyday objects
            <span>✦</span>
        </div>

        <div class="ticker-item">
            Curated daily
            <span>✦</span>
            Designed to last
            <span>✦</span>
            No unnecessary noise
            <span>✦</span>
            Better everyday objects
            <span>✦</span>
        </div>

    </div>

</div>


<!-- =========================================================
     COLLECTIONS
========================================================= -->

<section class="section" id="collections">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="label">
                    Explore
                </div>

                <h2>
                    Pick your<br>
                    <span>world.</span>
                </h2>

            </div>

            <p>
                Four corners of the Nexus collection.
                Start with what you need, then stay for
                what you didn't know you wanted.
            </p>

        </div>


        <div class="category-grid">

            <div class="category-card" data-filter="phones">

                <img
                    src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=1000&q=85">

                <div class="category-overlay">

                    <span class="category-number">
                        01
                    </span>

                    <div>

                        <div class="category-name">
                            Technology
                        </div>

                        <div class="category-meta">
                            Devices / 24 pieces
                        </div>

                    </div>

                </div>

            </div>


            <div class="category-card" data-filter="laptops">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85">

                <div class="category-overlay">

                    <span class="category-number">
                        02
                    </span>

                    <div>

                        <div class="category-name">
                            Workspace
                        </div>

                        <div class="category-meta">
                            Desk / 18 pieces
                        </div>

                    </div>

                </div>

            </div>


            <div class="category-card" data-filter="clothing">

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=900&q=85">

                <div class="category-overlay">

                    <span class="category-number">
                        03
                    </span>

                    <div>

                        <div class="category-name">
                            Clothing
                        </div>

                        <div class="category-meta">
                            Everyday / 42 pieces
                        </div>

                    </div>

                </div>

            </div>


            <div class="category-card" data-filter="gadgets">

                <img
                    src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85">

                <div class="category-overlay">

                    <span class="category-number">
                        04
                    </span>

                    <div>

                        <div class="category-name">
                            Audio
                        </div>

                        <div class="category-meta">
                            Sound / 16 pieces
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     SHOP
========================================================= -->

<section class="section" id="shop">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="label">
                    The current drop
                </div>

                <h2>
                    Worth<br>
                    <span>having.</span>
                </h2>

            </div>

            <p>
                No endless catalogue. Just the products
                currently earning their place in our store.
            </p>

        </div>


        <div class="shop-toolbar">

            <div class="filter-list">

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

            <div class="result-count" id="resultCount">
                8 products
            </div>

        </div>


        <div class="products" id="products"></div>

    </div>

</section>


<!-- =========================================================
     STORY
========================================================= -->

<section class="section" id="story">

    <div class="container">

        <div class="story">

            <div class="story-image">

                <img
                    src="https://images.unsplash.com/photo-1524758631624-e2822e304c36?auto=format&fit=crop&w=1200&q=85"
                    alt="Nexus workspace">

            </div>

            <div class="story-content">

                <div class="label">
                    Why Nexus
                </div>

                <h2>
                    Buy less.<br>
                    Choose <span>better.</span>
                </h2>

                <p>
                    We don't believe shopping needs to mean
                    scrolling through thousands of products.
                    Nexus is built around a smaller idea:
                    find excellent things and make them easy
                    to discover.
                </p>

                <button class="primary">
                    Read our journal
                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                </button>


                <div class="story-stat-grid">

                    <div class="stat">
                        <strong>92%</strong>
                        <span>Repeat customers</span>
                    </div>

                    <div class="stat">
                        <strong>4.9</strong>
                        <span>Average rating</span>
                    </div>

                    <div class="stat">
                        <strong>48h</strong>
                        <span>Average dispatch</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-header">

            <div>

                <div class="label">
                    Community
                </div>

                <h2>
                    People<br>
                    <span>get it.</span>
                </h2>

            </div>

        </div>


        <div class="reviews">

            <article class="review featured">

                <div class="review-stars">
                    ★★★★★
                </div>

                <div class="review-text">
                    “The rare online store where
                    I actually want almost everything
                    on the page.”
                </div>

                <div class="review-author">
                    Maya R. / Verified buyer
                </div>

            </article>


            <article class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <div class="review-text">
                    “Beautiful products.
                    Zero unnecessary clutter.”
                </div>

                <div class="review-author">
                    Daniel K.
                </div>

            </article>


            <article class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <div class="review-text">
                    “Feels more like a magazine
                    than an online shop.”
                </div>

                <div class="review-author">
                    Sophie M.
                </div>

            </article>

        </div>

    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>

                <div class="label" style="color:#11140d">
                    The signal
                </div>

                <h2>
                    Good things.<br>
                    No spam.
                </h2>

                <p>
                    New drops, product stories and occasional
                    member-only offers. That's it.
                </p>

            </div>


            <form class="newsletter-form" id="newsletterForm">

                <input
                    id="email"
                    type="email"
                    placeholder="your@email.com"
                    required>

                <button type="submit">
                    Join Nexus
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-top">

            <div>

                <div class="footer-brand">
                    NEXUS<span>.</span>
                </div>

                <p class="footer-description">
                    A considered marketplace for technology,
                    clothing and objects made for everyday life.
                </p>

            </div>


            <div class="footer-column">

                <h4>
                    Explore
                </h4>

                <a href="#shop">New drop</a>
                <a href="#collections">Collections</a>
                <a href="#story">Journal</a>
                <a href="#reviews">Community</a>

            </div>


            <div class="footer-column">

                <h4>
                    Support
                </h4>

                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact</a>
                <a href="#">FAQ</a>

            </div>


            <div class="footer-column">

                <h4>
                    Social
                </h4>

                <a href="#">Instagram</a>
                <a href="#">Pinterest</a>
                <a href="#">X / Twitter</a>
                <a href="#">YouTube</a>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © <span id="year"></span> NEXUS
            </span>

            <span>
                Built for better choices.
            </span>

        </div>

    </div>

</footer>


<!-- =========================================================
     SEARCH
========================================================= -->

<div class="search-layer" id="searchLayer">

    <div class="search-container">

        <div class="search-head">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                class="search-input"
                id="searchInput"
                placeholder="Search the collection..."
                type="search">

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


<!-- =========================================================
     CART
========================================================= -->

<div
    class="drawer-backdrop"
    id="drawerBackdrop">
</div>


<aside
    class="cart-drawer"
    id="cartDrawer">

    <div class="cart-header">

        <div>

            <div class="label">
                Your selection
            </div>

            <h2>
                Shopping bag
            </h2>

        </div>

        <button
            class="cart-close"
            id="cartClose">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-content"
        id="cartContent">

        <div class="empty-cart">

            <div>

                <i class="fa-solid fa-bag-shopping"></i>

                <p>
                    Your bag is empty.
                </p>

                <small>
                    Add something worth having.
                </small>

            </div>

        </div>

    </div>


    <div class="cart-footer">

        <div class="total">

            <span>
                Total
            </span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button class="primary checkout">
            Continue to checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- =========================================================
     TOAST
========================================================= -->

<div
    class="toast"
    id="toast">
</div>


<!-- =========================================================
     MOBILE NAV
========================================================= -->

<div class="mobile-nav">

    <button
        class="active"
        onclick="window.scrollTo({top:0,behavior:'smooth'})">

        <i class="fa-solid fa-house"></i>
        Home

    </button>

    <button onclick="document.getElementById('shop').scrollIntoView({behavior:'smooth'})">

        <i class="fa-solid fa-grid-2"></i>
        Shop

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
        name:"iPhone 14 Pro Max",
        category:"phones",
        categoryName:"Technology",
        price:1099,
        oldPrice:1199,
        badge:"NEW",
        image:"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:2,
        name:'MacBook Pro 14"',
        category:"laptops",
        categoryName:"Workspace",
        price:1999,
        image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:3,
        name:"Apple Watch",
        category:"accessories",
        categoryName:"Accessories",
        price:349,
        oldPrice:399,
        badge:"-15%",
        image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:4,
        name:"Air Max 270",
        category:"footwear",
        categoryName:"Footwear",
        price:150,
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:5,
        name:"Sony A7 IV",
        category:"gadgets",
        categoryName:"Audio & Tech",
        price:2499,
        badge:"EDITOR PICK",
        image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:6,
        name:"Everyday Backpack",
        category:"accessories",
        categoryName:"Accessories",
        price:79,
        oldPrice:99,
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:7,
        name:"Minimal Sneakers",
        category:"footwear",
        categoryName:"Footwear",
        price:129,
        image:"https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:8,
        name:"Studio Headphones",
        category:"gadgets",
        categoryName:"Audio",
        price:399,
        badge:"BESTSELLER",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart = [];


/* =========================================================
   ELEMENTS
========================================================= */

const productsEl =
    document.getElementById("products");

const cartCount =
    document.getElementById("cartCount");

const cartContent =
    document.getElementById("cartContent");

const cartTotal =
    document.getElementById("cartTotal");

const resultCount =
    document.getElementById("resultCount");

const toast =
    document.getElementById("toast");


/* =========================================================
   TOAST
========================================================= */

let toastTimer;

function showToast(message){

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(
        () => toast.classList.remove("show"),
        2200
    );

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list){

    productsEl.innerHTML = "";

    resultCount.textContent =
        `${list.length} product${list.length === 1 ? "" : "s"}`;


    if(!list.length){

        productsEl.innerHTML = `

            <div style="
                grid-column:1/-1;
                padding:80px 20px;
                text-align:center;
                color:#777;
            ">

                <i
                    class="fa-solid fa-box-open"
                    style="
                        font-size:35px;
                        color:#d7ff42;
                        margin-bottom:15px;
                    ">
                </i>

                <h3 style="
                    color:#fff;
                    font-family:'Space Grotesk';
                    margin-bottom:8px;
                ">
                    Nothing here yet
                </h3>

                <p>
                    Try another category.
                </
