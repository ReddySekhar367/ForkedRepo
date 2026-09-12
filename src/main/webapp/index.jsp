<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS — Curated Living</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,500;0,600;1,500;1,600&display=swap" rel="stylesheet">

<style>
:root{
  --cream:#f4f0e8;
  --paper:#faf8f3;
  --white:#fff;
  --black:#171714;
  --muted:#77736a;
  --line:#ddd8ce;
  --accent:#b66b42;
  --green:#58634e;
  --serif:"Playfair Display",serif;
  --sans:"DM Sans",sans-serif;
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
  font-family:var(--sans);
  overflow-x:hidden;
}

button,
input{
  font:inherit;
}

button{
  cursor:pointer;
}

img{
  width:100%;
  display:block;
}

a{
  color:inherit;
  text-decoration:none;
}

/* =========================
   TOP BAR
========================= */

.topbar{
  background:var(--black);
  color:#fff;
  height:34px;
  display:flex;
  align-items:center;
  justify-content:center;
  font-size:11px;
  letter-spacing:1.5px;
  text-transform:uppercase;
}

/* =========================
   HEADER
========================= */

header{
  position:relative;
  z-index:20;
  background:rgba(250,248,243,.94);
  border-bottom:1px solid var(--line);
}

.nav{
  height:82px;
  max-width:1440px;
  margin:auto;
  padding:0 42px;
  display:grid;
  grid-template-columns:1fr auto 1fr;
  align-items:center;
}

.logo{
  font-size:24px;
  font-weight:700;
  letter-spacing:7px;
}

.logo span{
  font-family:var(--serif);
  font-weight:500;
  letter-spacing:0;
}

.nav-center{
  display:flex;
  gap:34px;
  font-size:12px;
  text-transform:uppercase;
  letter-spacing:1.3px;
}

.nav-center a{
  position:relative;
}

.nav-center a::after{
  content:"";
  position:absolute;
  left:0;
  bottom:-8px;
  width:0;
  height:1px;
  background:var(--black);
  transition:.3s;
}

.nav-center a:hover::after{
  width:100%;
}

.nav-right{
  display:flex;
  justify-content:flex-end;
  align-items:center;
  gap:10px;
}

.icon-btn{
  width:42px;
  height:42px;
  border:1px solid var(--line);
  background:transparent;
  border-radius:50%;
  display:flex;
  align-items:center;
  justify-content:center;
  transition:.3s;
}

.icon-btn:hover{
  background:var(--black);
  color:#fff;
}

.cart-count{
  position:absolute;
  margin:-32px 0 0 28px;
  width:17px;
  height:17px;
  background:var(--accent);
  color:white;
  border-radius:50%;
  font-size:9px;
  display:flex;
  justify-content:center;
  align-items:center;
}

/* =========================
   HERO
========================= */

.hero{
  max-width:1440px;
  margin:auto;
  padding:30px 42px 80px;
}

.hero-grid{
  min-height:650px;
  display:grid;
  grid-template-columns:42% 58%;
  gap:30px;
}

.hero-copy{
  display:flex;
  flex-direction:column;
  justify-content:center;
  padding:30px 30px 30px 5%;
}

.eyebrow{
  font-size:11px;
  letter-spacing:2px;
  text-transform:uppercase;
  color:var(--muted);
  margin-bottom:24px;
}

.hero h1{
  font-family:var(--serif);
  font-size:clamp(64px,7vw,112px);
  line-height:.88;
  font-weight:500;
  letter-spacing:-4px;
}

.hero h1 em{
  color:var(--accent);
  font-weight:500;
}

.hero-text{
  max-width:380px;
  margin-top:35px;
  color:var(--muted);
  font-size:15px;
  line-height:1.8;
}

.hero-actions{
  display:flex;
  gap:12px;
  margin-top:35px;
}

.btn{
  border:1px solid var(--black);
  padding:15px 26px;
  background:var(--black);
  color:#fff;
  text-transform:uppercase;
  letter-spacing:1.3px;
  font-size:10px;
  transition:.3s;
}

.btn:hover{
  background:transparent;
  color:var(--black);
}

.btn-light{
  background:transparent;
  color:var(--black);
}

.btn-light:hover{
  background:var(--black);
  color:#fff;
}

.hero-image{
  position:relative;
  overflow:hidden;
  min-height:650px;
}

.hero-image img{
  height:100%;
  object-fit:cover;
}

.hero-label{
  position:absolute;
  right:24px;
  bottom:24px;
  background:var(--paper);
  padding:20px 24px;
  width:220px;
}

.hero-label small{
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1.5px;
  color:var(--muted);
}

.hero-label strong{
  display:block;
  margin-top:7px;
  font-family:var(--serif);
  font-size:22px;
  font-weight:500;
}

/* =========================
   INTRO STRIP
========================= */

.intro{
  border-top:1px solid var(--line);
  border-bottom:1px solid var(--line);
  padding:28px 42px;
}

.intro-inner{
  max-width:1440px;
  margin:auto;
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:30px;
}

.intro-text{
  font-family:var(--serif);
  font-size:24px;
}

.intro-meta{
  display:flex;
  gap:30px;
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1.4px;
  color:var(--muted);
}

/* =========================
   SECTION
========================= */

.section{
  max-width:1440px;
  margin:auto;
  padding:110px 42px;
}

.section-head{
  display:flex;
  justify-content:space-between;
  align-items:flex-end;
  margin-bottom:45px;
}

.section-title{
  font-family:var(--serif);
  font-size:58px;
  line-height:1;
  font-weight:500;
}

.section-title span{
  color:var(--muted);
  font-style:italic;
}

.section-link{
  font-size:11px;
  text-transform:uppercase;
  letter-spacing:1.4px;
  border-bottom:1px solid var(--black);
  padding-bottom:7px;
}

/* =========================
   COLLECTIONS
========================= */

.collections{
  display:grid;
  grid-template-columns:1.5fr 1fr 1fr;
  gap:16px;
}

.collection{
  position:relative;
  height:520px;
  overflow:hidden;
  background:#ddd;
}

.collection:nth-child(2){
  margin-top:65px;
  height:455px;
}

.collection:nth-child(3){
  margin-top:130px;
  height:390px;
}

.collection img{
  height:100%;
  object-fit:cover;
  transition:transform .7s ease;
}

.collection:hover img{
  transform:scale(1.05);
}

.collection-overlay{
  position:absolute;
  inset:0;
  display:flex;
  flex-direction:column;
  justify-content:flex-end;
  padding:30px;
  background:linear-gradient(transparent 45%,rgba(0,0,0,.55));
  color:#fff;
}

.collection-number{
  font-size:10px;
  letter-spacing:2px;
  margin-bottom:8px;
}

.collection-title{
  font-family:var(--serif);
  font-size:34px;
}

/* =========================
   SHOP
========================= */

.shop{
  background:var(--cream);
  max-width:none;
}

.shop-inner{
  max-width:1440px;
  margin:auto;
  padding:110px 42px;
}

.shop-toolbar{
  display:flex;
  justify-content:space-between;
  align-items:center;
  border-top:1px solid var(--line);
  border-bottom:1px solid var(--line);
  padding:16px 0;
  margin-bottom:38px;
}

.filters{
  display:flex;
  gap:8px;
  flex-wrap:wrap;
}

.filter{
  border:1px solid var(--line);
  background:transparent;
  padding:9px 15px;
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1px;
  transition:.2s;
}

.filter:hover,
.filter.active{
  background:var(--black);
  border-color:var(--black);
  color:#fff;
}

.sort{
  border:0;
  background:transparent;
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1px;
  outline:none;
}

.products{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:22px;
}

.product{
  position:relative;
  min-width:0;
}

.product-image{
  position:relative;
  height:420px;
  overflow:hidden;
  background:#e5e0d7;
}

.product-image img{
  height:100%;
  object-fit:cover;
  transition:transform .6s ease;
}

.product:hover .product-image img{
  transform:scale(1.04);
}

.product-tag{
  position:absolute;
  top:15px;
  left:15px;
  background:#fff;
  padding:7px 10px;
  font-size:9px;
  letter-spacing:1px;
  text-transform:uppercase;
}

.wishlist{
  position:absolute;
  top:13px;
  right:13px;
  width:36px;
  height:36px;
  border:0;
  border-radius:50%;
  background:#fff;
  font-size:17px;
}

.wishlist.active{
  color:var(--accent);
}

.add{
  position:absolute;
  bottom:14px;
  left:14px;
  right:14px;
  border:0;
  background:var(--black);
  color:#fff;
  padding:13px;
  text-transform:uppercase;
  font-size:9px;
  letter-spacing:1.5px;
  opacity:0;
  transform:translateY(10px);
  transition:.3s;
}

.product:hover .add{
  opacity:1;
  transform:translateY(0);
}

.product-info{
  padding:18px 2px 0;
}

.product-category{
  color:var(--muted);
  text-transform:uppercase;
  font-size:9px;
  letter-spacing:1.4px;
}

.product-name{
  font-family:var(--serif);
  font-size:23px;
  margin-top:5px;
}

.product-bottom{
  display:flex;
  justify-content:space-between;
  align-items:center;
  margin-top:8px;
}

.price{
  font-size:12px;
  font-weight:600;
}

.product-note{
  color:var(--muted);
  font-size:10px;
}

/* =========================
   FEATURE STORY
========================= */

.story{
  max-width:1440px;
  margin:auto;
  padding:120px 42px;
}

.story-grid{
  display:grid;
  grid-template-columns:55% 45%;
  min-height:650px;
}

.story-image{
  overflow:hidden;
}

.story-image img{
  height:100%;
  object-fit:cover;
}

.story-copy{
  background:var(--green);
  color:#fff;
  padding:80px 9%;
  display:flex;
  flex-direction:column;
  justify-content:center;
}

.story-copy .eyebrow{
  color:#d5d8ce;
}

.story-copy h2{
  font-family:var(--serif);
  font-size:64px;
  line-height:.95;
  font-weight:500;
}

.story-copy p{
  margin-top:30px;
  max-width:420px;
  line-height:1.8;
  color:#e1e3dd;
  font-size:14px;
}

.story-copy .btn{
  width:max-content;
  margin-top:32px;
  border-color:#fff;
}

.story-copy .btn:hover{
  background:#fff;
  color:var(--green);
}

/* =========================
   FEATURED STATEMENT
========================= */

.statement{
  text-align:center;
  padding:100px 20px;
  border-top:1px solid var(--line);
}

.statement p{
  max-width:900px;
  margin:auto;
  font-family:var(--serif);
  font-size:clamp(34px,4.5vw,65px);
  line-height:1.12;
}

.statement em{
  color:var(--accent);
}

/* =========================
   DEAL
========================= */

.deal{
  background:var(--black);
  color:#fff;
  padding:100px 42px;
}

.deal-inner{
  max-width:1200px;
  margin:auto;
  text-align:center;
}

.deal h2{
  font-family:var(--serif);
  font-size:70px;
  font-weight:500;
}

.deal p{
  color:#aaa;
  margin:15px auto 35px;
  max-width:450px;
  line-height:1.7;
}

.timer{
  display:flex;
  justify-content:center;
  gap:14px;
}

.time{
  width:85px;
  border:1px solid #393939;
  padding:15px;
}

.time strong{
  display:block;
  font-family:var(--serif);
  font-size:30px;
}

.time span{
  font-size:8px;
  text-transform:uppercase;
  letter-spacing:1px;
  color:#888;
}

/* =========================
   REVIEWS
========================= */

.reviews{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:20px;
}

.review{
  border-top:1px solid var(--line);
  padding-top:25px;
}

.stars{
  letter-spacing:3px;
  font-size:11px;
}

.review p{
  font-family:var(--serif);
  font-size:25px;
  line-height:1.35;
  margin:25px 0;
}

.review small{
  color:var(--muted);
  text-transform:uppercase;
  font-size:9px;
  letter-spacing:1.4px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter{
  background:#e8e2d6;
  padding:90px 30px;
  text-align:center;
}

.newsletter h2{
  font-family:var(--serif);
  font-size:56px;
  font-weight:500;
}

.newsletter p{
  margin:14px auto 30px;
  color:var(--muted);
  max-width:450px;
  line-height:1.6;
}

.newsletter-form{
  max-width:500px;
  margin:auto;
  display:flex;
  border-bottom:1px solid var(--black);
}

.newsletter-form input{
  flex:1;
  border:0;
  background:transparent;
  outline:none;
  padding:15px 0;
}

.newsletter-form button{
  border:0;
  background:transparent;
  text-transform:uppercase;
  font-size:9px;
  letter-spacing:1.4px;
}

/* =========================
   FOOTER
========================= */

footer{
  background:var(--paper);
  padding:70px 42px 30px;
}

.footer-grid{
  max-width:1440px;
  margin:auto;
  display:grid;
  grid-template-columns:2fr 1fr 1fr 1fr;
  gap:40px;
  padding-bottom:60px;
}

.footer-brand .logo{
  font-size:28px;
}

.footer-brand p{
  max-width:300px;
  color:var(--muted);
  line-height:1.7;
  margin-top:20px;
  font-size:13px;
}

.footer-col h4{
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1.5px;
  margin-bottom:20px;
}

.footer-col a{
  display:block;
  color:var(--muted);
  font-size:12px;
  margin:11px 0;
}

.footer-col a:hover{
  color:var(--black);
}

.footer-bottom{
  max-width:1440px;
  margin:auto;
  border-top:1px solid var(--line);
  padding-top:20px;
  display:flex;
  justify-content:space-between;
  color:var(--muted);
  font-size:9px;
  text-transform:uppercase;
  letter-spacing:1px;
}

/* =========================
   CART
========================= */

.cart-overlay{
  position:fixed;
  inset:0;
  background:rgba(0,0,0,.45);
  opacity:0;
  visibility:hidden;
  transition:.3s;
  z-index:90;
}

.cart-overlay.open{
  opacity:1;
  visibility:visible;
}

.cart{
  position:absolute;
  top:0;
  right:0;
  width:min(450px,100%);
  height:100%;
  background:var(--paper);
  transform:translateX(100%);
  transition:.4s ease;
  padding:28px;
  display:flex;
  flex-direction:column;
}

.cart-overlay.open .cart{
  transform:translateX(0);
}

.cart-head{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding-bottom:25px;
  border-bottom:1px solid var(--line);
}

.cart-head h3{
  font-family:var(--serif);
  font-size:30px;
  font-weight:500;
}

.close{
  border:0;
  background:transparent;
  font-size:25px;
}

.cart-items{
  flex:1;
  overflow:auto;
  padding:20px 0;
}

.cart-item{
  display:grid;
  grid-template-columns:80px 1fr auto;
  gap:15px;
  align-items:center;
  margin-bottom:20px;
}

.cart-item img{
  height:90px;
  object-fit:cover;
}

.cart-item h4{
  font-family:var(--serif);
  font-size:17px;
  font-weight:500;
}

.cart-item small{
  display:block;
  color:var(--muted);
  margin-top:5px;
}

.remove{
  border:0;
  background:transparent;
  color:var(--accent);
  font-size:10px;
}

.cart-total{
  border-top:1px solid var(--line);
  padding-top:22px;
}

.total-row{
  display:flex;
  justify-content:space-between;
  margin-bottom:20px;
}

.checkout{
  width:100%;
}

/* =========================
   SEARCH
========================= */

.search-overlay{
  position:fixed;
  inset:0;
  background:var(--paper);
  z-index:100;
  padding:40px;
  opacity:0;
  visibility:hidden;
  transition:.3s;
}

.search-overlay.open{
  opacity:1;
  visibility:visible;
}

.search-top{
  max-width:1200px;
  margin:auto;
  display:flex;
  justify-content:flex-end;
}

.search-box{
  max-width:900px;
  margin:100px auto;
}

.search-box small{
  text-transform:uppercase;
  letter-spacing:2px;
  font-size:10px;
  color:var(--muted);
}

.search-input{
  width:100%;
  border:0;
  border-bottom:1px solid var(--black);
  background:transparent;
  font-family:var(--serif);
  font-size:65px;
  padding:20px 0;
  outline:none;
}

.search-results{
  margin-top:25px;
  color:var(--muted);
}

/* =========================
   TOAST
========================= */

.toast{
  position:fixed;
  bottom:25px;
  left:50%;
  transform:translate(-50%,30px);
  background:var(--black);
  color:#fff;
  padding:13px 20px;
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:1px;
  opacity:0;
  pointer-events:none;
  transition:.3s;
  z-index:200;
}

.toast.show{
  opacity:1;
  transform:translate(-50%,0);
}

/* =========================
   MOBILE
========================= */

@media(max-width:1000px){

  .nav{
    grid-template-columns:1fr auto;
    padding:0 20px;
  }

  .nav-center{
    display:none;
  }

  .hero{
    padding:20px 20px 60px;
  }

  .hero-grid{
    grid-template-columns:1fr;
  }

  .hero-copy{
    padding:60px 10px;
  }

  .hero-image{
    min-height:520px;
  }

  .intro{
    padding:25px 20px;
  }

  .intro-inner{
    flex-direction:column;
    align-items:flex-start;
  }

  .section,
  .story{
    padding:80px 20px;
  }

  .collections{
    grid-template-columns:1fr;
  }

  .collection,
  .collection:nth-child(2),
  .collection:nth-child(3){
    margin:0;
    height:500px;
  }

  .shop-inner{
    padding:80px 20px;
  }

  .products{
    grid-template-columns:repeat(2,1fr);
  }

  .product-image{
    height:360px;
  }

  .story-grid{
    grid-template-columns:1fr;
  }

  .story-image{
    min-height:500px;
  }

  .story-copy{
    padding:65px 30px;
  }

  .reviews{
    grid-template-columns:1fr;
  }

  .footer-grid{
    grid-template-columns:1fr 1fr;
  }
}

@media(max-width:600px){

  .topbar{
    font-size:9px;
  }

  .nav{
    height:70px;
  }

  .logo{
    font-size:20px;
  }

  .hero h1{
    font-size:65px;
    letter-spacing:-2px;
  }

  .hero-image{
    min-height:420px;
  }

  .hero-label{
    right:12px;
    bottom:12px;
  }

  .section-title{
    font-size:45px;
  }

  .section-head{
    align-items:flex-start;
    flex-direction:column;
    gap:20px;
  }

  .products{
    grid-template-columns:1fr;
  }

  .product-image{
    height:430px;
  }

  .add{
    opacity:1;
    transform:none;
  }

  .story-copy h2{
    font-size:48px;
  }

  .deal h2{
    font-size:48px;
  }

  .timer{
    gap:5px;
  }

  .time{
    width:70px;
  }

  .newsletter h2{
    font-size:43px;
  }

  .search-input{
    font-size:40px;
  }

  .footer-grid{
    grid-template-columns:1fr;
  }

  .footer-bottom{
    flex-direction:column;
    gap:10px;
  }
}
</style>
</head>

<body>

<!-- TOP BAR -->
<div class="topbar">
  Complimentary shipping on orders over $150
</div>

<!-- HEADER -->
<header>
  <nav class="nav">

    <a href="#" class="logo">
      NEXUS<span>.</span>
    </a>

    <div class="nav-center">
      <a href="#collections">Collections</a>
      <a href="#shop">Shop</a>
      <a href="#story">Our Story</a>
      <a href="#reviews">Journal</a>
    </div>

    <div class="nav-right">

      <button class="icon-btn" onclick="openSearch()" aria-label="Search">
        ⌕
      </button>

      <button class="icon-btn" onclick="openCart()" aria-label="Cart">
        ♧
        <span class="cart-count" id="cartCount">0</span>
      </button>

    </div>

  </nav>
</header>


<!-- HERO -->
<section class="hero">

  <div class="hero-grid">

    <div class="hero-copy">

      <div class="eyebrow">
        Issue No. 08 — The New Domestic
      </div>

      <h1>
        Live<br>
        <em>beautifully.</em>
      </h1>

      <p class="hero-text">
        Thoughtful objects for the spaces where life happens.
        Designed slowly. Chosen carefully. Made to stay.
      </p>

      <div class="hero-actions">
        <a href="#shop" class="btn">Shop collection</a>
        <a href="#story" class="btn btn-light">Our philosophy</a>
      </div>

    </div>

    <div class="hero-image">

      <img
        src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=1400&q=85"
        alt="Curated interior">

      <div class="hero-label">
        <small>Featured space</small>
        <strong>The quiet room</strong>
      </div>

    </div>

  </div>

</section>


<!-- INTRO -->
<section class="intro">

  <div class="intro-inner">

    <div class="intro-text">
      Objects with a reason to exist.
    </div>

    <div class="intro-meta">
      <span>01 / Design</span>
      <span>02 / Material</span>
      <span>03 / Longevity</span>
    </div>

  </div>

</section>


<!-- COLLECTIONS -->
<section class="section" id="collections">

  <div class="section-head">

    <h2 class="section-title">
      Collections <span>for living</span>
    </h2>

    <a href="#shop" class="section-link">
      Explore all
    </a>

  </div>


  <div class="collections">

    <a class="collection" href="#shop">

      <img
        src="https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?auto=format&fit=crop&w=1200&q=85"
        alt="Living collection">

      <div class="collection-overlay">
        <div class="collection-number">01 — Living</div>
        <div class="collection-title">The Home Edit</div>
      </div>

    </a>


    <a class="collection" href="#shop">

      <img
        src="https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=1000&q=85"
        alt="Objects collection">

      <div class="collection-overlay">
        <div class="collection-number">02 — Objects</div>
        <div class="collection-title">Small Things</div>
      </div>

    </a>


    <a class="collection" href="#shop">

      <img
        src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=1000&q=85"
        alt="Carry collection">

      <div class="collection-overlay">
        <div class="collection-number">03 — Carry</div>
        <div class="collection-title">Go Lightly</div>
      </div>

    </a>

  </div>

</section>


<!-- SHOP -->
<section class="shop" id="shop">

  <div class="shop-inner">

    <div class="section-head">

      <h2 class="section-title">
        The <span>edit</span>
      </h2>

      <div class="section-link">
        08 selected objects
      </div>

    </div>


    <div class="shop-toolbar">

      <div class="filters">

        <button class="filter active" data-filter="all">
          All
        </button>

        <button class="filter" data-filter="objects">
          Objects
        </button>

        <button class="filter" data-filter="living">
          Living
        </button>

        <button class="filter" data-filter="carry">
          Carry
        </button>

      </div>


      <select class="sort" id="sort">

        <option value="featured">
          Featured
        </option>

        <option value="low">
          Price: Low
        </option>

        <option value="high">
          Price: High
        </option>

      </select>

    </div>


    <div class="products" id="products">

      <!-- PRODUCT 1 -->
      <article
        class="product"
        data-category="objects"
        data-price="148"
        data-name="Form 01">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=900&q=85"
            alt="Form 01">

          <span class="product-tag">
            New
          </span>

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Form 01',148,'https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Objects
          </div>

          <div class="product-name">
            Form 01
          </div>

          <div class="product-bottom">
            <div class="price">$148</div>
            <div class="product-note">Hand finished</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 2 -->
      <article
        class="product"
        data-category="living"
        data-price="220"
        data-name="Halo Light">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=900&q=85"
            alt="Halo Light">

          <span class="product-tag">
            Best seller
          </span>

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Halo Light',220,'https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Living
          </div>

          <div class="product-name">
            Halo Light
          </div>

          <div class="product-bottom">
            <div class="price">$220</div>
            <div class="product-note">Soft illumination</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 3 -->
      <article
        class="product"
        data-category="carry"
        data-price="185"
        data-name="Mono Pack">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=85"
            alt="Mono Pack">

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Mono Pack',185,'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Carry
          </div>

          <div class="product-name">
            Mono Pack
          </div>

          <div class="product-bottom">
            <div class="price">$185</div>
            <div class="product-note">Everyday carry</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 4 -->
      <article
        class="product"
        data-category="objects"
        data-price="96"
        data-name="Arc Tray">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=900&q=85"
            alt="Arc Tray">

          <span class="product-tag">
            New
          </span>

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Arc Tray',96,'https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Objects
          </div>

          <div class="product-name">
            Arc Tray
          </div>

          <div class="product-bottom">
            <div class="price">$96</div>
            <div class="product-note">Solid material</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 5 -->
      <article
        class="product"
        data-category="living"
        data-price="124"
        data-name="Vessel 02">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?auto=format&fit=crop&w=900&q=85"
            alt="Vessel 02">

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Vessel 02',124,'https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Living
          </div>

          <div class="product-name">
            Vessel 02
          </div>

          <div class="product-bottom">
            <div class="price">$124</div>
            <div class="product-note">Ceramic studio</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 6 -->
      <article
        class="product"
        data-category="carry"
        data-price="72"
        data-name="Field Bottle">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=900&q=85"
            alt="Field Bottle">

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Field Bottle',72,'https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Carry
          </div>

          <div class="product-name">
            Field Bottle
          </div>

          <div class="product-bottom">
            <div class="price">$72</div>
            <div class="product-note">Made for movement</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 7 -->
      <article
        class="product"
        data-category="objects"
        data-price="164"
        data-name="Stone Clock">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1501139083538-0139583c060f?auto=format&fit=crop&w=900&q=85"
            alt="Stone Clock">

          <span class="product-tag">
            Limited
          </span>

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Stone Clock',164,'https://images.unsplash.com/photo-1501139083538-0139583c060f?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Objects
          </div>

          <div class="product-name">
            Stone Clock
          </div>

          <div class="product-bottom">
            <div class="price">$164</div>
            <div class="product-note">Quiet mechanism</div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 8 -->
      <article
        class="product"
        data-category="living"
        data-price="390"
        data-name="Soft Chair">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=900&q=85"
            alt="Soft Chair">

          <span class="product-tag">
            Signature
          </span>

          <button class="wishlist">
            ♡
          </button>

          <button
            class="add"
            onclick="addToCart('Soft Chair',390,'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=500&q=80')">
            Add to bag
          </button>

        </div>

        <div class="product-info">

          <div class="product-category">
            Living
          </div>

          <div class="product-name">
            Soft Chair
          </div>

          <div class="product-bottom">
            <div class="price">$390</div>
            <div class="product-note">Deep comfort</div>
          </div>

        </div>

      </article>

    </div>

  </div>

</section>


<!-- STORY -->
<section class="story" id="story">

  <div class="story-grid">

    <div class="story-image">

      <img
        src="https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=1300&q=85"
        alt="Nexus interior">

    </div>

    <div class="story-copy">

      <div class="eyebrow">
        Our philosophy
      </div>

      <h2>
        Less,<br>
        but better.
      </h2>

      <p>
        Nexus began with a simple question:
        what if everything we brought into our homes
        had a reason to be there?
      </p>

      <p>
        We work with designers, craftspeople and
        independent studios to find objects that
        balance function, material and feeling.
      </p>

      <a href="#reviews" class="btn">
        Read our story
      </a>

    </div>

  </div>

</section>


<!-- STATEMENT -->
<section class="statement">

  <p>
    “A home should not be filled with things.
    It should be filled with <em>meaning.</em>”
  </p>

</section>


<!-- DEAL -->
<section class="deal">

  <div class="deal-inner">

    <div class="eyebrow">
      This week's edit
    </div>

    <h2>
      20% off selected pieces.
    </h2>

    <p>
      A small selection of our favorite objects,
      available at a special price for a limited time.
    </p>

    <div class="timer">

      <div class="time">
        <strong id="days">02</strong>
        <span>Days</span>
      </div>

      <div class="time">
        <strong id="hours">08</strong>
        <span>Hours</span>
      </div>

      <div class="time">
        <strong id="minutes">41</strong>
        <span>Minutes</span>
      </div>

      <div class="time">
        <strong id="seconds">20</strong>
        <span>Seconds</span>
      </div>

    </div>

  </div>

</section>


<!-- REVIEWS -->
<section class="section" id="reviews">

  <div class="section-head">

    <h2 class="section-title">
      Words <span>from home</span>
    </h2>

  </div>

  <div class="reviews">

    <div class="review">

      <div class="stars">
        ★★★★★
      </div>

      <p>
        “The kind of store where you want
        to buy everything.”
      </p>

      <small>
        — Maya R.
      </small>

    </div>


    <div class="review">

      <div class="stars">
        ★★★★★
      </div>

      <p>
        “Beautiful objects, beautifully
        presented. Nexus gets it.”
      </p>

      <small>
        — Daniel K.
      </small>

    </div>


    <div class="review">

      <div class="stars">
        ★★★★★
      </div>

      <p>
        “Everything feels intentional.
        Nothing feels unnecessary.”
      </p>

      <small>
        — Sofia L.
      </small>

    </div>

  </div>

</section>


<!-- NEWSLETTER -->
<section class="newsletter">

  <div class="eyebrow">
    The Nexus Journal
  </div>

  <h2>
    Good things, occasionally.
  </h2>

  <p>
    New collections, studio stories and
    considered recommendations — delivered
    without the noise.
  </p>

  <form class="newsletter-form" onsubmit="subscribe(event)">

    <input
      type="email"
      id="email"
      placeholder="Your email address"
      required>

    <button>
      Subscribe →
    </button>

  </form>

</section>


<!-- FOOTER -->
<footer>

  <div class="footer-grid">

    <div class="footer-brand">

      <div class="logo">
        NEXUS<span>.</span>
      </div>

      <p>
        Curated objects for modern living.
        Designed to become part of your life,
        not simply part of your room.
      </p>

    </div>


    <div class="footer-col">

      <h4>Shop</h4>

      <a href="#shop">All products</a>
      <a href="#shop">Objects</a>
      <a href="#shop">Living</a>
      <a href="#shop">Carry</a>

    </div>


    <div class="footer-col">

      <h4>About</h4>

      <a href="#story">Our story</a>
      <a href="#reviews">Reviews</a>
      <a href="#">Journal</a>
      <a href="#">Contact</a>

    </div>


    <div class="footer-col">

      <h4>Help</h4>

      <a href="#">Shipping</a>
      <a href="#">Returns</a>
      <a href="#">FAQ</a>
      <a href="#">Privacy</a>

    </div>

  </div>


  <div class="footer-bottom">

    <span>
      © 2026 Nexus Studio
    </span>

    <span>
      Made for considered living
    </span>

  </div>

</footer>


<!-- CART -->
<div class="cart-overlay" id="cartOverlay">

  <aside class="cart">

    <div class="cart-head">

      <h3>Your bag</h3>

      <button class="close" onclick="closeCart()">
        ×
      </button>

    </div>

    <div class="cart-items" id="cartItems">

      <p style="color:#777;font-size:13px;">
        Your bag is empty.
      </p>

    </div>

    <div class="cart-total">

      <div class="total-row">

        <span>Subtotal</span>

        <strong id="cartTotal">
          $0
        </strong>

      </div>

      <button
        class="btn checkout"
        onclick="checkout()">
        Checkout
      </button>

    </div>

  </aside>

</div>


<!-- SEARCH -->
<div class="search-overlay" id="searchOverlay">

  <div class="search-top">

    <button class="close" onclick="closeSearch">
      ×
    </button>

  </div>

  <div class="search-box">

    <small>
      Search Nexus
    </small>

    <input
      class="search-input"
      id="searchInput"
      type="text"
      placeholder="What are you looking for?">

    <div
      class="search-results"
      id="searchResults">
      Start typing to search the collection.
    </div>

  </div>

</div>


<!-- TOAST -->
<div class="toast" id="toast">
  Added to your bag
</div>


<script>

/* =========================
   CART
========================= */

let cart = [];


function addToCart(name, price, image){

  cart.push({
    name,
    price,
    image
  });

  updateCart();

  showToast(name + " added to bag");

  openCart();
}


function updateCart(){

  const count = document.getElementById("cartCount");

  count.textContent = cart.length;


  const items = document.getElementById("cartItems");


  if(cart.length === 0){

    items.innerHTML = `
      <p style="color:#777;font-size:13px;">
        Your bag is empty.
      </p>
    `;

  }else{

    items.innerHTML = cart.map((item,index)=>`

      <div class="cart-item">

        <img src="${item.image}" alt="${item.name}">

        <div>
          <h4>${item.name}</h4>
          <small>$${item.price}</small>
        </div>

        <button
          class="remove"
          onclick="removeItem(${index})">
          Remove
        </button>

      </div>

    `).join("");

  }


  const total = cart.reduce(
    (sum,item)=>sum + item.price,
    0
  );

  document.getElementById("cartTotal").textContent =
    "$" + total.toFixed(0);

}


function removeItem(index){

  cart.splice(index,1);

  updateCart();

}


function openCart(){

  document
    .getElementById("cartOverlay")
    .classList.add("open");

}


function closeCart(){

  document
    .getElementById("cartOverlay")
    .classList.remove("open");

}


function checkout(){

  if(cart.length === 0){

    showToast("Your bag is empty");

    return;
  }

  showToast("Checkout coming soon");

}


/* =========================
   FILTER
========================= */

const filters =
  document.querySelectorAll(".filter");

const products =
  document.querySelectorAll(".product");


filters.forEach(filter=>{

  filter.addEventListener("click",()=>{

    filters.forEach(x=>
      x.classList.remove("active")
    );

    filter.classList.add("active");

    const value =
      filter.dataset.filter;


    products.forEach(product=>{

      if(
        value === "all" ||
        product.dataset.category === value
      ){

        product.style.display = "";

      }else{

        product.style.display = "none";

      }

    });

  });

});


/* =========================
   SORT
========================= */

document
  .getElementById("sort")
  .addEventListener("change", function(){

    const container =
      document.getElementById("products");

    const items =
      Array.from(container.children);


    if(this.value === "low"){

      items.sort(
        (a,b)=>
        Number(a.dataset.price) -
        Number(b.dataset.price)
      );

    }

    else if(this.value === "high"){

      items.sort(
        (a,b)=>
        Number(b.dataset.price) -
        Number(a.dataset.price)
      );

    }

    else{

      items.sort(
        (a,b)=>
        Number(a.dataset.original || 0) -
        Number(b.dataset.original || 0)
      );

    }


    items.forEach(item=>
      container.appendChild(item)
    );

});


/* =========================
   WISHLIST
========================= */

document
  .querySelectorAll(".wishlist")
  .forEach(button=>{

    button.addEventListener("click",()=>{

      button.classList.toggle("active");

      button.textContent =
        button.classList.contains("active")
        ? "♥"
        : "♡";

    });

});


/* =========================
   SEARCH
========================= */

function openSearch(){

  document
    .getElementById("searchOverlay")
    .classList.add("open");

  setTimeout(()=>{

    document
      .getElementById("searchInput")
      .focus();

  },200);

}


function closeSearch(){

  document
    .getElementById("searchOverlay")
    .classList.remove("open");

}


document
  .getElementById("searchInput")
  .addEventListener("input",function(){

    const query =
      this.value.toLowerCase().trim();

    const result =
      document.getElementById("searchResults");


    if(!query){

      result.textContent =
        "Start typing to search the collection.";

      return;

    }


    const matches =
      Array.from(products)
      .filter(product =>
        product.dataset.name
          .toLowerCase()
          .includes(query)
      );


    if(matches.length){

      result.innerHTML =
        matches.map(
          x => "• " + x.dataset.name
        ).join("<br>");

    }else{

      result.textContent =
        "No objects found.";

    }

});


/* =========================
   TOAST
========================= */

let toastTimer;


function showToast(message){

  const toast =
    document.getElementById("toast");

  toast.textContent = message;

  toast.classList.add("show");


  clearTimeout(toastTimer);

  toastTimer = setTimeout(()=>{

    toast.classList.remove("show");

  },2200);

}


/* =========================
   NEWSLETTER
========================= */

function subscribe(event){

  event.preventDefault();

  const email =
    document.getElementById("email");

  if(email.value){

    showToast("You're on the list");

    email.value = "";

  }

}


/* =========================
   COUNTDOWN
========================= */

let countdown =
  new Date().getTime() +
  (2 * 24 * 60 * 60 * 1000) +
  (8 * 60 * 60 * 1000);


function updateTimer(){

  const now =
    new Date().getTime();

  const distance =
    countdown - now;


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
      (distance %
      (1000 * 60 * 60 * 24)) /
      (1000 * 60 * 60)
    );

  const minutes =
    Math.floor(
      (distance %
      (1000 * 60 * 60)) /
      (1000 * 60)
    );

  const seconds =
    Math.floor(
      (distance %
      (1000 * 60)) /
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


setInterval(updateTimer,1000);

updateTimer();


/* =========================
   ESC KEY
========================= */

document.addEventListener("keydown",event=>{

  if(event.key === "Escape"){

    closeCart();
    closeSearch();

  }

});


/* =========================
   CLICK OUTSIDE CART
========================= */

document
  .getElementById("cartOverlay")
  .addEventListener("click",event=>{

    if(event.target.id === "cartOverlay"){

      closeCart();

    }

});


/* =========================
   INITIALIZE
========================= */

products.forEach((product,index)=>{

  product.dataset.original = index;

});

updateCart();

</script>

</body>
</html>
