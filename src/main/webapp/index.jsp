<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Curated Living</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@400;500;600;700&display=swap');

:root{
    --bg:#08090b;
    --surface:#101216;
    --surface2:#17191e;
    --surface3:#20232a;
    --text:#f5f5f2;
    --muted:#92959e;
    --border:rgba(255,255,255,.09);
    --accent:#c8ff45;
    --white:#fff;
    --max:1380px;
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
    background:var(--bg);
    color:var(--text);
    font-family:"DM Sans",sans-serif;
    overflow-x:hidden;
}

body:before{
    content:"";
    position:fixed;
    width:500px;
    height:500px;
    left:-250px;
    top:200px;
    background:rgba(200,255,69,.055);
    filter:blur(120px);
    border-radius:50%;
    pointer-events:none;
    z-index:-1;
}

body:after{
    content:"";
    position:fixed;
    width:500px;
    height:500px;
    right:-250px;
    top:900px;
    background:rgba(100,255,210,.04);
    filter:blur(120px);
    border-radius:50%;
    pointer-events:none;
    z-index:-1;
}

a{
    color:inherit;
    text-decoration:none;
}

button,
input,
select{
    font:inherit;
}

button{
    cursor:pointer;
}

.container{
    width:min(var(--max),calc(100% - 48px));
    margin:auto;
}

/* =====================================
   NAVIGATION
===================================== */

.nav-wrapper{
    position:fixed;
    width:100%;
    top:18px;
    z-index:1000;
}

.nav{
    width:min(1250px,calc(100% - 30px));
    margin:auto;
    height:62px;
    padding:8px 10px 8px 18px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    background:rgba(9,10,13,.78);
    backdrop-filter:blur(25px);
    -webkit-backdrop-filter:blur(25px);

    border:1px solid var(--border);
    border-radius:100px;

    box-shadow:0 20px 60px rgba(0,0,0,.3);
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;

    font-family:"Space Grotesk";
    font-weight:700;
    letter-spacing:-.04em;
}

.logo-icon{
    width:36px;
    height:36px;

    border-radius:50%;

    background:var(--accent);
    color:#050505;

    display:grid;
    place-items:center;

    font-weight:800;
}

.nav-links{
    display:flex;
    align-items:center;
    gap:30px;

    color:#a9abb2;
    font-size:13px;
}

.nav-links a{
    transition:.25s;
}

.nav-links a:hover{
    color:#fff;
}

.nav-actions{
    display:flex;
    align-items:center;
    gap:7px;
}

.icon-button{
    width:40px;
    height:40px;

    display:grid;
    place-items:center;

    border:1px solid var(--border);
    border-radius:50%;

    color:#fff;
    background:rgba(255,255,255,.04);

    transition:.25s;
}

.icon-button:hover{
    background:#fff;
    color:#000;
    transform:translateY(-2px);
}

.cart-button{
    position:relative;
}

.cart-count{
    position:absolute;
    width:17px;
    height:17px;

    right:-2px;
    top:-3px;

    display:grid;
    place-items:center;

    background:var(--accent);
    color:#000;

    border-radius:50%;
    font-size:9px;
    font-weight:800;
}

/* =====================================
   HERO
===================================== */

.hero{
    min-height:100vh;
    padding:145px 0 70px;

    display:flex;
    align-items:center;
}

.hero-grid{
    display:grid;
    grid-template-columns:1.05fr .95fr;
    gap:18px;
}

.hero-left{
    min-height:650px;

    padding:70px;

    display:flex;
    flex-direction:column;
    justify-content:center;

    position:relative;
    overflow:hidden;

    border:1px solid var(--border);
    border-radius:34px;

    background:
        radial-gradient(
            circle at 80% 15%,
            rgba(200,255,69,.10),
            transparent 30%
        ),
        linear-gradient(
            145deg,
            #14161b,
            #090a0d
        );
}

.eyebrow{
    width:max-content;

    padding:7px 11px;

    border:1px solid var(--border);
    border-radius:100px;

    color:var(--accent);

    font-size:10px;
    text-transform:uppercase;
    letter-spacing:.16em;

    margin-bottom:25px;
}

.hero-title{
    font-family:"Space Grotesk";

    font-size:clamp(58px,7vw,110px);
    line-height:.87;

    letter-spacing:-.075em;
}

.hero-title span{
    color:var(--accent);
}

.hero-description{
    max-width:500px;

    margin-top:30px;

    color:var(--muted);

    line-height:1.75;
    font-size:15px;
}

.hero-buttons{
    display:flex;
    gap:10px;

    margin-top:32px;

    flex-wrap:wrap;
}

.primary-button{
    padding:14px 20px;

    border:0;
    border-radius:100px;

    background:#fff;
    color:#000;

    font-size:13px;
    font-weight:700;

    transition:.25s;
}

.primary-button:hover{
    transform:translateY(-3px);
    box-shadow:0 15px 40px rgba(255,255,255,.15);
}

.secondary-button{
    padding:14px 20px;

    border:1px solid var(--border);
    border-radius:100px;

    background:transparent;
    color:#fff;

    font-size:13px;
}

.secondary-button:hover{
    background:#fff;
    color:#000;
}

.hero-circle{
    position:absolute;

    width:360px;
    height:360px;

    right:-100px;
    bottom:-140px;

    border:1px solid rgba(200,255,69,.2);

    border-radius:50%;
}

.hero-circle:before{
    content:"";

    position:absolute;

    inset:45px;

    border:1px solid rgba(200,255,69,.13);

    border-radius:50%;
}

.hero-circle:after{
    content:"";

    position:absolute;

    inset:90px;

    border:1px solid rgba(200,255,69,.1);

    border-radius:50%;
}

/* HERO VISUAL */

.hero-right{
    min-height:650px;

    position:relative;
    overflow:hidden;

    border:1px solid var(--border);
    border-radius:34px;

    background:
        radial-gradient(
            circle at 50% 45%,
            rgba(255,255,255,.06),
            transparent 40%
        ),
        #101216;
}

.hero-orbit{
    position:absolute;

    width:520px;
    height:520px;

    top:50%;
    left:50%;

    transform:translate(-50%,-50%);

    border:1px solid rgba(255,255,255,.07);
    border-radius:50%;
}

.hero-orbit:before{
    content:"";

    position:absolute;
    inset:55px;

    border:1px solid rgba(255,255,255,.06);
    border-radius:50%;
}

.hero-product{
    position:absolute;

    width:360px;
    height:360px;

    left:50%;
    top:50%;

    transform:translate(-50%,-50%);

    border-radius:50%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #fff,
            #c9cbcb 27%,
            #686c6d 58%,
            #121416 78%
        );

    box-shadow:
        35px 45px 90px rgba(0,0,0,.65),
        inset -40px -45px 60px rgba(0,0,0,.35);

    animation:heroFloat 6s ease-in-out infinite;
}

.hero-product:after{
    content:"";

    position:absolute;

    width:150px;
    height:150px;

    left:55px;
    top:50px;

    border-radius:50%;

    background:rgba(255,255,255,.35);

    filter:blur(35px);
}

@keyframes heroFloat{

    0%,100%{
        transform:translate(-50%,-50%) rotate(-3deg);
    }

    50%{
        transform:translate(-50%,-56%) rotate(3deg);
    }
}

.hero-product-label{
    position:absolute;

    bottom:25px;
    left:25px;

    padding:15px 18px;

    background:rgba(0,0,0,.4);

    border:1px solid var(--border);
    border-radius:17px;

    backdrop-filter:blur(15px);
}

.hero-product-label small{
    display:block;

    color:var(--muted);

    font-size:10px;

    margin-bottom:5px;
}

.hero-product-label strong{
    font-family:"Space Grotesk";
}

/* =====================================
   MARQUEE
===================================== */

.marquee{
    overflow:hidden;

    border-top:1px solid var(--border);
    border-bottom:1px solid var(--border);

    padding:19px 0;

    white-space:nowrap;
}

.marquee-track{
    display:inline-flex;
    align-items:center;

    gap:40px;

    animation:marquee 28s linear infinite;
}

.marquee span{
    color:#686b73;

    font-family:"Space Grotesk";

    font-size:12px;

    letter-spacing:.17em;
    text-transform:uppercase;
}

.marquee .dot{
    color:var(--accent);
}

@keyframes marquee{
    from{
        transform:translateX(0);
    }

    to{
        transform:translateX(-50%);
    }
}

/* =====================================
   SECTIONS
===================================== */

.section{
    padding:120px 0;
}

.section-heading{
    display:flex;
    align-items:flex-end;
    justify-content:space-between;

    gap:30px;

    margin-bottom:42px;
}

.section-number{
    color:var(--accent);

    font-size:10px;

    text-transform:uppercase;
    letter-spacing:.15em;

    margin-bottom:12px;
}

.section-title{
    font-family:"Space Grotesk";

    font-size:clamp(42px,5vw,70px);

    line-height:.92;

    letter-spacing:-.06em;
}

.section-description{
    max-width:430px;

    color:var(--muted);

    line-height:1.7;

    font-size:14px;
}

/* =====================================
   COLLECTIONS
===================================== */

.collection-grid{
    display:grid;

    grid-template-columns:repeat(3,1fr);

    gap:16px;
}

.collection{
    min-height:450px;

    position:relative;
    overflow:hidden;

    padding:25px;

    border:1px solid var(--border);
    border-radius:25px;

    background:#111318;

    transition:.35s;
}

.collection:hover{
    transform:translateY(-7px);
    border-color:rgba(200,255,69,.25);
}

.collection:nth-child(2){
    min-height:520px;
}

.collection:nth-child(3){
    min-height:480px;
}

.collection-visual{
    position:absolute;

    width:270px;
    height:270px;

    right:-50px;
    top:50%;

    transform:translateY(-50%) rotate(15deg);

    border-radius:45%;

    background:
        linear-gradient(
            145deg,
            #f1f2ef,
            #85898b 45%,
            #292b2d
        );

    box-shadow:30px 35px 60px rgba(0,0,0,.5);
}

.collection:nth-child(2) .collection-visual{
    border-radius:50%;

    background:
        linear-gradient(
            145deg,
            #d8ff74,
            #71833c,
            #20251a
        );
}

.collection:nth-child(3) .collection-visual{
    transform:translateY(-50%) rotate(-15deg);

    background:
        linear-gradient(
            145deg,
            #e9e9e9,
            #6e7072,
            #202124
        );
}

.collection-info{
    position:absolute;

    bottom:25px;
    left:25px;
}

.collection-info h3{
    font-family:"Space Grotesk";

    font-size:30px;

    letter-spacing:-.04em;
}

.collection-info p{
    color:var(--muted);

    font-size:13px;

    margin-top:6px;
}

/* =====================================
   SHOP
===================================== */

.shop-toolbar{
    display:flex;

    align-items:center;
    justify-content:space-between;

    gap:20px;

    margin-bottom:28px;

    flex-wrap:wrap;
}

.filters{
    display:flex;

    gap:7px;

    flex-wrap:wrap;
}

.filter{
    border:1px solid var(--border);

    background:transparent;

    color:#999ca4;

    padding:9px 15px;

    border-radius:100px;

    font-size:11px;

    transition:.2s;
}

.filter:hover,
.filter.active{
    background:var(--accent);

    border-color:var(--accent);

    color:#000;
}

.sort{
    border:1px solid var(--border);

    border-radius:100px;

    padding:10px 15px;

    background:var(--surface);

    color:#fff;

    outline:none;
}

/* =====================================
   PRODUCT GRID
===================================== */

.products{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:17px;
}

.product{
    min-width:0;

    opacity:1 !important;
    visibility:visible !important;

    transform:none !important;

    transition:transform .3s ease;
}

.product:hover{
    transform:translateY(-4px) !important;
}

.product-image{
    width:100%;

    aspect-ratio:1 / 1.1;

    position:relative;

    overflow:hidden;

    border:1px solid var(--border);

    border-radius:23px;

    background:#15171c;
}

.product-image img{
    width:100%;
    height:100%;

    display:block;

    object-fit:cover;

    transition:
        transform .5s ease,
        filter .5s ease;
}

.product:hover .product-image img{
    transform:scale(1.06);
}

.product-tag{
    position:absolute;

    left:12px;
    top:12px;

    z-index:3;

    padding:6px 8px;

    border-radius:7px;

    background:var(--accent);

    color:#000;

    font-size:9px;

    text-transform:uppercase;

    letter-spacing:.1em;

    font-weight:800;
}

.product-wishlist{
    position:absolute;

    right:12px;
    top:12px;

    z-index:3;

    width:35px;
    height:35px;

    border:1px solid var(--border);

    border-radius:50%;

    background:rgba(0,0,0,.45);

    color:#fff;

    backdrop-filter:blur(10px);

    transition:.2s;
}

.product-wishlist:hover{
    background:#fff;
    color:#000;
}

.product-info{
    padding:15px 3px 0;

    display:block !important;

    opacity:1 !important;
    visibility:visible !important;
}

.product-top{
    display:flex;

    justify-content:space-between;

    gap:10px;
}

.product-name{
    font-family:"Space Grotesk";

    font-size:15px;

    font-weight:600;
}

.product-price{
    font-weight:700;

    font-size:14px;

    white-space:nowrap;
}

.product-category{
    margin-top:5px;

    color:var(--muted);

    font-size:11px;
}

.add-product{
    width:100%;

    margin-top:12px;

    padding:11px;

    border:1px solid var(--border);

    border-radius:12px;

    background:transparent;

    color:#fff;

    font-size:11px;

    transition:.25s;
}

.add-product:hover{
    background:#fff;

    color:#000;
}

/* =====================================
   STORY
===================================== */

.story-grid{
    display:grid;

    grid-template-columns:.85fr 1.15fr;

    gap:17px;
}

.story-image{
    min-height:620px;

    position:relative;

    overflow:hidden;

    border:1px solid var(--border);

    border-radius:28px;

    background:
        radial-gradient(
            circle at 25% 30%,
            rgba(200,255,69,.13),
            transparent 30%
        ),
        #111318;
}

.story-object{
    position:absolute;

    width:260px;
    height:460px;

    left:50%;
    top:50%;

    transform:translate(-50%,-50%) rotate(17deg);

    border-radius:140px;

    background:
        linear-gradient(
            120deg,
            #eeeeeb,
            #999d9e 40%,
            #333638
        );

    box-shadow:
        35px 45px 80px rgba(0,0,0,.6);
}

.story-object:after{
    content:"";

    position:absolute;

    width:100px;
    height:100px;

    top:70px;
    left:45px;

    border-radius:50%;

    background:rgba(255,255,255,.35);

    filter:blur(25px);
}

.story-content{
    min-height:620px;

    padding:60px;

    display:flex;

    flex-direction:column;

    justify-content:center;

    border:1px solid var(--border);

    border-radius:28px;

    background:var(--surface);
}

.story-content h2{
    font-family:"Space Grotesk";

    font-size:clamp(45px,5vw,72px);

    line-height:.93;

    letter-spacing:-.06em;
}

.story-content h2 span{
    color:var(--accent);
}

.story-content p{
    max-width:540px;

    margin:25px 0;

    color:var(--muted);

    line-height:1.8;

    font-size:14px;
}

.features{
    display:grid;

    grid-template-columns:repeat(2,1fr);

    gap:20px;

    margin-top:10px;
}

.feature{
    border-top:1px solid var(--border);

    padding-top:14px;
}

.feature strong{
    display:block;

    font-size:13px;

    margin-bottom:5px;
}

.feature span{
    color:var(--muted);

    font-size:11px;
}

/* =====================================
   DEAL
===================================== */

.deal{
    padding:60px;

    display:flex;

    justify-content:space-between;
    align-items:center;

    gap:40px;

    overflow:hidden;

    border:1px solid var(--border);

    border-radius:30px;

    background:
        radial-gradient(
            circle at 85% 50%,
            rgba(200,255,69,.14),
            transparent 27%
        ),
        #111318;
}

.deal-title{
    font-family:"Space Grotesk";

    font-size:clamp(43px,5vw,72px);

    line-height:.9;

    letter-spacing:-.06em;
}

.deal-title span{
    color:var(--accent);
}

.deal-description{
    max-width:520px;

    margin-top:18px;

    color:var(--muted);

    line-height:1.7;

    font-size:13px;
}

.timer{
    display:flex;

    gap:9px;

    flex-shrink:0;
}

.timer-box{
    width:78px;
    height:88px;

    display:flex;

    align-items:center;
    justify-content:center;

    text-align:center;

    border:1px solid var(--border);

    border-radius:17px;

    background:rgba(0,0,0,.3);
}

.timer-box strong{
    display:block;

    font-family:"Space Grotesk";

    font-size:27px;
}

.timer-box span{
    display:block;

    margin-top:3px;

    color:var(--muted);

    font-size:8px;

    text-transform:uppercase;
}

/* =====================================
   REVIEWS
===================================== */

.reviews{
    display:grid;

    grid-template-columns:repeat(3,1fr);

    gap:16px;
}

.review{
    padding:28px;

    border:1px solid var(--border);

    border-radius:22px;

    background:var(--surface);
}

.stars{
    color:var(--accent);

    letter-spacing:4px;

    margin-bottom:20px;
}

.review-text{
    color:#d1d2d5;

    font-size:13px;

    line-height:1.75;
}

.reviewer{
    display:flex;

    align-items:center;

    gap:11px;

    margin-top:25px;
}

.avatar{
    width:40px;
    height:40px;

    border-radius:50%;

    background:
        linear-gradient(
            145deg,
            #d8d8d8,
            #4c4e50
        );
}

.reviewer strong{
    display:block;

    font-size:12px;
}

.reviewer span{
    display:block;

    color:var(--muted);

    font-size:10px;

    margin-top:3px;
}

/* =====================================
   NEWSLETTER
===================================== */

.newsletter{
    padding:100px 20px;

    text-align:center;

    border-top:1px solid var(--border);
    border-bottom:1px solid var(--border);
}

.newsletter h2{
    font-family:"Space Grotesk";

    font-size:clamp(45px,6vw,80px);

    line-height:.9;

    letter-spacing:-.06em;
}

.newsletter p{
    max-width:500px;

    margin:20px auto 30px;

    color:var(--muted);

    line-height:1.7;

    font-size:13px;
}

.email-form{
    max-width:500px;

    margin:auto;

    display:flex;

    padding:5px;

    border:1px solid var(--border);

    border-radius:100px;

    background:var(--surface);
}

.email-form input{
    flex:1;

    min-width:0;

    border:0;
    outline:0;

    background:transparent;

    color:#fff;

    padding:0 17px;
}

.email-form button{
    border:0;

    padding:13px 20px;

    border-radius:100px;

    background:var(--accent);

    color:#000;

    font-size:12px;

    font-weight:800;
}

/* =====================================
   FOOTER
===================================== */

footer{
    padding:70px 0 30px;
}

.footer-grid{
    display:grid;

    grid-template-columns:1.5fr repeat(3,1fr);

    gap:40px;
}

.footer-description{
    max-width:300px;

    margin-top:18px;

    color:var(--muted);

    line-height:1.7;

    font-size:12px;
}

.footer-title{
    margin-bottom:18px;

    font-size:10px;

    letter-spacing:.14em;

    text-transform:uppercase;
}

.footer-links a{
    display:block;

    margin-bottom:11px;

    color:var(--muted);

    font-size:12px;

    transition:.2s;
}

.footer-links a:hover{
    color:#fff;
}

.footer-bottom{
    display:flex;

    justify-content:space-between;

    gap:20px;

    margin-top:60px;

    padding-top:25px;

    border-top:1px solid var(--border);

    color:#62656c;

    font-size:10px;
}

/* =====================================
   CART
===================================== */

.cart-overlay{
    position:fixed;

    inset:0;

    z-index:1900;

    background:rgba(0,0,0,.65);

    backdrop-filter:blur(5px);

    opacity:0;

    pointer-events:none;

    transition:.3s;
}

.cart-overlay.open{
    opacity:1;

    pointer-events:auto;
}

.cart{
    position:fixed;

    z-index:2000;

    top:0;
    right:-460px;

    width:min(440px,100%);

    height:100vh;

    padding:28px;

    display:flex;

    flex-direction:column;

    background:#101216;

    border-left:1px solid var(--border);

    transition:.4s cubic-bezier(.77,0,.18,1);
}

.cart.open{
    right:0;
}

.cart-header{
    display:flex;

    align-items:center;

    justify-content:space-between;

    padding-bottom:20px;

    border-bottom:1px solid var(--border);
}

.cart-header h3{
    font-family:"Space Grotesk";

    font-size:25px;
}

.cart-items{
    flex:1;

    overflow-y:auto;

    padding:20px 0;
}

.empty-cart{
    height:100%;

    display:grid;

    place-items:center;

    text-align:center;

    color:var(--muted);
}

.empty-icon{
    font-size:42px;

    margin-bottom:12px;
}

.cart-item{
    display:flex;

    justify-content:space-between;

    align-items:center;

    gap:15px;

    padding:15px 0;

    border-bottom:1px solid var(--border);
}

.cart-item-name{
    font-size:13px;

    font-weight:600;
}

.cart-item-price{
    color:var(--muted);

    font-size:11px;

    margin-top:4px;
}

.remove-item{
    border:0;

    background:none;

    color:#777;

    font-size:18px;
}

.remove-item:hover{
    color:#fff;
}

.cart-footer{
    border-top:1px solid var(--border);

    padding-top:20px;
}

.cart-total{
    display:flex;

    justify-content:space-between;

    margin-bottom:15px;
}

.checkout{
    width:100%;

    padding:15px;

    border:0;

    border-radius:14px;

    background:var(--accent);

    color:#000;

    font-weight:800;
}

/* =====================================
   SEARCH
===================================== */

.search-overlay{
    position:fixed;

    inset:0;

    z-index:3000;

    display:flex;

    align-items:flex-start;
    justify-content:center;

    padding-top:17vh;

    background:rgba(5,6,8,.96);

    backdrop-filter:blur(25px);

    opacity:0;

    pointer-events:none;

    transition:.3s;
}

.search-overlay.open{
    opacity:1;

    pointer-events:auto;
}

.search-box{
    width:min(750px,calc(100% - 40px));
}

.search-box input{
    width:100%;

    border:0;

    border-bottom:1px solid var(--border);

    outline:0;

    background:transparent;

    color:#fff;

    font-family:"Space Grotesk";

    font-size:clamp(38px,6vw,72px);

    letter-spacing:-.05em;

    padding:15px 0;
}

.search-close{
    position:fixed;

    top:28px;
    right:28px;
}

/* =====================================
   TOAST
===================================== */

.toast{
    position:fixed;

    left:50%;
    bottom:25px;

    z-index:5000;

    transform:translate(-50%,30px);

    padding:13px 18px;

    border:1px solid var(--border);

    border-radius:100px;

    background:#16181d;

    color:#fff;

    font-size:12px;

    opacity:0;

    pointer-events:none;

    transition:.3s;

    box-shadow:0 15px 40px rgba(0,0,0,.4);
}

.toast.show{
    opacity:1;

    transform:translate(-50%,0);
}

/* =====================================
   MOBILE
===================================== */

@media(max-width:1050px){

    .nav-links{
        display:none;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-left,
    .hero-right{
        min-height:560px;
    }

    .collection-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .story-grid{
        grid-template-columns:1fr;
    }

    .story-image,
    .story-content{
        min-height:500px;
    }

    .deal{
        flex-direction:column;

        align-items:flex-start;
    }

    .footer-grid{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:650px){

    .container{
        width:calc(100% - 28px);
    }

    .nav{
        width:calc(100% - 18px);
    }

    .hero{
        padding-top:100px;
    }

    .hero-left{
        min-height:530px;

        padding:35px 25px;
    }

    .hero-title{
        font-size:61px;
    }

    .hero-right{
        min-height:430px;
    }

    .hero-product{
        width:260px;
        height:260px;
    }

    .hero-orbit{
        width:350px;
        height:350px;
    }

    .section{
        padding:80px 0;
    }

    .section-heading{
        display:block;
    }

    .section-description{
        margin-top:20px;
    }

    .collection-grid{
        grid-template-columns:1fr;
    }

    .collection,
    .collection:nth-child(2),
    .collection:nth-child(3){
        min-height:400px;
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        aspect-ratio:1 / 1;
    }

    .story-content{
        padding:35px 25px;
    }

    .features{
        gap:15px;
    }

    .deal{
        padding:35px 25px;
    }

    .timer{
        width:100%;
    }

    .timer-box{
        flex:1;
        width:auto;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .email-form{
        flex-direction:column;

        border-radius:18px;

        gap:7px;

        padding:7px;
    }

    .email-form input{
        padding:13px;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

    .footer-brand{
        grid-column:1 / -1;
    }

    .footer-bottom{
        flex-direction:column;
    }
}
</style>
</head>

<body>

<!-- =========================================
     NAVIGATION
========================================= -->

<div class="nav-wrapper">

<nav class="nav">

    <a href="#" class="logo">

        <span class="logo-icon">
            N
        </span>

        NEXUS

    </a>


    <div class="nav-links">

        <a href="#collections">
            Collections
        </a>

        <a href="#shop">
            Shop
        </a>

        <a href="#story">
            Our Story
        </a>

        <a href="#reviews">
            Reviews
        </a>

    </div>


    <div class="nav-actions">

        <button
            class="icon-button"
            onclick="openSearch()"
            aria-label="Search">

            ⌕

        </button>


        <button
            class="icon-button cart-button"
            onclick="openCart()"
            aria-label="Cart">

            🛒

            <span
                class="cart-count"
                id="cartCount">

                0

            </span>

        </button>

    </div>

</nav>

</div>


<!-- =========================================
     HERO
========================================= -->

<section class="hero">

<div class="container hero-grid">

    <div class="hero-left">

        <div class="eyebrow">
            New collection · 2026
        </div>


        <h1 class="hero-title">

            Objects<br>

            for <span>tomorrow.</span>

        </h1>


        <p class="hero-description">

            Curated objects, refined essentials and considered
            pieces designed for a more intentional way of living.

        </p>


        <div class="hero-buttons">

            <a
                href="#shop"
                class="primary-button">

                Explore collection →

            </a>


            <a
                href="#story"
                class="secondary-button">

                Discover Nexus

            </a>

        </div>


        <div class="hero-circle"></div>

    </div>


    <div class="hero-right">

        <div class="hero-orbit"></div>

        <div class="hero-product"></div>


        <div class="hero-product-label">

            <small>
                Featured object
            </small>

            <strong>
                Form 01 — $148
            </strong>

        </div>

    </div>

</div>

</section>


<!-- =========================================
     MARQUEE
========================================= -->

<div class="marquee">

<div class="marquee-track">

    <span>
        Designed with intention
    </span>

    <span class="dot">✦</span>

    <span>
        Objects for modern living
    </span>

    <span class="dot">✦</span>

    <span>
        Less noise. More meaning.
    </span>

    <span class="dot">✦</span>


    <span>
        Designed with intention
    </span>

    <span class="dot">✦</span>

    <span>
        Objects for modern living
    </span>

    <span class="dot">✦</span>

    <span>
        Less noise. More meaning.
    </span>

    <span class="dot">✦</span>

</div>

</div>


<!-- =========================================
     COLLECTIONS
========================================= -->

<section
    class="section"
    id="collections">

<div class="container">

    <div class="section-heading">

        <div>

            <div class="section-number">
                01 — Collections
            </div>

            <h2 class="section-title">
                Find your<br>
                frequency.
            </h2>

        </div>


        <p class="section-description">

            Three carefully considered collections built around
            function, material and the quiet details that make
            everyday objects feel extraordinary.

        </p>

    </div>


    <div class="collection-grid">


        <a
            href="#shop"
            class="collection">

            <div class="collection-visual"></div>

            <div class="collection-info">

                <h3>
                    Objects
                </h3>

                <p>
                    Everyday pieces, elevated.
                </p>

            </div>

        </a>


        <a
            href="#shop"
            class="collection">

            <div class="collection-visual"></div>

            <div class="collection-info">

                <h3>
                    Living
                </h3>

                <p>
                    Spaces made intentional.
                </p>

            </div>

        </a>


        <a
            href="#shop"
            class="collection">

            <div class="collection-visual"></div>

            <div class="collection-info">

                <h3>
                    Carry
                </h3>

                <p>
                    Move through the world better.
                </p>

            </div>

        </a>

    </div>

</div>

</section>


<!-- =========================================
     SHOP
========================================= -->

<section
    class="section"
    id="shop">

<div class="container">

    <div class="section-heading">

        <div>

            <div class="section-number">
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


    <!-- TOOLBAR -->

    <div class="shop-toolbar">

        <div class="filters">

            <button
                class="filter active"
                onclick="filterProducts('all',this)">

                All

            </button>


            <button
                class="filter"
                onclick="filterProducts('objects',this)">

                Objects

            </button>


            <button
                class="filter"
                onclick="filterProducts('living',this)">

                Living

            </button>


            <button
                class="filter"
                onclick="filterProducts('carry',this)">

                Carry

            </button>

        </div>


        <select
            class="sort"
            id="sortProducts"
            onchange="sortProducts()">

            <option value="featured">
                Featured
            </option>

            <option value="low">
                Price: Low to high
            </option>

            <option value="high">
                Price: High to low
            </option>

        </select>

    </div>


    <!-- PRODUCTS -->

    <div
        class="products"
        id="products">


        <!-- PRODUCT 1 -->

        <article
            class="product"
            data-category="objects"
            data-price="148">

            <div class="product-image">

                <span class="product-tag">
                    New
                </span>


                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=900&q=85"
                    alt="Form 01">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Form 01',148)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 2 -->

        <article
            class="product"
            data-category="living"
            data-price="220">

            <div class="product-image">

                <span class="product-tag">
                    Best seller
                </span>


                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=900&q=85"
                    alt="Halo Light">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Halo Light',220)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 3 -->

        <article
            class="product"
            data-category="carry"
            data-price="185">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=85"
                    alt="Mono Pack">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Mono Pack',185)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 4 -->

        <article
            class="product"
            data-category="objects"
            data-price="96">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=900&q=85"
                    alt="Arc Tray">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Arc Tray',96)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 5 -->

        <article
            class="product"
            data-category="living"
            data-price="124">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?auto=format&fit=crop&w=900&q=85"
                    alt="Vessel 02">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Vessel 02',124)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 6 -->

        <article
            class="product"
            data-category="carry"
            data-price="72">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=900&q=85"
                    alt="Field Bottle">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Field Bottle',72)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 7 -->

        <article
            class="product"
            data-category="objects"
            data-price="164">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1501139083538-0139583c060f?auto=format&fit=crop&w=900&q=85"
                    alt="Stone Clock">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Stone Clock',164)">

                    Add to cart

                </button>

            </div>

        </article>


        <!-- PRODUCT 8 -->

        <article
            class="product"
            data-category="living"
            data-price="390">

            <div class="product-image">

                <button
                    class="product-wishlist"
                    onclick="toggleWishlist(this)">

                    ♡

                </button>


                <img
                    src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=900&q=85"
                    alt="Soft Chair">

            </div>


            <div class="product-info">

                <div class="product-top">

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


                <button
                    class="add-product"
                    onclick="addToCart('Soft Chair',390)">

                    Add to cart

                </button>

            </div>

        </article>

    </div>

</div>

</section>


<!-- =========================================
     STORY
========================================= -->

<section
    class="section"
    id="story">

<div class="container">

    <div class="story-grid">


        <div class="story-image">

            <div class="story-object"></div>

        </div>


        <div class="story-content">

            <div class="section-number">
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

                    <strong>
                        01 — Considered
                    </strong>

                    <span>
                        Every detail has a reason.
                    </span>

                </div>


                <div class="feature">

                    <strong>
                        02 — Durable
                    </strong>

                    <span>
                        Made for years, not seasons.
                    </span>

                </div>


                <div class="feature">

                    <strong>
                        03 — Responsible
                    </strong>

                    <span>
                        Materials chosen consciously.
                    </span>

                </div>


                <div class="feature">

                    <strong>
                        04 — Useful
                    </strong>

                    <span>
                        Beauty never replaces function.
                    </span>

                </div>

            </div>

        </div>

    </div>

</div>

</section>


<!-- =========================================
     DEAL
========================================= -->

<section class="section">

<div class="container">

    <div class="deal">

        <div>

            <div class="section-number">
                Limited drop
            </div>


            <h2 class="deal-title">

                20% off<br>

                <span>everything.</span>

            </h2>


            <p class="deal-description">

                A limited-time opportunity to bring something
                considered into your space.

            </p>

        </div>


        <div class="timer">

            <div class="timer-box">

                <div>

                    <strong id="days">
                        04
                    </strong>

                    <span>
                        Days
                    </span>

                </div>

            </div>


            <div class="timer-box">

                <div>

                    <strong id="hours">
                        12
                    </strong>

                    <span>
                        Hours
                    </span>

                </div>

            </div>


            <div class="timer-box">

                <div>

                    <strong id="minutes">
                        36
                    </strong>

                    <span>
                        Minutes
                    </span>

                </div>

            </div>


            <div class="timer-box">

                <div>

                    <strong id="seconds">
                        42
                    </strong>

                    <span>
                        Seconds
                    </span>

                </div>

            </div>

        </div>

    </div>

</div>

</section>


<!-- =========================================
     REVIEWS
========================================= -->

<section
    class="section"
    id="reviews">

<div class="container">

    <div class="section-heading">

        <div>

            <div class="section-number">
                04 — People
            </div>

            <h2 class="section-title">
                Loved by<br>
                the curious.
            </h2>

        </div>

    </div>


    <div class="reviews">


        <article class="review">

            <div class="stars">
                ★★★★★
            </div>

            <p class="review-text">

                “Nexus somehow makes ordinary objects feel
                completely new. The attention to detail is
                ridiculous.”

            </p>


            <div class="reviewer">

                <div class="avatar"></div>

                <div>

                    <strong>
                        Maya R.
                    </strong>

                    <span>
                        New York
                    </span>

                </div>

            </div>

        </article>


        <article class="review">

            <div class="stars">
                ★★★★★
            </div>

            <p class="review-text">

                “The design language is beautiful without feeling
                precious. Everything I've bought actually gets used.”

            </p>


            <div class="reviewer">

                <div class="avatar"></div>

                <div>

                    <strong>
                        Daniel K.
                    </strong>

                    <span>
                        London
                    </span>

                </div>

            </div>

        </article>


        <article class="review">

            <div class="stars">
                ★★★★★
            </div>

            <p class="review-text">

                “Exactly the kind of store I've been looking for.
                Minimal, unusual and very well made.”

            </p>


            <div class="reviewer">

                <div class="avatar"></div>

                <div>

                    <strong>
                        Sofia L.
                    </strong>

                    <span>
                        Copenhagen
                    </span>

                </div>

            </div>

        </article>

    </div>

</div>

</section>


<!-- =========================================
     NEWSLETTER
========================================= -->

<section class="newsletter">

<div class="container">

    <div class="section-number">
        Stay connected
    </div>


    <h2>
        Keep the signal.
    </h2>


    <p>

        New objects, design stories and occasional things
        worth knowing. No noise.

    </p>


    <form
        class="email-form"
        onsubmit="subscribe(event)">

        <input
            type="email"
            placeholder="Your email address"
            required>

        <button>
            Join Nexus
        </button>

    </form>

</div>

</section>


<!-- =========================================
     FOOTER
========================================= -->

<footer>

<div class="container">

    <div class="footer-grid">


        <div class="footer-brand">

            <a href="#" class="logo">

                <span class="logo-icon">
                    N
                </span>

                NEXUS

            </a>


            <p class="footer-description">

                A curated destination for objects,
                essentials and ideas for modern living.

            </p>

        </div>


        <div>

            <div class="footer-title">
                Explore
            </div>

            <div class="footer-links">

                <a href="#shop">
                    Shop
                </a>

                <a href="#collections">
                    Collections
                </a>

                <a href="#story">
                    Our Story
                </a>

                <a href="#reviews">
                    Reviews
                </a>

            </div>

        </div>


        <div>

            <div class="footer-title">
                Help
            </div>

            <div class="footer-links">

                <a href="#">
                    Shipping
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    FAQ
                </a>

                <a href="#">
                    Contact
                </a>

            </div>

        </div>


        <div>

            <div class="footer-title">
                Social
            </div>

            <div class="footer-links">

                <a href="#">
                    Instagram
                </a>

                <a href="#">
                    Pinterest
                </a>

                <a href="#">
                    TikTok
                </a>

                <a href="#">
                    Journal
                </a>

            </div>

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


<!-- =========================================
     CART OVERLAY
========================================= -->

<div
    class="cart-overlay"
    id="cartOverlay"
    onclick="closeCart()">
</div>


<!-- =========================================
     CART
========================================= -->

<aside
    class="cart"
    id="cart">

    <div class="cart-header">

        <h3>
            Your cart
        </h3>


        <button
            class="icon-button"
            onclick="closeCart()">

            ×

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">

        <div class="empty-cart">

            <div>

                <div class="empty-icon">
                    ◌
                </div>

                <p>
                    Your cart is empty.
                </p>

                <small>
                    Add something considered.
                </small>

            </div>

        </div>

    </div>


    <div class="cart-footer">

        <div class="cart-total">

            <span>
                Total
            </span>

            <strong id="cartTotal">
                $0
            </strong>

        </div>


        <button
            class="checkout"
            onclick="checkout()">

            Checkout →

        </button>

    </div>

</aside>


<!-- =========================================
     SEARCH
========================================= -->

<div
    class="search-overlay"
    id="searchOverlay">

    <button
        class="icon-button search-close"
        onclick="closeSearch()">

        ×

    </button>


    <div class="search-box">

        <input
            id="searchInput"
            type="text"
            placeholder="Search Nexus..."
            oninput="searchProducts(this.value)">

    </div>

</div>


<!-- =========================================
     TOAST
========================================= -->

<div
    class="toast"
    id="toast">

    Added to cart ✓

</div>


<script>

/* =========================================
   CART
========================================= */

let cart = [];


function addToCart(name, price){

    cart.push({
        name:name,
        price:price
    });

    updateCart();

    showToast(name + " added to cart");

    openCart();
}


function updateCart(){

    const count =
        document.getElementById("cartCount");

    const items =
        document.getElementById("cartItems");

    const total =
        document.getElementById("cartTotal");


    count.textContent = cart.length;


    if(cart.length === 0){

        items.innerHTML = `

            <div class="empty-cart">

                <div>

                    <div class="empty-icon">
                        ◌
                    </div>

                    <p>
                        Your cart is empty.
                    </p>

                    <small>
                        Add something considered.
                    </small>

                </div>

            </div>

        `;

        total.textContent = "$0";

        return;
    }


    let totalPrice = 0;

    items.innerHTML = "";


    cart.forEach((item,index)=>{

        totalPrice += item.price;


        const row =
            document.createElement("div");

        row.className = "cart-item";


        row.innerHTML = `

            <div>

                <div class="cart-item-name">
                    ${item.name}
                </div>

                <div class="cart-item-price">
                    $${item.price}
                </div>

            </div>


            <button
                class="remove-item"
                onclick="removeFromCart(${index})">

                ×

            </button>

        `;


        items.appendChild(row);

    });


    total.textContent =
        "$" + totalPrice;
}


function removeFromCart(index){

    cart.splice(index,1);

    updateCart();

}


/* =========================================
   CART OPEN / CLOSE
========================================= */

function openCart(){

    document
        .getElementById("cart")
        .classList.add("open");


    document
        .getElementById("cartOverlay")
        .classList.add("open");

}


function closeCart(){

    document
        .getElementById("cart")
        .classList.remove("open");


    document
        .getElementById("cartOverlay")
        .classList.remove("open");

}


/* =========================================
   SEARCH
========================================= */

function openSearch(){

    document
        .getElementById("searchOverlay")
        .classList.add("open");


    setTimeout(()=>{

        document
            .getElementById("searchInput")
            .focus();

    },250);

}


function closeSearch(){

    document
        .getElementById("searchOverlay")
        .classList.remove("open");

}


document.addEventListener("keydown",(event)=>{

    if(event.key === "Escape"){

        closeCart();

        closeSearch();

    }

});


/* =========================================
   FILTER
========================================= */

function filterProducts(category,button){

    document
        .querySelectorAll(".filter")
        .forEach(btn=>{
            btn.classList.remove("active");
        });


    button.classList.add("active");


    document
        .querySelectorAll(".product")
        .forEach(product=>{

            const productCategory =
                product.dataset.category;


            if(
                category === "all" ||
                productCategory === category
            ){

                product.style.display = "block";

            }else{

                product.style.display = "none";

            }

        });

}


/* =========================================
   SORT
========================================= */

function sortProducts(){

    const value =
        document.getElementById("sortProducts").value;


    const container =
        document.getElementById("products");


    const products =
        Array.from(
            container.querySelectorAll(".product")
        );


    if(value === "low"){

        products.sort(
            (a,b)=>
                Number(a.dataset.price) -
                Number(b.dataset.price)
        );

    }


    if(value === "high"){

        products.sort(
            (a,b)=>
                Number(b.dataset.price) -
                Number(a.dataset.price)
        );

    }


    if(value === "featured"){

        products.sort(
            (a,b)=>
                Number(a.dataset.price) -
                Number(b.dataset.price)
        );

        products.reverse();

    }


    products.forEach(product=>{
        container.appendChild(product);
    });

}


/* =========================================
   SEARCH PRODUCTS
========================================= */

function searchProducts(query){

    query =
        query.toLowerCase().trim();


    document
        .querySelectorAll(".product")
        .forEach(product=>{

            const name =
                product
                .querySelector(".product-name")
                .textContent
                .toLowerCase();


            const category =
                product
                .querySelector(".product-category")
                .textContent
                .toLowerCase();


            if(
                name.includes(query) ||
                category.includes(query)
            ){

                product.style.display = "block";

            }else{

                product.style.display = "none";

            }

        });

}


/* =========================================
   WISHLIST
========================================= */

function toggleWishlist(button){

    if(button.textContent.trim() === "♡"){

        button.textContent = "♥";

        showToast("Added to wishlist");

    }else{

        button.textContent = "♡";

        showToast("Removed from wishlist");

    }

}


/* =========================================
   TOAST
========================================= */

let toastTimer;


function showToast(message){

    const toast =
        document.getElementById("toast");


    toast.textContent = message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer =
        setTimeout(()=>{

            toast.classList.remove("show");

        },2200);

}


/* =========================================
   NEWSLETTER
========================================= */

function subscribe(event){

    event.preventDefault();


    const form = event.target;

    const input =
        form.querySelector("input");

    const button =
        form.querySelector("button");


    button.textContent =
        "You're in ✓";


    input.value = "";


    showToast(
        "Welcome to Nexus"
    );


    setTimeout(()=>{

        button.textContent =
            "Join Nexus";

    },3000);

}


/* =========================================
   CHECKOUT
========================================= */

function checkout(){

    if(cart.length === 0){

        showToast(
            "Your cart is empty"
        );

        return;

    }


    showToast(
        "Checkout coming soon"
    );

}


/* =========================================
   COUNTDOWN
========================================= */

const countdownTarget =
    Date.now()
    +
    (
        4 *
        24 *
        60 *
        60 *
        1000
    )
    +
    (
        12 *
        60 *
        60 *
        1000
    );


function updateCountdown(){

    const distance =
        countdownTarget -
        Date.now();


    if(distance <= 0){

        return;

    }


    const days =
        Math.floor(
            distance /
            (1000 * 60 * 60 * 24)
        );


    const hours =
        Math.floor(
            (
                distance %
                (1000 * 60 * 60 * 24)
            )
            /
            (1000 * 60 * 60)
        );


    const minutes =
        Math.floor(
            (
                distance %
                (1000 * 60 * 60)
            )
            /
            (1000 * 60)
        );


    const seconds =
        Math.floor(
            (
                distance %
                (1000 * 60)
            )
            /
            1000
        );


    document.getElementById("days")
        .textContent =
        String(days).padStart(2,"0");


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(
    updateCountdown,
    1000
);


updateCountdown();


/* =========================================
   INITIAL CART
========================================= */

updateCart();

</script>

</body>
</html>
