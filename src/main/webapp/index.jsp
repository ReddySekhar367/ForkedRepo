Absolutely — here’s a **completely new UI direction** for the same Nexus store. It keeps your product/cart/search functionality but changes the visual system to a more premium **editorial + luxury-commerce** aesthetic.

```
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nexus — Curated Living</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --cream:#f4f1eb;
    --paper:#fbfaf7;
    --white:#fff;
    --black:#11110f;
    --charcoal:#24231f;
    --muted:#77756e;
    --line:#dfdcd4;
    --gold:#b89b5e;
    --sage:#66735d;
    --orange:#c86f42;
    --radius:4px;
    --ease:.3s cubic-bezier(.2,.8,.2,1);
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
    color:var(--black);
    font-family:"DM Sans",sans-serif;
    overflow-x:hidden;
}

button,
input,
select{
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
    display:block;
    max-width:100%;
}

.container{
    width:min(1320px,calc(100% - 60px));
    margin:auto;
}

/* =====================================================
TOP STRIP
===================================================== */

.top-strip{
    background:var(--black);
    color:#fff;
    min-height:36px;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:10px;
    letter-spacing:1.4px;
    text-transform:uppercase;
}

.top-strip span{
    color:#d7bd80;
}

/* =====================================================
HEADER
===================================================== */

.header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(251,250,247,.94);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--line);
}

.header-inner{
    height:84px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:30px;
}

.brand{
    display:flex;
    align-items:center;
    gap:11px;
    font-size:21px;
    font-weight:700;
    letter-spacing:3px;
    text-transform:uppercase;
}

.brand-symbol{
    width:31px;
    height:31px;
    border:1px solid var(--black);
    display:grid;
    place-items:center;
    font-family:"Playfair Display",serif;
    font-size:17px;
}

.nav{
    display:flex;
    align-items:center;
    gap:32px;
}

.nav a{
    position:relative;
    color:#56544e;
    font-size:11px;
    letter-spacing:1px;
    text-transform:uppercase;
}

.nav a::after{
    content:"";
    position:absolute;
    left:0;
    bottom:-8px;
    width:0;
    height:1px;
    background:var(--black);
    transition:var(--ease);
}

.nav a:hover,
.nav a.active{
    color:var(--black);
}

.nav a:hover::after,
.nav a.active::after{
    width:100%;
}

.header-actions{
    display:flex;
    align-items:center;
    gap:7px;
}

.action{
    width:40px;
    height:40px;
    background:transparent;
    display:grid;
    place-items:center;
    color:var(--black);
    position:relative;
}

.action:hover{
    background:var(--cream);
}

.badge{
    position:absolute;
    top:1px;
    right:0;
    min-width:15px;
    height:15px;
    border-radius:50%;
    background:var(--black);
    color:#fff;
    font-size:8px;
    display:grid;
    place-items:center;
}

.mobile-menu{
    display:none;
}

/* =====================================================
HERO
===================================================== */

.hero{
    padding:22px 0 0;
}

.hero-grid{
    min-height:670px;
    display:grid;
    grid-template-columns:43% 57%;
    background:var(--charcoal);
    overflow:hidden;
}

.hero-content{
    color:#fff;
    padding:70px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.hero-label{
    display:flex;
    align-items:center;
    gap:12px;
    color:#d4ba7d;
    font-size:9px;
    letter-spacing:2.5px;
    text-transform:uppercase;
    margin-bottom:28px;
}

.hero-label::before{
    content:"";
    width:32px;
    height:1px;
    background:#d4ba7d;
}

.hero h1{
    font-family:"Playfair Display",serif;
    font-weight:500;
    font-size:clamp(48px,5vw,78px);
    line-height:.98;
    letter-spacing:-2px;
    margin-bottom:28px;
}

.hero h1 em{
    color:#d4ba7d;
    font-style:italic;
}

.hero-copy{
    max-width:430px;
    color:#b7b5ae;
    font-size:14px;
    line-height:1.9;
    margin-bottom:35px;
}

.hero-buttons{
    display:flex;
    align-items:center;
    gap:20px;
}

.btn{
    min-height:48px;
    padding:0 23px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:12px;
    font-size:10px;
    font-weight:700;
    letter-spacing:1.4px;
    text-transform:uppercase;
    transition:var(--ease);
}

.btn-gold{
    background:#d4ba7d;
    color:var(--black);
}

.btn-gold:hover{
    background:#fff;
    transform:translateY(-3px);
}

.btn-text{
    color:#fff;
    padding:0;
    background:transparent;
}

.btn-text i{
    transition:var(--ease);
}

.btn-text:hover i{
    transform:translateX(5px);
}

.hero-visual{
    position:relative;
    overflow:hidden;
}

.hero-visual img{
    width:100%;
    height:100%;
    object-fit:cover;
    filter:saturate(.78);
}

.hero-visual::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(90deg,rgba(20,20,18,.4),transparent 45%);
}

.hero-card{
    position:absolute;
    z-index:2;
    right:28px;
    bottom:28px;
    width:225px;
    background:rgba(251,250,247,.95);
    padding:20px;
}

.hero-card-label{
    font-size:8px;
    letter-spacing:1.5px;
    text-transform:uppercase;
    color:var(--muted);
}

.hero-card h3{
    font-family:"Playfair Display",serif;
    font-size:19px;
    font-weight:500;
    margin:7px 0 13px;
}

.hero-card a{
    font-size:9px;
    letter-spacing:1px;
    text-transform:uppercase;
    font-weight:700;
    border-bottom:1px solid var(--black);
    padding-bottom:3px;
}

/* =====================================================
MARQUEE
===================================================== */

.marquee{
    border-bottom:1px solid var(--line);
    border-top:1px solid var(--line);
    overflow:hidden;
    white-space:nowrap;
    margin-top:22px;
}

.marquee-track{
    display:inline-flex;
    gap:42px;
    padding:16px 0;
    animation:marquee 25s linear infinite;
}

.marquee span{
    font-size:9px;
    letter-spacing:2px;
    text-transform:uppercase;
    color:#66645e;
}

.marquee b{
    color:var(--gold);
}

@keyframes marquee{
    to{
        transform:translateX(-50%);
    }
}

/* =====================================================
SECTION
===================================================== */

.section{
    padding:105px 0 0;
}

.section-top{
    display:flex;
    justify-content:space-between;
    align-items:flex-end;
    margin-bottom:35px;
}

.eyebrow{
    color:var(--gold);
    font-size:9px;
    letter-spacing:2px;
    text-transform:uppercase;
    margin-bottom:9px;
}

.section-title{
    font-family:"Playfair Display",serif;
    font-size:40px;
    font-weight:500;
    line-height:1;
}

.section-description{
    color:var(--muted);
    font-size:12px;
    margin-top:10px;
}

.view-all{
    font-size:9px;
    font-weight:700;
    letter-spacing:1.3px;
    text-transform:uppercase;
    border-bottom:1px solid var(--black);
    padding-bottom:6px;
}

/* =====================================================
CATEGORIES
===================================================== */

.categories{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:2px;
}

.category{
    height:300px;
    position:relative;
    overflow:hidden;
    cursor:pointer;
    background:#ddd;
}

.category img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.7s ease;
    filter:saturate(.75);
}

.category:hover img{
    transform:scale(1.06);
    filter:saturate(1);
}

.category::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(0deg,rgba(0,0,0,.65),transparent 60%);
}

.category-content{
    position:absolute;
    left:25px;
    bottom:22px;
    color:#fff;
    z-index:2;
}

.category-content small{
    color:#d7bd80;
    font-size:8px;
    letter-spacing:1.5px;
    text-transform:uppercase;
}

.category-content h3{
    font-family:"Playfair Display",serif;
    font-size:26px;
    font-weight:500;
    margin:3px 0;
}

.category-content span{
    font-size:9px;
    color:#ddd;
}

/* =====================================================
SHOP TOOLBAR
===================================================== */

.shop-toolbar{
    border-top:1px solid var(--line);
    border-bottom:1px solid var(--line);
    min-height:58px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.filters{
    display:flex;
    align-items:center;
    gap:22px;
}

.filter{
    background:transparent;
    color:#8a8881;
    font-size:9px;
    letter-spacing:1px;
    text-transform:uppercase;
    padding:20px 0;
    position:relative;
}

.filter.active,
.filter:hover{
    color:var(--black);
}

.filter.active::after{
    content:"";
    position:absolute;
    left:0;
    right:0;
    bottom:-1px;
    height:2px;
    background:var(--black);
}

.sort{
    background:transparent;
    border:0;
    color:#55534e;
    font-size:9px;
    letter-spacing:1px;
    text-transform:uppercase;
    outline:0;
}

/* =====================================================
PRODUCTS
===================================================== */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:24px;
}

.product{
    min-width:0;
}

.product-image{
    aspect-ratio:1 / 1.16;
    position:relative;
    overflow:hidden;
    background:#ebe8e1;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.6s ease;
}

.product:hover .product-image img{
    transform:scale(1.04);
}

.product-tag{
    position:absolute;
    top:13px;
    left:13px;
    z-index:2;
    background:var(--paper);
    padding:6px 8px;
    font-size:7px;
    letter-spacing:1px;
    text-transform:uppercase;
}

.product-tag.sale{
    background:var(--orange);
    color:#fff;
}

.heart{
    position:absolute;
    top:9px;
    right:9px;
    width:35px;
    height:35px;
    background:rgba(251,250,247,.9);
    display:grid;
    place-items:center;
    z-index:2;
    color:#777;
}

.heart.active{
    color:#b84e42;
}

.product-info{
    padding-top:14px;
}

.product-category{
    font-size:8px;
    color:#99968e;
    letter-spacing:1.4px;
    text-transform:uppercase;
}

.product-name{
    font-family:"Playfair Display",serif;
    font-size:19px;
    font-weight:500;
    margin:4px 0 7px;
}

.product-meta{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.stars{
    color:#ae8f50;
    font-size:9px;
}

.reviews{
    color:#99968e;
    font-size:8px;
    margin-left:4px;
}

.price{
    display:flex;
    align-items:center;
    gap:8px;
}

.current-price{
    font-size:12px;
    font-weight:700;
}

.old-price{
    color:#aaa7a0;
    font-size:10px;
    text-decoration:line-through;
}

.add{
    width:100%;
    margin-top:13px;
    height:40px;
    background:var(--black);
    color:#fff;
    font-size:8px;
    letter-spacing:1.3px;
    text-transform:uppercase;
    opacity:0;
    transform:translateY(6px);
    transition:var(--ease);
}

.product:hover .add{
    opacity:1;
    transform:none;
}

.add:hover{
    background:var(--gold);
    color:var(--black);
}

/* =====================================================
FEATURED STORY
===================================================== */

.story{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:520px;
    background:var(--cream);
}

.story-image{
    overflow:hidden;
}

.story-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.story-content{
    padding:70px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.story-content h2{
    font-family:"Playfair Display",serif;
    font-size:48px;
    font-weight:500;
    line-height:1.02;
    margin-bottom:22px;
}

.story-content p{
    max-width:440px;
    color:var(--muted);
    font-size:13px;
    line-height:1.9;
    margin-bottom:30px;
}

.story-link{
    width:max-content;
    font-size:9px;
    letter-spacing:1.5px;
    text-transform:uppercase;
    font-weight:700;
    border-bottom:1px solid var(--black);
    padding-bottom:7px;
}

/* =====================================================
DEAL
===================================================== */

.deal{
    background:var(--black);
    color:#fff;
    min-height:400px;
    display:grid;
    grid-template-columns:1fr 1fr;
}

.deal-copy{
    padding:60px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.deal-copy h2{
    font-family:"Playfair Display",serif;
    font-size:48px;
    font-weight:500;
    line-height:1;
    margin:8px 0 17px;
}

.deal-copy p{
    color:#a7a59f;
    max-width:390px;
    font-size:12px;
    line-height:1.8;
}

.countdown{
    display:flex;
    gap:7px;
    margin:27px 0;
}

.time{
    width:62px;
    height:62px;
    border:1px solid #44433e;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
}

.time strong{
    font-family:"Playfair Display",serif;
    font-size:21px;
    font-weight:500;
}

.time small{
    color:#77756f;
    font-size:7px;
    text-transform:uppercase;
    letter-spacing:1px;
}

.deal-image{
    overflow:hidden;
}

.deal-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    filter:saturate(.65);
}

/* =====================================================
REVIEWS
===================================================== */

.review-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:2px;
}

.review{
    background:var(--cream);
    padding:40px;
}

.review-stars{
    color:var(--gold);
    font-size:11px;
    margin-bottom:22px;
}

.review p{
    font-family:"Playfair Display",serif;
    font-size:21px;
    line-height:1.45;
    margin-bottom:30px;
}

.reviewer{
    display:flex;
    align-items:center;
    gap:11px;
}

.reviewer img{
    width:38px;
    height:38px;
    object-fit:cover;
    border-radius:50%;
}

.reviewer strong{
    display:block;
    font-size:9px;
    text-transform:uppercase;
    letter-spacing:1px;
}

.reviewer span{
    color:#99968e;
    font-size:8px;
}

/* =====================================================
NEWSLETTER
===================================================== */

.newsletter{
    background:var(--cream);
    padding:65px;
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:60px;
    align-items:center;
}

.newsletter h2{
    font-family:"Playfair Display",serif;
    font-size:42px;
    font-weight:500;
}

.newsletter p{
    color:var(--muted);
    font-size:12px;
    margin-top:9px;
}

.subscribe{
    display:flex;
    border-bottom:1px solid var(--black);
}

.subscribe input{
    border:0;
    outline:0;
    background:transparent;
    flex:1;
    padding:15px 0;
    font-size:11px;
}

.subscribe button{
    background:transparent;
    font-size:9px;
    font-weight:700;
    letter-spacing:1px;
    text-transform:uppercase;
}

/* =====================================================
FOOTER
===================================================== */

.footer{
    margin-top:105px;
    background:var(--black);
    color:#fff;
    padding:70px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr repeat(4,1fr);
    gap:40px;
}

.footer-brand p{
    color:#85837d;
    max-width:280px;
    font-size:11px;
    line-height:1.8;
    margin-top:17px;
}

.footer h4{
    font-size:9px;
    letter-spacing:1.5px;
    text-transform:uppercase;
    margin-bottom:18px;
}

.footer ul{
    list-style:none;
    display:grid;
    gap:10px;
}

.footer li a{
    color:#85837d;
    font-size:10px;
}

.footer li a:hover{
    color:#fff;
}

.socials{
    display:flex;
    gap:6px;
    margin-top:22px;
}

.socials a{
    width:31px;
    height:31px;
    border:1px solid #3a3935;
    display:grid;
    place-items:center;
    font-size:10px;
}

.footer-bottom{
    border-top:1px solid #302f2b;
    margin-top:55px;
    padding-top:20px;
    display:flex;
    justify-content:space-between;
    color:#686660;
    font-size:8px;
    letter-spacing:.5px;
}

/* =====================================================
CART DRAWER
===================================================== */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.5);
    z-index:1500;
    opacity:0;
    visibility:hidden;
    transition:.3s;
}

.overlay.show{
    opacity:1;
    visibility:visible;
}

.cart{
    position:fixed;
    right:0;
    top:0;
    bottom:0;
    width:min(430px,100%);
    background:var(--paper);
    z-index:1600;
    transform:translateX(100%);
    transition:.4s cubic-bezier(.2,.8,.2,1);
    display:flex;
    flex-direction:column;
}

.cart.open{
    transform:translateX(0);
}

.cart-head{
    padding:24px;
    border-bottom:1px solid var(--line);
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.cart-head h3{
    font-family:"Playfair Display",serif;
    font-size:24px;
    font-weight:500;
}

.close{
    width:35px;
    height:35px;
    background:var(--cream);
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px 24px;
}

.empty{
    text-align:center;
    color:var(--muted);
    padding:100px 20px;
}

.empty i{
    font-size:35px;
    margin-bottom:18px;
    color:#c6c2ba;
}

.empty h4{
    font-family:"Playfair Display",serif;
    color:var(--black);
    font-size:22px;
    font-weight:500;
}

.cart-item{
    display:grid;
    grid-template-columns:72px 1fr auto;
    gap:13px;
    padding:15px 0;
    border-bottom:1px solid var(--line);
    align-items:center;
}

.cart-item img{
    width:72px;
    height:82px;
    object-fit:cover;
}

.cart-item strong{
    font-family:"Playfair Display",serif;
    font-size:15px;
    font-weight:500;
}

.cart-item small{
    display:block;
    color:var(--muted);
    font-size:9px;
    margin-top:5px;
}

.remove{
    background:transparent;
    color:#999;
}

.cart-footer{
    border-top:1px solid var(--line);
    padding:22px 24px;
}

.cart-total{
    display:flex;
    justify-content:space-between;
    margin-bottom:17px;
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:1px;
}

.checkout{
    width:100%;
    height:50px;
    background:var(--black);
    color:#fff;
    font-size:9px;
    letter-spacing:1.5px;
    text-transform:uppercase;
}

.checkout:hover{
    background:var(--gold);
    color:var(--black);
}

/* =====================================================
TOAST
===================================================== */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,20px);
    background:var(--black);
    color:#fff;
    padding:13px 19px;
    font-size:9px;
    letter-spacing:1px;
    text-transform:uppercase;
    z-index:3000;
    opacity:0;
    pointer-events:none;
    transition:.3s;
}

.toast.show{
    opacity:1;
    transform:translate(-50%,0);
}

/* =====================================================
RESPONSIVE
===================================================== */

@media(max-width:1050px){

    .container{
        width:min(100% - 40px,1320px);
    }

    .nav{
        display:none;
    }

    .mobile-menu{
        display:grid;
        place-items:center;
        width:40px;
        height:40px;
        background:transparent;
        order:-1;
    }

    .header-inner{
        justify-content:flex-start;
    }

    .brand{
        margin-right:auto;
    }

    .hero-grid{
        grid-template-columns:1fr;
    }

    .hero-content{
        min-height:520px;
        padding:60px;
    }

    .hero-visual{
        height:480px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .story,
    .deal{
        grid-template-columns:1fr;
    }

    .story-image,
    .deal-image{
        height:450px;
    }

    .newsletter{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:2fr repeat(2,1fr);
    }
}

@media(max-width:700px){

    .container{
        width:calc(100% - 28px);
    }

    .top-strip{
        font-size:8px;
        letter-spacing:1px;
    }

    .header-inner{
        height:70px;
    }

    .brand{
        font-size:17px;
        letter-spacing:2px;
    }

    .header-actions .account{
        display:none;
    }

    .hero{
        padding-top:14px;
    }

    .hero-content{
        min-height:500px;
        padding:40px 27px;
    }

    .hero h1{
        font-size:49px;
    }

    .hero-copy{
        font-size:13px;
    }

    .hero-visual{
        height:330px;
    }

    .hero-card{
        right:14px;
        bottom:14px;
        width:190px;
    }

    .section{
        padding-top:70px;
    }

    .section-title{
        font-size:32px;
    }

    .section-top{
        align-items:flex-start;
        flex-direction:column;
        gap:15px;
    }

    .categories{
        grid-template-columns:1fr 1fr;
        gap:2px;
    }

    .category{
        height:220px;
    }

    .category-content{
        left:16px;
        bottom:16px;
    }

    .category-content h3{
        font-size:20px;
    }

    .shop-toolbar{
        overflow:auto;
    }

    .filters{
        gap:18px;
        min-width:max-content;
    }

    .products{
        grid-template-columns:1fr 1fr;
        gap:17px 10px;
    }

    .product-name{
        font-size:16px;
    }

    .add{
        opacity:1;
        transform:none;
    }

    .story-content{
        padding:40px 27px;
    }

    .story-content h2{
        font-size:39px;
    }

    .story-image,
    .deal-image{
        height:300px;
    }

    .deal-copy{
        padding:40px 27px;
    }

    .deal-copy h2{
        font-size:40px;
    }

    .review-grid{
        grid-template-columns:1fr;
        gap:2px;
    }

    .review{
        padding:30px;
    }

    .newsletter{
        padding:40px 27px;
    }

    .newsletter h2{
        font-size:35px;
    }

    .footer{
        margin-top:70px;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
        gap:35px 20px;
    }

    .footer-brand{
        grid-column:1/-1;
    }

    .footer-bottom{
        flex-direction:column;
        gap:7px;
    }
}

@media(max-width:430px){

    .hero h1{
        font-size:43px;
    }

    .hero-buttons{
        flex-direction:column;
        align-items:flex-start;
    }

    .categories{
        grid-template-columns:1fr 1fr;
    }

    .category{
        height:190px;
    }

    .products{
        gap:20px 8px;
    }

    .product-image{
        aspect-ratio:1 / 1.2;
    }

    .current-price{
        font-size:11px;
    }

    .old-price{
        display:none;
    }

    .countdown{
        gap:5px;
    }

    .time{
        width:57px;
        height:57px;
    }
}
</style>
</head>

<body>

<div class="top-strip">
    Complimentary shipping on orders over <span>&nbsp;$75</span>
</div>

<header class="header">
    <div class="container header-inner">

        <button class="mobile-menu" id="mobileMenu">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="brand">
            <span class="brand-symbol">N</span>
            Nexus
        </a>

        <nav class="nav">
            <a href="#" class="active">Home</a>
            <a href="#shop">Shop</a>
            <a href="#collections">Collections</a>
            <a href="#story">Our story</a>
            <a href="#reviews">Journal</a>
        </nav>

        <div class="header-actions">

            <button class="action account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="action" id="searchButton">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="action" id="wishlistButton">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="action" id="cartButton">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="badge" id="cartCount">0</span>
            </button>

        </div>

    </div>
</header>

<main>

<!-- HERO -->

<section class="hero">

    <div class="container">

        <div class="hero-grid">

            <div class="hero-content">

                <div class="hero-label">
                    The new collection
                </div>

                <h1>
                    Objects for a
                    <em>better</em> everyday.
                </h1>

                <p class="hero-copy">
                    A considered edit of technology, fashion and objects
                    designed to bring beauty and simplicity into everyday life.
                </p>

                <div class="hero-buttons">

                    <button class="btn btn-gold" onclick="scrollToShop()">
                        Explore collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-text" onclick="scrollToStory()">
                        Discover Nexus
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                </div>

            </div>

            <div class="hero-visual">

                <img
                    src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=90"
                    alt="Nexus curated store"
                >

                <div class="hero-card">

                    <div class="hero-card-label">
                        Featured edit
                    </div>

                    <h3>
                        Minimal essentials
                    </h3>

                    <a href="#shop">
                        Shop the edit
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- MARQUEE -->

<div class="marquee">

    <div class="marquee-track">

        <span>Curated design</span>
        <b>✦</b>
        <span>Thoughtful objects</span>
        <b>✦</b>
        <span>Free shipping over $75</span>
        <b>✦</b>
        <span>30 day returns</span>
        <b>✦</b>
        <span>Curated design</span>
        <b>✦</b>
        <span>Thoughtful objects</span>
        <b>✦</b>
        <span>Free shipping over $75</span>
        <b>✦</b>
        <span>30 day returns</span>

    </div>

</div>

<!-- COLLECTIONS -->

<section class="section" id="collections">

    <div class="container">

        <div class="section-top">

            <div>
                <div class="eyebrow">Browse the edit</div>
                <h2 class="section-title">
                    Shop by collection
                </h2>
                <p class="section-description">
                    Designed around the way you live.
                </p>
            </div>

            <a href="#shop" class="view-all">
                View everything
            </a>

        </div>

        <div class="categories">

            <div class="category" onclick="selectCategory('tech')">

                <img
                    src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85"
                    alt="Technology"
                >

                <div class="category-content">
                    <small>01</small>
                    <h3>Technology</h3>
                    <span>32 pieces</span>
                </div>

            </div>

            <div class="category" onclick="selectCategory('fashion')">

                <img
                    src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=85"
                    alt="Fashion"
                >

                <div class="category-content">
                    <small>02</small>
                    <h3>Fashion</h3>
                    <span>28 pieces</span>
                </div>

            </div>

            <div class="category" onclick="selectCategory('audio')">

                <img
                    src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85"
                    alt="Audio"
                >

                <div class="category-content">
                    <small>03</small>
                    <h3>Audio</h3>
                    <span>19 pieces</span>
                </div>

            </div>

            <div class="category" onclick="selectCategory('home')">

                <img
                    src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=900&q=85"
                    alt="Home"
                >

                <div class="category-content">
                    <small>04</small>
                    <h3>Home</h3>
                    <span>24 pieces</span>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- SHOP -->

<section class="section" id="shop">

    <div class="container">

        <div class="section-top">

            <div>
                <div class="eyebrow">The edit</div>
                <h2 class="section-title">
                    Considered essentials
                </h2>
                <p class="section-description">
                    The pieces everyone is talking about.
                </p>
            </div>

            <span class="view-all">
                <span id="productCount">0</span> products
            </span>

        </div>

        <div class="shop-toolbar">

            <div class="filters" id="filters"></div>

            <select class="sort" id="sortSelect">
                <option value="featured">Featured</option>
                <option value="low">Price low-high</option>
                <option value="high">Price high-low</option>
                <option value="rating">Top rated</option>
            </select>

        </div>

        <div class="products" id="products"></div>

    </div>

</section>

<!-- STORY -->

<section class="section" id="story">

    <div class="container">

        <div class="story">

            <div class="story-image">

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=1200&q=85"
                    alt="Nexus lifestyle"
                >

            </div>

            <div class="story-content">

                <div class="eyebrow">
                    Why Nexus
                </div>

                <h2>
                    Less noise.
                    More meaning.
                </h2>

                <p>
                    We believe shopping should feel less like scrolling
                    through endless options and more like discovering
                    something you genuinely want to keep.
                </p>

                <a href="#" class="story-link">
                    Read our story
                </a>

            </div>

        </div>

    </div>

</section>

<!-- DEAL -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-copy">

                <div class="eyebrow">
                    Limited edit
                </div>

                <h2>
                    Up to 40% off.
                </h2>

                <p>
                    A small selection of exceptional pieces,
                    available for a limited time.
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
                        <small>Min</small>
                    </div>

                    <div class="time">
                        <strong id="seconds">00</strong>
                        <small>Sec</small>
                    </div>

                </div>

                <button class="btn btn-gold" onclick="scrollToShop()">
                    Shop the edit
                </button>

            </div>

            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="Premium laptop"
                >

            </div>

        </div>

    </div>

</section>

<!-- REVIEWS -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-top">

            <div>
                <div class="eyebrow">Kind words</div>
                <h2 class="section-title">
                    From our community
                </h2>
            </div>

        </div>

        <div class="review-grid" id="reviewsGrid"></div>

    </div>

</section>

<!-- NEWSLETTER -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>

                <div class="eyebrow">
                    The Nexus letter
                </div>

                <h2>
                    Good things,
                    occasionally.
                </h2>

                <p>
                    New collections, thoughtful finds and private offers.
                </p>

            </div>

            <form class="subscribe" id="newsletterForm">

                <input
                    id="emailInput"
                    type="email"
                    placeholder="Email address"
                    required
                >

                <button>
                    Subscribe →
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

                <a href="#" class="brand">
                    <span class="brand-symbol">N</span>
                    Nexus
                </a>

                <p>
                    A considered marketplace for things worth having,
                    using and keeping.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-pinterest-p"></i>
                    </a>

                </div>

            </div>

            <div>
                <h4>Shop</h4>
                <ul>
                    <li><a href="#shop">All products</a></li>
                    <li><a href="#collections">Collections</a></li>
                    <li><a href="#deals">Sale</a></li>
                    <li><a href="#">New arrivals</a></li>
                </ul>
            </div>

            <div>
                <h4>About</h4>
                <ul>
                    <li><a href="#story">Our story</a></li>
                    <li><a href="#">Journal</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Stockists</a></li>
                </ul>
            </div>

            <div>
                <h4>Help</h4>
                <ul>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">FAQ</a></li>
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
            <span>© <span id="year"></span> Nexus</span>
            <span>Made for modern living.</span>
        </div>

    </div>

</footer>

<!-- CART -->

<div class="overlay" id="overlay"></div>

<aside class="cart" id="
```
