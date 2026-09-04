<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nexus — Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --bg:#f6f7f9;
    --white:#fff;
    --ink:#101114;
    --muted:#777b85;
    --line:#e8e9ed;
    --dark:#15171c;
    --lime:#c8f169;
    --purple:#7567f8;
    --red:#ff5c67;
    --green:#22a06b;
    --radius:22px;
    --radius-sm:14px;
    --shadow:0 12px 40px rgba(16,17,20,.07);
    --shadow-lg:0 24px 70px rgba(16,17,20,.13);
    --transition:.25s ease;
    --container:1380px;
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
    font-family:"DM Sans",sans-serif;
    color:var(--ink);
    background:var(--bg);
    line-height:1.5;
    overflow-x:hidden;
}

button,
input{
    font:inherit;
}

button{
    border:0;
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

.container{
    width:min(var(--container),calc(100% - 48px));
    margin:auto;
}

/* =========================================================
HEADER
========================================================= */

.topbar{
    background:var(--dark);
    color:#fff;
    text-align:center;
    padding:9px 20px;
    font-size:12px;
    letter-spacing:.2px;
}

.topbar strong{
    color:var(--lime);
}

.header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(255,255,255,.88);
    backdrop-filter:blur(18px);
    border-bottom:1px solid rgba(0,0,0,.06);
}

.header-inner{
    min-height:76px;
    display:flex;
    align-items:center;
    gap:30px;
}

.logo{
    font-family:"Manrope",sans-serif;
    font-size:25px;
    font-weight:800;
    letter-spacing:-1.2px;
    display:flex;
    align-items:center;
    gap:9px;
}

.logo-mark{
    width:34px;
    height:34px;
    border-radius:11px;
    background:var(--ink);
    color:var(--lime);
    display:grid;
    place-items:center;
    font-size:15px;
}

.logo span{
    color:var(--purple);
}

.nav{
    display:flex;
    align-items:center;
    gap:5px;
    flex:1;
}

.nav a{
    padding:9px 14px;
    border-radius:10px;
    font-size:14px;
    color:#62656d;
    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    color:var(--ink);
    background:#f0f1f4;
}

.header-actions{
    display:flex;
    align-items:center;
    gap:8px;
}

.icon-button{
    width:42px;
    height:42px;
    border-radius:50%;
    background:#f3f4f6;
    display:grid;
    place-items:center;
    position:relative;
    transition:var(--transition);
}

.icon-button:hover{
    background:var(--ink);
    color:#fff;
    transform:translateY(-2px);
}

.cart-badge{
    position:absolute;
    right:-2px;
    top:-2px;
    width:18px;
    height:18px;
    border-radius:50%;
    background:var(--purple);
    color:#fff;
    font-size:10px;
    font-weight:700;
    display:grid;
    place-items:center;
    border:2px solid #fff;
}

.mobile-menu-btn{
    display:none;
}

/* SEARCH */

.search{
    display:flex;
    align-items:center;
    width:230px;
    background:#f3f4f6;
    border-radius:999px;
    padding:0 15px;
    border:2px solid transparent;
    transition:var(--transition);
}

.search:focus-within{
    background:#fff;
    border-color:var(--purple);
}

.search i{
    color:#999ca4;
    font-size:13px;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    padding:11px 9px;
    font-size:13px;
}

/* =========================================================
HERO
========================================================= */

.hero{
    padding:28px 0 0;
}

.hero-grid{
    min-height:590px;
    display:grid;
    grid-template-columns:1fr 1fr;
    background:var(--dark);
    border-radius:30px;
    overflow:hidden;
    position:relative;
}

.hero-copy{
    padding:75px 70px;
    color:#fff;
    display:flex;
    justify-content:center;
    flex-direction:column;
    position:relative;
    z-index:2;
}

.hero-eyebrow{
    display:inline-flex;
    align-items:center;
    gap:8px;
    width:max-content;
    padding:7px 13px;
    border-radius:999px;
    background:rgba(200,241,105,.12);
    color:var(--lime);
    font-size:12px;
    font-weight:700;
    margin-bottom:20px;
}

.hero h1{
    font-family:"Manrope",sans-serif;
    font-size:clamp(42px,5vw,72px);
    line-height:1.02;
    letter-spacing:-3px;
    max-width:680px;
    margin-bottom:22px;
}

.hero h1 span{
    color:var(--lime);
}

.hero-description{
    max-width:520px;
    color:#b7bac3;
    font-size:16px;
    line-height:1.7;
    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    display:inline-flex;
    justify-content:center;
    align-items:center;
    gap:9px;
    padding:13px 21px;
    border-radius:12px;
    font-weight:700;
    font-size:14px;
    transition:var(--transition);
}

.btn-primary{
    background:var(--lime);
    color:#101114;
}

.btn-primary:hover{
    transform:translateY(-3px);
    box-shadow:0 12px 30px rgba(200,241,105,.25);
}

.btn-dark{
    background:#fff;
    color:var(--ink);
}

.btn-dark:hover{
    transform:translateY(-3px);
}

.btn-outline{
    background:transparent;
    border:1px solid var(--line);
}

.btn-outline:hover{
    background:var(--ink);
    color:#fff;
}

.hero-image{
    position:relative;
    overflow:hidden;
}

.hero-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.hero-image::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(90deg,rgba(21,23,28,.35),transparent 45%);
}

.hero-floating{
    position:absolute;
    right:25px;
    bottom:25px;
    z-index:3;
    background:rgba(255,255,255,.92);
    backdrop-filter:blur(12px);
    padding:17px;
    border-radius:18px;
    width:210px;
    box-shadow:var(--shadow-lg);
}

.hero-floating small{
    color:var(--muted);
    font-size:11px;
}

.hero-floating strong{
    display:block;
    font-size:17px;
    margin:2px 0 8px;
}

.mini-rating{
    color:#f5ad32;
    font-size:12px;
}

/* =========================================================
FEATURES
========================================================= */

.features{
    padding:25px 0 0;
}

.feature-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    border:1px solid var(--line);
    border-radius:18px;
    background:#fff;
    overflow:hidden;
}

.feature{
    padding:21px;
    display:flex;
    align-items:center;
    gap:14px;
    border-right:1px solid var(--line);
}

.feature:last-child{
    border-right:0;
}

.feature-icon{
    width:42px;
    height:42px;
    border-radius:12px;
    background:#f1f2f5;
    display:grid;
    place-items:center;
    color:var(--purple);
}

.feature strong{
    font-size:13px;
    display:block;
}

.feature span{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
SECTIONS
========================================================= */

.section{
    padding:85px 0 0;
}

.section-heading{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:20px;
    margin-bottom:30px;
}

.kicker{
    color:var(--purple);
    text-transform:uppercase;
    letter-spacing:1.5px;
    font-size:11px;
    font-weight:800;
    margin-bottom:6px;
}

.section-heading h2{
    font-family:"Manrope",sans-serif;
    font-size:32px;
    letter-spacing:-1.2px;
}

.section-heading p{
    color:var(--muted);
    font-size:14px;
    margin-top:4px;
}

.link{
    font-size:13px;
    font-weight:700;
    display:flex;
    align-items:center;
    gap:8px;
}

.link:hover{
    color:var(--purple);
}

/* =========================================================
CATEGORIES
========================================================= */

.category-grid{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    background:#fff;
    border:1px solid var(--line);
    border-radius:18px;
    padding:20px 14px;
    text-align:center;
    transition:var(--transition);
    cursor:pointer;
}

.category:hover{
    transform:translateY(-6px);
    box-shadow:var(--shadow);
    border-color:#d8d9ff;
}

.category-icon{
    width:58px;
    height:58px;
    border-radius:18px;
    margin:0 auto 13px;
    display:grid;
    place-items:center;
    font-size:21px;
    background:#f1efff;
    color:var(--purple);
}

.category:nth-child(2) .category-icon{
    background:#edf8df;
    color:#668e2f;
}

.category:nth-child(3) .category-icon{
    background:#fff1ec;
    color:#ec7958;
}

.category:nth-child(4) .category-icon{
    background:#eaf8f7;
    color:#218d82;
}

.category:nth-child(5) .category-icon{
    background:#fff5dc;
    color:#c58c17;
}

.category:nth-child(6) .category-icon{
    background:#f4edf9;
    color:#9b5bbd;
}

.category strong{
    display:block;
    font-size:13px;
}

.category small{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
FILTER BAR
========================================================= */

.filter-bar{
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:15px;
    margin-bottom:22px;
    flex-wrap:wrap;
}

.filter-buttons{
    display:flex;
    gap:7px;
    flex-wrap:wrap;
}

.filter-btn{
    background:#fff;
    border:1px solid var(--line);
    padding:8px 14px;
    border-radius:999px;
    font-size:12px;
    color:var(--muted);
    transition:var(--transition);
}

.filter-btn:hover,
.filter-btn.active{
    background:var(--ink);
    color:#fff;
    border-color:var(--ink);
}

.sort-select{
    border:1px solid var(--line);
    background:#fff;
    border-radius:10px;
    padding:9px 13px;
    outline:0;
    font-size:12px;
}

/* =========================================================
PRODUCTS
========================================================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    background:#fff;
    border:1px solid var(--line);
    border-radius:20px;
    overflow:hidden;
    transition:var(--transition);
}

.product:hover{
    transform:translateY(-7px);
    box-shadow:var(--shadow);
}

.product-image{
    aspect-ratio:1 / 1.02;
    position:relative;
    overflow:hidden;
    background:#f1f2f4;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s ease;
}

.product:hover .product-image img{
    transform:scale(1.06);
}

.product-label{
    position:absolute;
    top:12px;
    left:12px;
    padding:5px 9px;
    border-radius:7px;
    background:var(--ink);
    color:#fff;
    font-size:10px;
    font-weight:800;
}

.product-label.sale{
    background:var(--red);
}

.wishlist{
    position:absolute;
    top:10px;
    right:10px;
    width:35px;
    height:35px;
    border-radius:50%;
    background:rgba(255,255,255,.9);
    display:grid;
    place-items:center;
    color:#777;
    transition:var(--transition);
}

.wishlist:hover,
.wishlist.active{
    color:var(--red);
}

.product-info{
    padding:16px;
}

.product-category{
    color:#9a9da5;
    text-transform:uppercase;
    font-size:9px;
    letter-spacing:1px;
    font-weight:800;
}

.product-title{
    font-size:14px;
    font-weight:700;
    margin:5px 0;
}

.product-rating{
    color:#f3a623;
    font-size:11px;
}

.product-rating span{
    color:#9699a1;
    margin-left:4px;
}

.price-row{
    display:flex;
    align-items:center;
    gap:8px;
    margin-top:10px;
}

.price{
    font-size:17px;
    font-weight:800;
}

.old-price{
    color:#a6a8ae;
    font-size:12px;
    text-decoration:line-through;
}

.add-cart{
    width:100%;
    margin-top:13px;
    padding:10px;
    border-radius:10px;
    background:#f1f2f4;
    color:var(--ink);
    font-size:12px;
    font-weight:800;
    transition:var(--transition);
}

.add-cart:hover{
    background:var(--ink);
    color:#fff;
}

.add-cart.added{
    background:var(--green);
    color:#fff;
}

/* =========================================================
FLASH SALE
========================================================= */

.flash{
    margin-top:85px;
    background:var(--lime);
    border-radius:25px;
    padding:45px;
    display:grid;
    grid-template-columns:1fr 1fr;
    align-items:center;
    gap:35px;
    overflow:hidden;
    position:relative;
}

.flash::before{
    content:"";
    position:absolute;
    width:300px;
    height:300px;
    border-radius:50%;
    background:rgba(255,255,255,.2);
    right:-80px;
    top:-120px;
}

.flash-copy{
    position:relative;
    z-index:2;
}

.flash-tag{
    font-size:11px;
    font-weight:800;
    text-transform:uppercase;
    letter-spacing:1.2px;
}

.flash h2{
    font-family:"Manrope",sans-serif;
    font-size:42px;
    letter-spacing:-2px;
    margin:8px 0;
}

.flash p{
    color:#4f5c37;
    max-width:480px;
    font-size:14px;
}

.timer{
    display:flex;
    gap:8px;
    margin:24px 0;
}

.timer-box{
    background:var(--ink);
    color:#fff;
    border-radius:12px;
    min-width:70px;
    padding:11px;
    text-align:center;
}

.timer-box strong{
    display:block;
    font-size:22px;
}

.timer-box small{
    color:#aaa;
    font-size:9px;
    text-transform:uppercase;
}

.flash-image{
    height:330px;
    border-radius:20px;
    overflow:hidden;
    position:relative;
    z-index:2;
}

.flash-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

/* =========================================================
TRENDING BANNER
========================================================= */

.split-banner{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:18px;
}

.banner{
    min-height:300px;
    border-radius:22px;
    overflow:hidden;
    position:relative;
    color:#fff;
    display:flex;
    align-items:flex-end;
    padding:28px;
}

.banner::before{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(0deg,rgba(0,0,0,.72),transparent 70%);
}

.banner img{
    position:absolute;
    inset:0;
    width:100%;
    height:100%;
    object-fit:cover;
    z-index:0;
    transition:.5s ease;
}

.banner:hover img{
    transform:scale(1.05);
}

.banner-content{
    position:relative;
    z-index:2;
}

.banner-content small{
    color:var(--lime);
    font-weight:800;
    text-transform:uppercase;
    font-size:10px;
}

.banner-content h3{
    font-size:25px;
    margin:5px 0 8px;
}

.banner-content p{
    color:#ddd;
    font-size:12px;
    max-width:340px;
}

/* =========================================================
TESTIMONIALS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.review{
    background:#fff;
    border:1px solid var(--line);
    border-radius:20px;
    padding:25px;
}

.review-stars{
    color:#f3a623;
    font-size:13px;
    margin-bottom:15px;
}

.review p{
    color:#53565f;
    font-size:14px;
    line-height:1.7;
    margin-bottom:20px;
}

.reviewer{
    display:flex;
    align-items:center;
    gap:10px;
}

.reviewer img{
    width:42px;
    height:42px;
    border-radius:50%;
    object-fit:cover;
}

.reviewer strong{
    display:block;
    font-size:12px;
}

.reviewer span{
    color:var(--muted);
    font-size:10px;
}

/* =========================================================
NEWSLETTER
========================================================= */

.newsletter{
    margin-top:85px;
    background:var(--dark);
    color:#fff;
    border-radius:25px;
    padding:55px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:30px;
}

.newsletter h2{
    font-family:"Manrope",sans-serif;
    font-size:34px;
    letter-spacing:-1px;
}

.newsletter p{
    color:#aeb1ba;
    font-size:13px;
    margin-top:6px;
}

.subscribe{
    display:flex;
    background:#fff;
    padding:5px;
    border-radius:13px;
    width:430px;
}

.subscribe input{
    border:0;
    outline:0;
    flex:1;
    padding:10px 13px;
    min-width:0;
}

.subscribe button{
    background:var(--lime);
    color:var(--ink);
    border-radius:9px;
    padding:0 18px;
    font-size:12px;
    font-weight:800;
}

/* =========================================================
FOOTER
========================================================= */

.footer{
    margin-top:80px;
    border-top:1px solid var(--line);
    padding:55px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-brand p{
    color:var(--muted);
    max-width:280px;
    font-size:12px;
    margin-top:12px;
}

.footer h4{
    font-size:12px;
    margin-bottom:14px;
}

.footer ul{
    list-style:none;
    display:grid;
    gap:8px;
}

.footer li a{
    color:var(--muted);
    font-size:12px;
}

.footer li a:hover{
    color:var(--purple);
}

.socials{
    display:flex;
    gap:7px;
    margin-top:18px;
}

.socials a{
    width:34px;
    height:34px;
    border-radius:9px;
    background:#f0f1f3;
    display:grid;
    place-items:center;
    font-size:12px;
}

.footer-bottom{
    border-top:1px solid var(--line);
    margin-top:40px;
    padding-top:20px;
    color:#a0a2a9;
    font-size:11px;
    display:flex;
    justify-content:space-between;
}

/* =========================================================
CART DRAWER
========================================================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.45);
    z-index:1100;
    opacity:0;
    visibility:hidden;
    transition:.3s;
}

.overlay.show{
    opacity:1;
    visibility:visible;
}

.cart-drawer{
    position:fixed;
    right:0;
    top:0;
    height:100%;
    width:min(430px,100%);
    background:#fff;
    z-index:1200;
    transform:translateX(100%);
    transition:.35s cubic-bezier(.4,0,.2,1);
    display:flex;
    flex-direction:column;
    box-shadow:-20px 0 70px rgba(0,0,0,.12);
}

.cart-drawer.open{
    transform:translateX(0);
}

.cart-head{
    padding:22px;
    border-bottom:1px solid var(--line);
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.cart-head h3{
    font-family:"Manrope",sans-serif;
    font-size:20px;
}

.close-cart{
    width:36px;
    height:36px;
    border-radius:50%;
    background:#f2f3f5;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px;
}

.empty-cart{
    text-align:center;
    color:var(--muted);
    padding:80px 20px;
}

.empty-cart i{
    font-size:45px;
    color:#ddd;
    margin-bottom:15px;
}

.cart-item{
    display:grid;
    grid-template-columns:70px 1fr auto;
    gap:12px;
    align-items:center;
    padding:12px 0;
    border-bottom:1px solid var(--line);
}

.cart-item img{
    width:70px;
    height:70px;
    border-radius:12px;
    object-fit:cover;
}

.cart-item strong{
    font-size:12px;
}

.cart-item small{
    display:block;
    color:var(--muted);
    margin-top:3px;
}

.remove-item{
    color:#a0a0a5;
}

.cart-footer{
    padding:20px;
    border-top:1px solid var(--line);
}

.cart-total{
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
    font-weight:800;
}

.checkout{
    width:100%;
    background:var(--ink);
    color:#fff;
    padding:14px;
    border-radius:12px;
    font-weight:800;
}

/* =========================================================
TOAST
========================================================= */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,30px);
    background:var(--ink);
    color:#fff;
    padding:12px 17px;
    border-radius:12px;
    font-size:12px;
    z-index:2000;
    opacity:0;
    pointer-events:none;
    transition:.3s;
}

.toast.show{
    opacity:1;
    transform:translate(-50%,0);
}

/* =========================================================
RESPONSIVE
========================================================= */

@media(max-width:1150px){

    .nav{
        display:none;
    }

    .mobile-menu-btn{
        display:grid;
    }

    .header-inner{
        gap:12px;
    }

    .search{
        margin-left:auto;
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .category-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .footer-grid{
        grid-template-columns:2fr 1fr 1fr;
    }
}

@media(max-width:850px){

    .container{
        width:min(100% - 28px,var(--container));
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-copy{
        min-height:460px;
        padding:45px 35px;
    }

    .hero-image{
        height:330px;
    }

    .feature-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .feature:nth-child(2){
        border-right:0;
    }

    .feature:nth-child(-n+2){
        border-bottom:1px solid var(--line);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .flash{
        grid-template-columns:1fr;
        padding:30px;
    }

    .split-banner{
        grid-template-columns:1fr;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .newsletter{
        flex-direction:column;
        align-items:flex-start;
        padding:35px;
    }

    .subscribe{
        width:100%;
    }
}

@media(max-width:600px){

    .topbar{
        font-size:10px;
    }

    .header-inner{
        min-height:66px;
    }

    .logo{
        font-size:20px;
    }

    .logo-mark{
        width:30px;
        height:30px;
    }

    .search{
        width:42px;
        padding:0 12px;
        justify-content:center;
    }

    .search input{
        display:none;
    }

    .search i{
        font-size:14px;
    }

    .header-actions .account{
        display:none;
    }

    .hero{
        padding-top:15px;
    }

    .hero-grid{
        border-radius:20px;
    }

    .hero-copy{
        padding:38px 25px;
        min-height:430px;
    }

    .hero h1{
        font-size:43px;
        letter-spacing:-2px;
    }

    .hero-description{
        font-size:14px;
    }

    .hero-image{
        height:250px;
    }

    .hero-floating{
        right:14px;
        bottom:14px;
        width:180px;
    }

    .feature-grid{
        grid-template-columns:1fr;
    }

    .feature{
        border-right:0!important;
        border-bottom:1px solid var(--line);
    }

    .feature:last-child{
        border-bottom:0;
    }

    .section{
        padding-top:60px;
    }

    .section-heading{
        align-items:flex-start;
        flex-direction:column;
    }

    .section-heading h2{
        font-size:26px;
    }

    .category-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-info{
        padding:12px;
    }

    .product-title{
        font-size:12px;
    }

    .price{
        font-size:14px;
    }

    .old-price{
        font-size:10px;
    }

    .add-cart{
        font-size:10px;
    }

    .flash{
        margin-top:60px;
        padding:22px;
    }

    .flash h2{
        font-size:32px;
    }

    .flash-image{
        height:230px;
    }

    .timer-box{
        min-width:58px;
    }

    .timer-box strong{
        font-size:18px;
    }

    .newsletter{
        margin-top:60px;
        padding:28px 22px;
    }

    .newsletter h2{
        font-size:27px;
    }

    .subscribe{
        flex-direction:column;
        gap:5px;
        background:transparent;
    }

    .subscribe input{
        border-radius:10px;
        padding:13px;
    }

    .subscribe button{
        padding:13px;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:28px;
    }

    .footer-brand{
        grid-column:1/-1;
    }

    .footer-bottom{
        flex-direction:column;
        gap:7px;
    }
}
</style>
</head>

<body>

<div class="topbar">
    <strong>FREE SHIPPING</strong> on orders over $75 · Easy 30-day returns
</div>

<header class="header">
    <div class="container header-inner">

        <button class="icon-button mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-mark">
                <i class="fa-solid fa-n"></i>
            </div>
            nexus<span>.</span>
        </a>

        <nav class="nav">
            <a href="#" class="active">Home</a>
            <a href="#shop">Shop</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="search">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input id="searchInput" type="search" placeholder="Search products...">
        </div>

        <div class="header-actions">

            <button class="icon-button account" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="icon-button" id="wishlistButton" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="icon-button" id="cartButton" title="Shopping cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>

<!-- HERO -->

<main>

<section class="hero">
    <div class="container">

        <div class="hero-grid">

            <div class="hero-copy">

                <div class="hero-eyebrow">
                    <i class="fa-solid fa-sparkles"></i>
                    NEW SEASON 2026
                </div>

                <h1>
                    Everything you want.
                    <span>One place.</span>
                </h1>

                <p class="hero-description">
                    Discover thoughtfully selected tech, fashion and everyday
                    essentials designed to make your life simpler and better.
                </p>

                <div class="hero-buttons">
                    <button class="btn btn-primary" onclick="scrollToShop()">
                        Shop collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-dark" onclick="scrollToDeals()">
                        View today's deals
                    </button>
                </div>

            </div>

            <div class="hero-image">

                <img
                    src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85"
                    alt="Modern retail store">

                <div class="hero-floating">
                    <small>THIS WEEK'S PICK</small>
                    <strong>Minimal Everyday Collection</strong>
                    <div class="mini-rating">
                        ★★★★★
                        <span style="color:#777"> 4.9/5</span>
                    </div>
                </div>

            </div>

        </div>

    </div>
</section>

<!-- FEATURES -->

<section class="features">
    <div class="container">

        <div class="feature-grid">

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>
                <div>
                    <strong>Fast delivery</strong>
                    <span>2–4 business days</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>
                <div>
                    <strong>Secure payment</strong>
                    <span>100% protected checkout</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-arrow-rotate-left"></i>
                </div>
                <div>
                    <strong>Easy returns</strong>
                    <span>30-day return policy</span>
                </div>
            </div>

            <div class="feature">
                <div class="feature-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>
                <div>
                    <strong>Friendly support</strong>
                    <span>We're here 24/7</span>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- CATEGORIES -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="kicker">Explore</div>
                <h2>Shop by category</h2>
                <p>Find something you'll love.</p>
            </div>

            <a href="#shop" class="link">
                Browse all
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div class="category-grid" id="categoryGrid"></div>

    </div>

</section>

<!-- PRODUCTS -->

<section class="section" id="shop">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="kicker">Trending now</div>
                <h2>Popular picks</h2>
                <p>Our most-loved products this week.</p>
            </div>

            <span class="link">
                <span id="productCount">0</span> products
            </span>

        </div>

        <div class="filter-bar">

            <div class="filter-buttons" id="filters"></div>

            <select class="sort-select" id="sortSelect">
                <option value="featured">Featured</option>
                <option value="low">Price: Low to high</option>
                <option value="high">Price: High to low</option>
                <option value="rating">Top rated</option>
            </select>

        </div>

        <div class="products" id="products"></div>

    </div>

</section>

<!-- FLASH SALE -->

<section id="deals">

    <div class="container">

        <div class="flash">

            <div class="flash-copy">

                <div class="flash-tag">
                    <i class="fa-solid fa-bolt"></i>
                    Limited-time offer
                </div>

                <h2>Save up to 40%</h2>

                <p>
                    Upgrade your setup with premium tech at a fraction of
                    the price. When they're gone, they're gone.
                </p>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="days">00</strong>
                        <small>Days</small>
                    </div>

                    <div class="timer-box">
                        <strong id="hours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="timer-box">
                        <strong id="minutes">00</strong>
                        <small>Minutes</small>
                    </div>

                    <div class="timer-box">
                        <strong id="seconds">00</strong>
                        <small>Seconds</small>
                    </div>

                </div>

                <button class="btn btn-dark" onclick="scrollToShop()">
                    Shop the sale
                    <i class="fa-solid fa-arrow-right"></i>
                </button>

            </div>

            <div class="flash-image">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=85"
                    alt="Laptop on desk">

            </div>

        </div>

    </div>

</section>

<!-- BANNERS -->

<section class="section">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="kicker">Collections</div>
                <h2>Made for your lifestyle</h2>
            </div>

        </div>

        <div class="split-banner">

            <div class="banner">

                <img
                    src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=1000&q=85"
                    alt="Fashion collection">

                <div class="banner-content">
                    <small>New arrivals</small>
                    <h3>Modern essentials</h3>
                    <p>Clean silhouettes and everyday pieces designed to last.</p>
                </div>

            </div>

            <div class="banner">

                <img
                    src="https://images.unsplash.com/photo-1518441317342-5c9d0c7f4a4d?auto=format&fit=crop&w=1000&q=85"
                    alt="Technology collection">

                <div class="banner-content">
                    <small>Tech edit</small>
                    <h3>Upgrade your setup</h3>
                    <p>Smart devices and accessories built for modern life.</p>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- REVIEWS -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="kicker">Customer love</div>
                <h2>People are talking</h2>
                <p>Real experiences from our community.</p>
            </div>

        </div>

        <div class="reviews" id="reviewsGrid"></div>

    </div>

</section>

<!-- NEWSLETTER -->

<section>

    <div class="container">

        <div class="newsletter">

            <div>
                <h2>Stay in the know.</h2>
                <p>
                    New arrivals, exclusive drops and special offers.
                    No spam, ever.
                </p>
            </div>

            <form class="subscribe" id="newsletterForm">

                <input
                    id="emailInput"
                    type="email"
                    placeholder="Your email address"
                    required>

                <button type="submit">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>

<!-- FOOTER -->

<footer class="footer">

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">
                    <div class="logo-mark">
                        <i class="fa-solid fa-n"></i>
                    </div>
                    nexus<span>.</span>
                </a>

                <p>
                    A modern marketplace built around great products,
                    simple experiences and thoughtful design.
                </p>

                <div class="socials">
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>

            </div>

            <div>
                <h4>Shop</h4>
                <ul>
                    <li><a href="#shop">All products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#">New arrivals</a></li>
                </ul>
            </div>

            <div>
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Our story</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Journal</a></li>
                </ul>
            </div>

            <div>
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Help center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

            <div>
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Cookies</a></li>
                </ul>
            </div>

        </div>

        <div class="footer-bottom">
            <span>© <span id="year"></span> Nexus. All rights reserved.</span>
            <span>Designed for modern shopping.</span>
        </div>

    </div>

</footer>

<!-- CART OVERLAY -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-head">

        <h3>Your cart</h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0.00</span>
        </div>

        <button class="checkout" id="checkoutButton">
            Continue to checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<div class="toast" id="toast"></div>

<script>

/* =========================================================
DATA
========================================================= */

const categories = [
    {
        id:"all",
        name:"All",
        icon:"fa-border-all",
        count:"120+"
    },
    {
        id:"tech",
        name:"Technology",
        icon:"fa-laptop",
        count:"32"
    },
    {
        id:"fashion",
        name:"Fashion",
        icon:"fa-shirt",
        count:"28"
    },
    {
        id:"audio",
        name:"Audio",
        icon:"fa-headphones",
        count:"19"
    },
    {
        id:"home",
        name:"Home",
        icon:"fa-house",
        count:"24"
    },
    {
        id:"accessories",
        name:"Accessories",
        icon:"fa-bag-shopping",
        count:"17"
    }
];

const products = [

    {
        id:1,
        name:"AirPods Pro 2",
        category:"audio",
        categoryName:"Audio",
        price:249,
        oldPrice:279,
        rating:4.9,
        reviews:328,
        badge:"Best seller",
        image:"https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:2,
        name:"MacBook Air",
        category:"tech",
        categoryName:"Technology",
        price:1099,
        oldPrice:1199,
        rating:4.9,
        reviews:182,
        badge:"Popular",
        image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:3,
        name:"Everyday Sneakers",
        category:"fashion",
        categoryName:"Fashion",
        price:89,
        oldPrice:120,
        rating:4.7,
        reviews:94,
        badge:"Sale",
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:4,
        name:"Minimal Watch",
        category:"accessories",
        categoryName:"Accessories",
        price:159,
        oldPrice:199,
        rating:4.8,
        reviews:76,
        badge:"New",
        image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:5,
        name:"Wireless Headphones",
        category:"audio",
        categoryName:"Audio",
        price:299,
        oldPrice:349,
        rating:4.8,
        reviews:211,
        badge:"Hot",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:6,
        name:"Smartphone Pro",
        category:"tech",
        categoryName:"Technology",
        price:899,
        oldPrice:999,
        rating:4.7,
        reviews:154,
        badge:"New",
        image:"https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:7,
        name:"Leather Backpack",
        category:"fashion",
        categoryName:"Fashion",
        price:129,
        oldPrice:159,
        rating:4.6,
        reviews:62,
        badge:"Sale",
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:8,
        name:"Ceramic Table Lamp",
        category:"home",
        categoryName:"Home",
        price:74,
        oldPrice:99,
        rating:4.7,
        reviews:45,
        badge:"Trending",
        image:"https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:9,
        name:"Premium Sunglasses",
        category:"accessories",
        categoryName:"Accessories",
        price:119,
        oldPrice:149,
        rating:4.6,
        reviews:88,
        badge:"New",
        image:"https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:10,
        name:"Smart Speaker",
        category:"tech",
        categoryName:"Technology",
        price:129,
        oldPrice:159,
        rating:4.5,
        reviews:73,
        badge:"Popular",
        image:"https://images.unsplash.com/photo-1589492477829-5e65395b66cc?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:11,
        name:"Relaxed Cotton Shirt",
        category:"fashion",
        categoryName:"Fashion",
        price:59,
        oldPrice:79,
        rating:4.8,
        reviews:51,
        badge:"New",
        image:"https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?auto=format&fit=crop&w=700&q=85"
    },

    {
        id:12,
        name:"Modern Desk Chair",
        category:"home",
        categoryName:"Home",
        price:219,
        oldPrice:269,
        rating:4.6,
        reviews:39,
        badge:"Sale",
        image:"https://images.unsplash.com/photo-1505843490701-5be5d5f0e2e6?auto=format&fit=crop&w=700&q=85"
    }

];

const reviews = [

    {
        name:"Ava Martin",
        role:"Verified customer",
        rating:5,
        text:"Everything feels thoughtfully designed. My order arrived quickly and the quality was even better than expected.",
        image:"https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
    },

    {
        name:"Daniel Carter",
        role:"Verified customer",
        rating:5,
        text:"The website is incredibly easy to use and checkout was effortless. I'll definitely be shopping here again.",
        image:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
    },

    {
        name:"Sophia Lee",
        role:"Verified customer",
        rating:5,
        text:"Great products, beautiful packaging and fast shipping. Nexus has quickly become one of my favorite stores.",
        image:"https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
    }

];

/* =========================================================
STATE
========================================================= */

let activeCategory = "all";
let searchTerm = "";
let cart = [];
let wishlist = new Set();

/* =========================================================
DOM
========================================================= */

const productsEl = document.getElementById("products");
const filtersEl = document.getElementById("filters");
const categoryGrid = document.getElementById("categoryGrid");
const productCount = document.getElementById("productCount");
const sortSelect = document.getElementById("sortSelect");

const cartDrawer = document.getElementById("cartDrawer");
const overlay = document.getElementById("overlay");
const cartItems = document.getElementById("cartItems");
const cartCount = document.getElementById("cartCount");
const cartTotal = document.getElementById("cartTotal");

const toast = document.getElementById("toast");

/* =========================================================
CATEGORIES
========================================================= */

function renderCategories(){

    categoryGrid.innerHTML = categories
        .filter(category => category.id !== "all")
        .map(category => `
            <div
                class="category"
                onclick="selectCategory('${category.id}')"
            >

                <div class="category-icon">
                    <i class="fa-solid ${category.icon}"></i>
                </div>

                <strong>${category.name}</strong>
                <small>${category.count} products</small>

            </div>
        `)
        .join("");

}

/* =========================================================
FILTERS
========================================================= */

function renderFilters(){

    filtersEl.innerHTML = categories.map(category => `

        <button
            class="filter-btn ${activeCategory === category.id ? "active":""}"
            onclick="selectCategory('${category.id}')"
        >
            ${category.name}
        </button>

    `).join("");

}

function selectCategory(category){

    activeCategory = category;

    renderFilters();
    renderProducts();

    document.getElementById("shop")
        .scrollIntoView({
            behavior:"smooth",
            block:"start"
        });
}

/* =========================================================
PRODUCTS
========================================================= */

function getFilteredProducts(){

    let result = [...products];

    if(activeCategory !== "all"){

        result = result.filter(
            product => product.category === activeCategory
        );

    }

    if(searchTerm){

        result = result.filter(product =>
            product.name.toLowerCase().includes(searchTerm) ||
            product.categoryName.toLowerCase().includes(searchTerm)
        );

    }

    const sort = sortSelect.value;

    if(sort === "low"){
        result.sort((a,b) => a.price - b.price);
    }

    if(sort === "high"){
        result.sort((a,b) => b.price - a.price);
    }

    if(sort === "rating"){
        result.sort((a,b) => b.rating - a.rating);
    }

    return result;
}

function renderProducts(){

    const list = getFilteredProducts();

    productCount.textContent = list.length;

    if(!list.length){

        productsEl.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px 20px;
                color:#777;
            ">
                <i
                    class="fa-solid fa-magnifying-glass"
                    style="font-size:35px;color:#ddd;margin-bottom:15px"
                ></i>

                <h3 style="color:#222;margin-bottom:5px">
                    No products found
                </h3>

                <p>Try another search or category.</p>
            </div>
        `;

        return;
    }

    productsEl.innerHTML = list.map(product => {

        const liked = wishlist.has(product.id);

        const stars =
            "★".repeat(Math.round(product.rating)) +
            "☆".repeat(5 - Math.round(product.rating));

        return `

        <article class="product">

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy"
                >

                <span class="product-label ${
                    product.badge === "Sale" ? "sale" : ""
                }">
                    ${product.badge}
                </span>

                <button
                    class="wishlist ${liked ? "active":""}"
                    onclick="toggleWishlist(${product.id})"
                    aria-label="Wishlist"
                >
                    <i class="${liked ? "fa-solid":"fa-regular"} fa-heart"></i>
                </button>

            </div>

            <div class="product-info">

                <div class="product-category">
                    ${product.categoryName}
                </div>

                <div class="product-title">
                    ${product.name}
                </div>

                <div class="product-rating">
                    ${stars}
                    <span>(${product.reviews})</span>
                </div>

                <div class="price-row">

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    <span class="old-price">
                        $${product.oldPrice.toLocaleString()}
                    </span>

                </div>

                <button
                    class="add-cart"
                    onclick="addToCart(${product.id})"
                >
                    <i class="fa-solid fa-plus"></i>
                    Add to cart
                </button>

            </div>

        </article>

        `;

    }).join("");

}

/* =========================================================
WISHLIST
========================================================= */

function toggleWishlist(id){

    if(wishlist.has(id)){

        wishlist.delete(id);

        showToast("Removed from wishlist");

    }else{

        wishlist.add(id);

        showToast("Added to wishlist ❤️");

    }

    renderProducts();

}

/* =========================================================
CART
========================================================= */

function addToCart(id){

    const product = products.find(p => p.id === id);

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

    showToast(`${product.name} added to cart`);

}

function removeFromCart(id){

    cart = cart.filter(item => item.id !== id);

    updateCart();

}

function updateCart(){

    const count = cart.reduce(
        (sum,item) => sum + item.quantity,
        0
    );

    cartCount.textContent = count;

    if(!cart.length){

        cartItems.innerHTML = `
            <div class="empty-cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>Add something you love.</p>

            </div>
        `;

        cartTotal.textContent = "$0.00";

        return;
    }

    cartItems.innerHTML = cart.map(item => `

        <div class="cart-item">

            <img src="${item.image}" alt="${item.name}">

            <div>

                <strong>${item.name}</strong>

                <small>
                    ${item.quantity} × $${item.price}
                </small>

            </div>

            <button
                class="remove-item"
                onclick="removeFromCart(${item.id})"
            >
                <i class="fa-solid fa-trash"></i>
            </button>

        </div>

    `).join("");

    const total = cart.reduce(
        (sum,item) => sum + item.price * item.quantity,
        0
    );

    cartTotal.textContent =
        "$" + total.toLocaleString(undefined,{
            minimumFractionDigits:2
        });

}

/* =========================================================
CART DRAWER
========================================================= */

function openCart(){

    cartDrawer.classList.add("open");
    overlay.classList.add("show");

}

function closeCart(){

    cartDrawer.classList.remove("open");
    overlay.classList.remove("show");

}

document
    .getElementById("cartButton")
    .addEventListener("click",openCart);

document
    .getElementById("closeCart")
    .addEventListener("click",closeCart);

overlay.addEventListener("click",closeCart);

/* =========================================================
SEARCH
========================================================= */

document
    .getElementById("searchInput")
    .addEventListener("input",e => {

        searchTerm =
            e.target.value.trim().toLowerCase();

        activeCategory = "all";

        renderFilters();
        renderProducts();

    });

/* =========================================================
SORT
========================================================= */

sortSelect.addEventListener(
    "change",
    renderProducts
);

/* =========================================================
MOBILE MENU
========================================================= */

const mobileButton =
    document.getElementById("mobileMenuBtn");

mobileButton.addEventListener("click",() => {

    const nav = document.querySelector(".nav");

    if(nav.style.display === "flex"){

        nav.style.display = "";

    }else{

        nav.style.display = "flex";
        nav.style.position = "absolute";
        nav.style.left = "14px";
        nav.style.right = "14px";
        nav.style.top = "68px";
        nav.style.padding = "10px";
        nav.style.flexDirection = "column";
        nav.style.alignItems = "stretch";
        nav.style.background = "#fff";
        nav.style.border = "1px solid #eee";
        nav.style.borderRadius = "15px";
        nav.style.boxShadow = "0 20px 40px rgba(0,0,0,.1)";

    }

});

/* =========================================================
HERO NAVIGATION
========================================================= */

function scrollToShop(){

    document
        .getElementById("shop")
        .scrollIntoView({
            behavior:"smooth"
        });

}

function scrollToDeals(){

    document
        .getElementById("deals")
        .scrollIntoView({
            behavior:"smooth"
        });

}

/* =========================================================
NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener("submit",e => {

        e.preventDefault();

        const email =
            document.getElementById("emailInput").value.trim();

        if(!email){
            return;
        }

        document.getElementById("emailInput").value = "";

        showToast("You're subscribed! 🎉");

    });

/* =========================================================
CHECKOUT
========================================================= */

document
    .getElementById("checkoutButton")
    .addEventListener("click",() => {

        if(!cart.length){

            showToast("Your cart is empty");

            return;
        }

        showToast("Checkout demo — coming next!");

    });

/* =========================================================
TOAST
========================================================= */

let toastTimer;

function showToast(message){

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(() => {

        toast.classList.remove("show");

    },2200);

}

/* =========================================================
REVIEWS
========================================================= */

function renderReviews(){

    document.getElementById("reviewsGrid").innerHTML =
        reviews.map(review => `

        <article class="review">

            <div class="review-stars">
                ${"★".repeat(review.rating)}
            </div>

            <p>
                “${review.text}”
            </p>

            <div class="reviewer">

                <img
                    src="${review.image}"
                    alt="${review.name}"
                >

                <div>
                    <strong>${review.name}</strong>
                    <span>${review.role}</span>
                </div>

            </div>

        </article>

        `).join("");

}

/* =========================================================
FLASH TIMER
========================================================= */

const saleEnd =
    Date.now() +
    (
        1 * 24 * 60 * 60 * 1000 +
        8 * 60 * 60 * 1000 +
        32 * 60 * 1000
    );

function updateTimer(){

    let difference =
        Math.max(0,saleEnd-Date.now());

    const days =
        Math.floor(difference / 86400000);

    difference %= 86400000;

    const hours =
        Math.floor(difference / 3600000);

    difference %= 3600000;

    const minutes =
        Math.floor(difference / 60000);

    const seconds =
        Math.floor((difference % 60000)/1000);

    document.getElementById("days").textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours").textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2,"0");

}

setInterval(updateTimer,1000);
updateTimer();

/* =========================================================
YEAR
========================================================= */

document.getElementById("year").textContent =
    new Date().getFullYear();

/* =========================================================
INIT
========================================================= */

renderCategories();
renderFilters();
renderProducts();
renderReviews();
updateCart();

</script>

</body>
</html>
