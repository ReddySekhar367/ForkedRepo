<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="NexusShop — Premium modern e-commerce storefront">
    <title>NexusShop — Premium Storefront</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        crossorigin="anonymous"
    >

    <style>
        /* =========================================================
           DESIGN TOKENS
        ========================================================= */

        :root {
            --ink: #111111;
            --ink-soft: #292929;
            --cream: #f8f6f1;
            --white: #ffffff;
            --orange: #e66f3d;
            --orange-dark: #c95427;
            --orange-soft: #fce5d9;
            --green: #2e8b72;
            --yellow: #f2c94c;
            --muted: #77736d;
            --line: #e9e5de;

            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;
            --radius-sm: 10px;

            --shadow-sm: 0 4px 18px rgba(17,17,17,.05);
            --shadow-md: 0 12px 35px rgba(17,17,17,.09);
            --shadow-lg: 0 25px 70px rgba(17,17,17,.15);

            --transition: .25s ease;
            --container: 1320px;
        }

        /* =========================================================
           RESET
        ========================================================= */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            color: var(--ink);
            background: var(--cream);
            line-height: 1.5;
            overflow-x: hidden;
        }

        body.no-scroll {
            overflow: hidden;
        }

        img {
            display: block;
            width: 100%;
        }

        button,
        input {
            font: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        ul {
            list-style: none;
        }

        .container {
            width: min(var(--container), calc(100% - 48px));
            margin-inline: auto;
        }

        /* =========================================================
           TOP BAR
        ========================================================= */

        .topbar {
            background: var(--ink);
            color: #fff;
            height: 38px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            letter-spacing: .2px;
        }

        .topbar strong {
            color: #ffb18d;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(248,246,241,.92);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(17,17,17,.06);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 28px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 23px;
            font-weight: 700;
            letter-spacing: -.7px;
            white-space: nowrap;
        }

        .logo-mark {
            width: 37px;
            height: 37px;
            border-radius: 12px;
            background: var(--orange);
            color: #fff;
            display: grid;
            place-items: center;
            transform: rotate(-5deg);
        }

        .logo span {
            color: var(--orange);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .nav a {
            padding: 9px 13px;
            border-radius: 9px;
            color: var(--muted);
            font-size: 14px;
            font-weight: 600;
            transition: var(--transition);
        }

        .nav a:hover,
        .nav a.active {
            color: var(--ink);
            background: var(--white);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .search {
            width: 220px;
            height: 42px;
            display: flex;
            align-items: center;
            gap: 10px;
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: 999px;
            padding: 0 15px;
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--orange);
            box-shadow: 0 0 0 4px rgba(230,111,61,.10);
        }

        .search i {
            color: var(--muted);
            font-size: 14px;
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--ink);
            font-size: 13px;
        }

        .search input::placeholder {
            color: #aaa;
        }

        .icon-button {
            position: relative;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: transparent;
            color: var(--ink);
            display: grid;
            place-items: center;
            transition: var(--transition);
        }

        .icon-button:hover {
            background: var(--white);
        }

        .count {
            position: absolute;
            top: -1px;
            right: -1px;
            min-width: 18px;
            height: 18px;
            padding: 0 4px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            background: var(--orange);
            color: #fff;
            border: 2px solid var(--cream);
            font-size: 9px;
            font-weight: 700;
        }

        .mobile-menu-button {
            display: none;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 28px 0 0;
        }

        .hero-card {
            min-height: 590px;
            position: relative;
            overflow: hidden;
            border-radius: var(--radius-xl);
            background:
                linear-gradient(
                    90deg,
                    rgba(17,17,17,.94) 0%,
                    rgba(17,17,17,.82) 39%,
                    rgba(17,17,17,.15) 75%,
                    rgba(17,17,17,.02) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90")
                center / cover;
            display: flex;
            align-items: center;
        }

        .hero-content {
            width: min(650px, 90%);
            padding: 60px;
            color: #fff;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 7px 13px;
            border-radius: 999px;
            background: rgba(230,111,61,.17);
            border: 1px solid rgba(255,255,255,.14);
            color: #ffb18d;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 22px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(44px, 5vw, 72px);
            line-height: .98;
            letter-spacing: -2px;
            margin-bottom: 24px;
        }

        .hero h1 em {
            color: #ff9a72;
            font-style: normal;
        }

        .hero-description {
            max-width: 500px;
            color: rgba(255,255,255,.72);
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            min-height: 46px;
            padding: 0 22px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 700;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--orange);
            color: #fff;
        }

        .btn-primary:hover {
            background: var(--orange-dark);
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(230,111,61,.3);
        }

        .btn-white {
            background: #fff;
            color: var(--ink);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        .hero-floating-card {
            position: absolute;
            right: 38px;
            bottom: 34px;
            width: 230px;
            padding: 15px;
            border-radius: 18px;
            background: rgba(255,255,255,.92);
            backdrop-filter: blur(14px);
            box-shadow: var(--shadow-lg);
            color: var(--ink);
        }

        .hero-floating-card img {
            height: 135px;
            object-fit: cover;
            border-radius: 12px;
            margin-bottom: 12px;
        }

        .floating-label {
            color: var(--muted);
            font-size: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .floating-title {
            font-size: 14px;
            font-weight: 700;
            margin: 3px 0;
        }

        .floating-price {
            font-weight: 800;
            color: var(--orange);
        }

        /* =========================================================
           TRUST STRIP
        ========================================================= */

        .trust-strip {
            margin: 18px 0 0;
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: var(--radius-lg);
            display: grid;
            grid-template-columns: repeat(4,1fr);
            overflow: hidden;
        }

        .trust-item {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            padding: 20px;
            border-right: 1px solid var(--line);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-icon {
            width: 38px;
            height: 38px;
            border-radius: 11px;
            display: grid;
            place-items: center;
            background: var(--orange-soft);
            color: var(--orange);
        }

        .trust-item strong {
            display: block;
            font-size: 12px;
        }

        .trust-item span {
            display: block;
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           SECTIONS
        ========================================================= */

        .section {
            padding: 85px 0 0;
        }

        .section-heading {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 28px;
        }

        .section-heading h2 {
            font-family: "Playfair Display", serif;
            font-size: 36px;
            letter-spacing: -.7px;
        }

        .section-heading p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 4px;
        }

        .link-arrow {
            display: flex;
            align-items: center;
            gap: 7px;
            color: var(--orange);
            font-size: 13px;
            font-weight: 700;
        }

        .link-arrow:hover i {
            transform: translateX(4px);
        }

        .link-arrow i {
            transition: var(--transition);
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6,1fr);
            gap: 14px;
        }

        .category-card {
            position: relative;
            min-height: 185px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            cursor: pointer;
            background: #ddd;
        }

        .category-card img {
            height: 100%;
            object-fit: cover;
            transition: .5s ease;
        }

        .category-card::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(
                to top,
                rgba(0,0,0,.75),
                rgba(0,0,0,.02) 65%
            );
        }

        .category-card:hover img {
            transform: scale(1.08);
        }

        .category-info {
            position: absolute;
            z-index: 2;
            left: 16px;
            right: 16px;
            bottom: 15px;
            color: #fff;
        }

        .category-info h3 {
            font-size: 14px;
        }

        .category-info span {
            opacity: .7;
            font-size: 11px;
        }

        /* =========================================================
           PRODUCT TOOLBAR
        ========================================================= */

        .product-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            margin-bottom: 22px;
        }

        .filters {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .filter-btn {
            padding: 8px 15px;
            border-radius: 999px;
            border: 1px solid var(--line);
            background: var(--white);
            color: var(--muted);
            font-size: 12px;
            font-weight: 600;
            transition: var(--transition);
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--ink);
            color: #fff;
            border-color: var(--ink);
        }

        .result-count {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 20px;
        }

        .product {
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: var(--transition);
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
            border-color: transparent;
        }

        .product-image {
            position: relative;
            aspect-ratio: 1/1;
            overflow: hidden;
            background: #f1efea;
        }

        .product-image img {
            height: 100%;
            object-fit: cover;
            transition: .45s ease;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .product-tag {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 5px 9px;
            border-radius: 999px;
            background: var(--orange);
            color: #fff;
            font-size: 9px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: .5px;
        }

        .product-tag.sale {
            background: var(--yellow);
            color: var(--ink);
        }

        .wishlist {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 35px;
            height: 35px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255,255,255,.9);
            color: var(--muted);
            transition: var(--transition);
        }

        .wishlist:hover,
        .wishlist.liked {
            color: var(--orange);
            transform: scale(1.08);
        }

        .product-body {
            padding: 17px;
        }

        .product-category {
            color: #a09b93;
            font-size: 9px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .product-title {
            margin: 6px 0 9px;
            font-size: 14px;
            font-weight: 700;
            line-height: 1.35;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #f0a932;
            font-size: 11px;
            margin-bottom: 13px;
        }

        .rating span {
            color: var(--muted);
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-size: 17px;
            font-weight: 800;
        }

        .old-price {
            margin-left: 4px;
            color: #aaa;
            text-decoration: line-through;
            font-size: 11px;
            font-weight: 500;
        }

        .add-cart {
            width: 36px;
            height: 36px;
            border-radius: 11px;
            display: grid;
            place-items: center;
            background: var(--ink);
            color: #fff;
            transition: var(--transition);
        }

        .add-cart:hover {
            background: var(--orange);
            transform: scale(1.06);
        }

        /* =========================================================
           FLASH SALE
        ========================================================= */

        .flash {
            margin-top: 85px;
            background: var(--ink);
            border-radius: var(--radius-xl);
            overflow: hidden;
            color: #fff;
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 460px;
        }

        .flash-image {
            position: relative;
            min-height: 400px;
        }

        .flash-image img {
            height: 100%;
            object-fit: cover;
        }

        .flash-image::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(90deg, transparent, rgba(17,17,17,.4));
        }

        .flash-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 55px;
        }

        .flash-badge {
            align-self: flex-start;
            padding: 6px 12px;
            border-radius: 999px;
            background: var(--orange);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
            margin-bottom: 17px;
        }

        .flash-content h2 {
            font-family: "Playfair Display", serif;
            font-size: 42px;
            line-height: 1.05;
            margin-bottom: 13px;
        }

        .flash-content p {
            color: rgba(255,255,255,.6);
            max-width: 440px;
            font-size: 14px;
            line-height: 1.7;
        }

        .flash-price {
            margin-top: 20px;
            font-size: 31px;
            font-weight: 800;
        }

        .flash-price del {
            color: rgba(255,255,255,.35);
            font-size: 17px;
            font-weight: 400;
            margin-left: 7px;
        }

        .timer {
            display: flex;
            gap: 9px;
            margin: 24px 0;
        }

        .timer-box {
            width: 62px;
            height: 63px;
            display: grid;
            place-items: center;
            align-content: center;
            border-radius: 12px;
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.08);
        }

        .timer-box strong {
            font-size: 20px;
        }

        .timer-box span {
            color: rgba(255,255,255,.45);
            font-size: 8px;
            text-transform: uppercase;
        }

        /* =========================================================
           FEATURE BANNERS
        ========================================================= */

        .banner-grid {
            display: grid;
            grid-template-columns: 1.3fr 1fr 1fr;
            gap: 16px;
        }

        .banner {
            min-height: 260px;
            position: relative;
            border-radius: var(--radius-lg);
            overflow: hidden;
            color: #fff;
        }

        .banner img {
            position: absolute;
            inset: 0;
            height: 100%;
            object-fit: cover;
            transition: .5s ease;
        }

        .banner:hover img {
            transform: scale(1.05);
        }

        .banner::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(0deg, rgba(0,0,0,.72), rgba(0,0,0,.05));
        }

        .banner-content {
            position: absolute;
            z-index: 2;
            left: 22px;
            right: 22px;
            bottom: 22px;
        }

        .banner-content small {
            color: #ffad8b;
            font-weight: 700;
            font-size: 10px;
            text-transform: uppercase;
        }

        .banner-content h3 {
            margin-top: 4px;
            font-family: "Playfair Display", serif;
            font-size: 25px;
        }

        .banner-content a {
            display: inline-flex;
            margin-top: 10px;
            color: #fff;
            font-size: 11px;
            font-weight: 700;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 18px;
        }

        .testimonial {
            padding: 27px;
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: var(--radius-lg);
        }

        .testimonial-stars {
            color: #e8a631;
            letter-spacing: 2px;
            font-size: 12px;
            margin-bottom: 17px;
        }

        .testimonial blockquote {
            font-family: "Playfair Display", serif;
            font-size: 17px;
            line-height: 1.55;
            margin-bottom: 22px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 12px;
        }

        .customer span {
            color: var(--muted);
            font-size: 10px;
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            margin: 85px 0;
            padding: 55px;
            border-radius: var(--radius-xl);
            background:
                radial-gradient(circle at 90% 20%, rgba(230,111,61,.22), transparent 30%),
                var(--orange-soft);
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .newsletter h2 {
            font-family: "Playfair Display", serif;
            font-size: 36px;
        }

        .newsletter p {
            color: var(--muted);
            font-size: 13px;
            margin-top: 5px;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
            width: min(460px,100%);
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            height: 48px;
            padding: 0 17px;
            border: 1px solid rgba(17,17,17,.1);
            border-radius: 999px;
            outline: none;
            background: rgba(255,255,255,.7);
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            padding: 0 0 30px;
        }

        .footer-main {
            display: grid;
            grid-template-columns: 1.7fr 1fr 1fr 1fr;
            gap: 45px;
            padding-bottom: 42px;
            border-bottom: 1px solid var(--line);
        }

        .footer-description {
            color: var(--muted);
            max-width: 300px;
            font-size: 12px;
            line-height: 1.7;
            margin-top: 13px;
        }

        .socials {
            display: flex;
            gap: 7px;
            margin-top: 18px;
        }

        .socials a {
            width: 35px;
            height: 35px;
            display: grid;
            place-items: center;
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: 50%;
            color: var(--muted);
            font-size: 12px;
            transition: var(--transition);
        }

        .socials a:hover {
            color: #fff;
            background: var(--orange);
            border-color: var(--orange);
        }

        .footer-col h4 {
            font-size: 12px;
            margin-bottom: 14px;
        }

        .footer-col li {
            margin-bottom: 8px;
        }

        .footer-col a {
            color: var(--muted);
            font-size: 11px;
        }

        .footer-col a:hover {
            color: var(--orange);
        }

        .footer-bottom {
            display: flex;
            justify-content: space-between;
            padding-top: 22px;
            color: #aaa;
            font-size: 10px;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.45);
            z-index: 1500;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            z-index: 1600;
            top: 0;
            right: 0;
            width: min(420px,100%);
            height: 100vh;
            background: var(--cream);
            transform: translateX(100%);
            transition: .35s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.show {
            transform: translateX(0);
        }

        .cart-header {
            height: 75px;
            padding: 0 22px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--line);
        }

        .cart-header h3 {
            font-size: 17px;
        }

        .close-cart {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--white);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 18px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px;
            background: var(--white);
            border-radius: 14px;
            margin-bottom: 10px;
        }

        .cart-item img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 12px;
            margin-bottom: 5px;
        }

        .cart-item-info p {
            font-size: 12px;
            font-weight: 700;
            color: var(--orange);
        }

        .cart-remove {
            color: #aaa;
            font-size: 12px;
        }

        .empty-cart {
            min-height: 300px;
            display: grid;
            place-items: center;
            text-align: center;
            color: var(--muted);
        }

        .empty-cart i {
            display: block;
            font-size: 40px;
            color: #ccc;
            margin-bottom: 10px;
        }

        .cart-footer {
            padding: 18px;
            background: var(--white);
            border-top: 1px solid var(--line);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            margin-bottom: 14px;
            font-size: 15px;
            font-weight: 800;
        }

        .cart-footer .btn {
            width: 100%;
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;
            z-index: 3000;
            left: 50%;
            bottom: 25px;
            transform: translate(-50%, 20px);
            background: var(--ink);
            color: #fff;
            padding: 12px 18px;
            border-radius: 999px;
            font-size: 12px;
            opacity: 0;
            pointer-events: none;
            transition: .3s ease;
            box-shadow: var(--shadow-lg);
        }

        .toast.show {
            opacity: 1;
            transform: translate(-50%,0);
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1100px) {
            .nav {
                display: none;
            }

            .mobile-menu-button {
                display: grid;
            }

            .category-grid {
                grid-template-columns: repeat(3,1fr);
            }

            .products {
                grid-template-columns: repeat(3,1fr);
            }

            .banner-grid {
                grid-template-columns: 1fr 1fr;
            }

            .banner:first-child {
                grid-column: span 2;
            }
        }

        @media (max-width: 800px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .header-inner {
                min-height: 68px;
                gap: 8px;
            }

            .search {
                width: 160px;
            }

            .hero-card {
                min-height: 510px;
                background:
                    linear-gradient(
                        90deg,
                        rgba(17,17,17,.94),
                        rgba(17,17,17,.62)
                    ),
                    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=85")
                    center / cover;
            }

            .hero-content {
                padding: 35px;
            }

            .hero-floating-card {
                display: none;
            }

            .trust-strip {
                grid-template-columns: 1fr 1fr;
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .trust-item:nth-child(-n+2) {
                border-bottom: 1px solid var(--line);
            }

            .products {
                grid-template-columns: repeat(2,1fr);
            }

            .flash {
                grid-template-columns: 1fr;
            }

            .flash-image {
                min-height: 280px;
            }

            .flash-content {
                padding: 35px;
            }

            .testimonial-grid {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
                padding: 35px;
            }

            .newsletter-form {
                width: 100%;
            }

            .footer-main {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 560px) {
            .topbar {
                font-size: 10px;
                padding: 0 10px;
                text-align: center;
            }

            .logo {
                font-size: 18px;
            }

            .logo-mark {
                width: 32px;
                height: 32px;
            }

            .search {
                width: 42px;
                padding: 0;
                justify-content: center;
            }

            .search input {
                display: none;
            }

            .search i {
                font-size: 14px;
            }

            .header-actions .icon-button:nth-child(1) {
                display: none;
            }

            .hero {
                padding-top: 14px;
            }

            .hero-card {
                min-height: 480px;
                border-radius: 20px;
            }

            .hero-content {
                padding: 25px;
            }

            .hero h1 {
                font-size: 43px;
                letter-spacing: -1px;
            }

            .hero-description {
                font-size: 13px;
            }

            .section {
                padding-top: 60px;
            }

            .section-heading {
                align-items: flex-start;
                flex-direction: column;
            }

            .section-heading h2 {
                font-size: 29px;
            }

            .category-grid {
                grid-template-columns: repeat(2,1fr);
            }

            .category-card {
                min-height: 150px;
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .product-body {
                padding: 12px;
            }

            .product-title {
                font-size: 12px;
            }

            .price {
                font-size: 14px;
            }

            .old-price {
                display: none;
            }

            .product-toolbar {
                align-items: flex-start;
                flex-direction: column;
            }

            .banner-grid {
                grid-template-columns: 1fr;
            }

            .banner:first-child {
                grid-column: auto;
            }

            .flash-content h2 {
                font-size: 34px;
            }

            .timer-box {
                width: 54px;
                height: 55px;
            }

            .timer-box strong {
                font-size: 17px;
            }

            .newsletter h2 {
                font-size: 29px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input,
            .newsletter-form .btn {
                width: 100%;
            }

            .footer-main {
                grid-template-columns: 1fr 1fr;
                gap: 28px 18px;
            }

            .footer-main > div:first-child {
                grid-column: span 2;
            }

            .footer-bottom {
                flex-direction: column;
                gap: 5px;
            }
        }
    </style>
</head>

<body>

<!-- ============================================================
     TOP BAR
============================================================ -->

<div class="topbar">
    ✦ Free shipping on orders over <strong>&nbsp;$75</strong>&nbsp; · &nbsp;Use code <strong>WELCOME15</strong> for 15% off
</div>

<!-- ============================================================
     HEADER
============================================================ -->

<header class="header">
    <div class="container header-inner">

        <button class="icon-button mobile-menu-button" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-mark">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>
            Nexus<span>Shop</span>
        </a>

        <nav class="nav">
            <a href="#" class="active">Home</a>
            <a href="#shop">Shop</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="header-actions">

            <div class="search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                >
            </div>

            <button class="icon-button">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="icon-button" id="wishlistBtn">
                <i class="fa-regular fa-heart"></i>
                <span class="count" id="wishlistCount">0</span>
            </button>

            <button class="icon-button" id="cartBtn">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="count" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>

<!-- ============================================================
     MOBILE NAV
============================================================ -->

<div
    id="mobileNav"
    style="
        display:none;
        position:fixed;
        top:106px;
        left:14px;
        right:14px;
        z-index:1200;
        background:#fff;
        border:1px solid var(--line);
        border-radius:16px;
        padding:12px;
        box-shadow:var(--shadow-lg);
    "
>
    <a href="#" style="display:block;padding:12px;">Home</a>
    <a href="#shop" style="display:block;padding:12px;">Shop</a>
    <a href="#categories" style="display:block;padding:12px;">Categories</a>
    <a href="#deals" style="display:block;padding:12px;">Deals</a>
    <a href="#reviews" style="display:block;padding:12px;">Reviews</a>
</div>

<main>

<!-- ============================================================
     HERO
============================================================ -->

<section class="hero">
    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="eyebrow">
                    <i class="fa-solid fa-sparkles"></i>
                    Fall / Winter Collection 2026
                </div>

                <h1>
                    Everything you
                    <em>actually</em>
                    want.
                </h1>

                <p class="hero-description">
                    Discover thoughtfully selected fashion, technology,
                    accessories and everyday essentials — all in one place.
                </p>

                <div class="hero-buttons">
                    <a href="#shop" class="btn btn-primary">
                        Shop collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>

                    <a href="#categories" class="btn btn-white">
                        Explore categories
                    </a>
                </div>

            </div>

            <div class="hero-floating-card">
                <img
                    src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=85"
                    alt="Premium watch"
                >

                <div class="floating-label">Trending now</div>
                <div class="floating-title">Minimal Steel Watch</div>
                <div class="floating-price">$189</div>
            </div>

        </div>

        <div class="trust-strip">

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>
                <div>
                    <strong>Free shipping</strong>
                    <span>Orders over $75</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>
                <div>
                    <strong>Secure checkout</strong>
                    <span>100% protected</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>
                <div>
                    <strong>Easy returns</strong>
                    <span>30-day guarantee</span>
                </div>
            </div>

            <div class="trust-item">
                <div class="trust-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>
                <div>
                    <strong>Human support</strong>
                    <span>Here when needed</span>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- ============================================================
     CATEGORIES
============================================================ -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Shop by category</h2>
                <p>Find your next favorite thing.</p>
            </div>

            <a href="#shop" class="link-arrow">
                View all
                <i class="fa-solid fa-arrow-right"></i>
            </a>
        </div>

        <div class="category-grid" id="categoryGrid"></div>

    </div>

</section>

<!-- ============================================================
     PRODUCTS
============================================================ -->

<section class="section" id="shop">

    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Popular right now</h2>
                <p>Customer favorites, fresh arrivals and everyday icons.</p>
            </div>

            <span class="result-count" id="resultCount"></span>
        </div>

        <div class="product-toolbar">

            <div class="filters" id="filters">

                <button class="filter-btn active" data-filter="All">
                    All
                </button>

                <button class="filter-btn" data-filter="Tech">
                    Tech
                </button>

                <button class="filter-btn" data-filter="Fashion">
                    Fashion
                </button>

                <button class="filter-btn" data-filter="Accessories">
                    Accessories
                </button>

                <button class="filter-btn" data-filter="Lifestyle">
                    Lifestyle
                </button>

            </div>

        </div>

        <div class="products" id="products"></div>

    </div>

</section>

<!-- ============================================================
     FLASH SALE
============================================================ -->

<section id="deals">

    <div class="container">

        <div class="flash">

            <div class="flash-image">
                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=90"
                    alt="MacBook"
                >
            </div>

            <div class="flash-content">

                <span class="flash-badge">
                    <i class="fa-solid fa-bolt"></i>
                    Flash sale
                </span>

                <h2>
                    Big performance.
                    Small price.
                </h2>

                <p>
                    Meet the MacBook Air M2 — lightweight, silent and
                    powerful enough for everything from creative work
                    to everyday browsing.
                </p>

                <div class="flash-price">
                    $999
                    <del>$1,199</del>
                </div>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="timer-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="timer-box">
                        <strong id="minutes">00</strong>
                        <span>Mins</span>
                    </div>

                    <div class="timer-box">
                        <strong id="seconds">00</strong>
                        <span>Secs</span>
                    </div>

                </div>

                <button class="btn btn-primary" id="dealBtn">
                    Add deal to cart
                    <i class="fa-solid fa-bag-shopping"></i>
                </button>

            </div>

        </div>

    </div>

</section>

<!-- ============================================================
     FEATURED COLLECTIONS
============================================================ -->

<section class="section">

    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Curated for you</h2>
                <p>Explore this week's hand-picked collections.</p>
            </div>
        </div>

        <div class="banner-grid">

            <div class="banner">

                <img
                    src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1000&q=85"
                    alt="Fashion collection"
                >

                <div class="banner-content">
                    <small>Editor's pick</small>
                    <h3>Quiet luxury</h3>
                    <a href="#shop">
                        Discover collection →
                    </a>
                </div>

            </div>

            <div class="banner">

                <img
                    src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=800&q=85"
                    alt="Camera"
                >

                <div class="banner-content">
                    <small>For creators</small>
                    <h3>Capture more</h3>
                    <a href="#shop">
                        Shop cameras →
                    </a>
                </div>

            </div>

            <div class="banner">

                <img
                    src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=800&q=85"
                    alt="Accessories"
                >

                <div class="banner-content">
                    <small>Everyday essentials</small>
                    <h3>Carry better</h3>
                    <a href="#shop">
                        Explore bags →
                    </a>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- ============================================================
     REVIEWS
============================================================ -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-heading">
            <div>
                <h2>Loved by shoppers</h2>
                <p>A few words from our growing community.</p>
            </div>
        </div>

        <div class="testimonial-grid">

            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <blockquote>
                    “The whole experience feels premium. Fast delivery,
                    beautiful packaging and exactly what I ordered.”
                </blockquote>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Sarah"
                    >
                    <div>
                        <strong>Sarah Mitchell</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </article>

            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <blockquote>
                    “Finally an online store where browsing is actually
                    enjoyable. Found my headphones in under five minutes.”
                </blockquote>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80"
                        alt="Daniel"
                    >
                    <div>
                        <strong>Daniel Cooper</strong>
                        <span>Tech enthusiast</span>
                    </div>
                </div>

            </article>

            <article class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <blockquote>
                    “Excellent quality and surprisingly good customer
                    service. NexusShop is now my first stop.”
                </blockquote>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                        alt="Mia"
                    >
                    <div>
                        <strong>Mia Anderson</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </article>

        </div>

    </div>

</section>

<!-- ============================================================
     NEWSLETTER
============================================================ -->

<div class="container">

    <section class="newsletter">

        <div>
            <h2>Stay a little ahead.</h2>
            <p>
                New drops, exclusive offers and things worth knowing.
            </p>
        </div>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Your email address"
                required
            >

            <button class="btn btn-primary">
                Join us
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </form>

    </section>

</div>

</main>

<!-- ============================================================
     FOOTER
============================================================ -->

<footer>

    <div class="container">

        <div class="footer-main">

            <div>
                <a href="#" class="logo">
                    <div class="logo-mark">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    Nexus<span>Shop</span>
                </a>

                <p class="footer-description">
                    A modern shopping experience built around quality,
                    thoughtful design and products you'll actually use.
                </p>

                <div class="socials">
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>

            <div class="footer-col">
                <h4>Shop</h4>
                <ul>
                    <li><a href="#shop">New arrivals</a></li>
                    <li><a href="#shop">Best sellers</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#categories">Categories</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h4>Help</h4>
                <ul>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Contact us</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Journal</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>
            </div>

        </div>

        <div class="footer-bottom">
            <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
            <span>Made for modern shoppers.</span>
        </div>

    </div>

</footer>

<!-- ============================================================
     CART
============================================================ -->

<div class="overlay" id="overlay"></div>

<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">
        <h3>Your bag</h3>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button class="btn btn-primary" id="checkoutBtn">
            Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>

<!-- ============================================================
     TOAST
============================================================ -->

<div class="toast" id="toast"></div>

<!-- ============================================================
     JAVASCRIPT
============================================================ -->

<script>

    /* =========================================================
       DATA
    ========================================================= */

    const categories = [
        {
            name: "Tech",
            count: "28 products",
            image: "https://images.unsplash.com/photo-1468495244123-6c6c332eeece?auto=format&fit=crop&w=700&q=80"
        },
        {
            name: "Fashion",
            count: "64 products",
            image: "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=700&q=80"
        },
        {
            name: "Accessories",
            count: "41 products",
            image: "https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=700&q=80"
        },
        {
            name: "Lifestyle",
            count: "35 products",
            image: "https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?auto=format&fit=crop&w=700&q=80"
        },
        {
            name: "Footwear",
            count: "32 products",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
        },
        {
            name: "Beauty",
            count: "24 products",
            image: "https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=700&q=80"
        }
    ];

    const products = [
        {
            id: 1,
            name: "AirPods Pro 2",
            category: "Tech",
            price: 199,
            oldPrice: 249,
            rating: 4.9,
            reviews: 328,
            tag: "Sale",
            image: "https://images.unsplash.com/photo-1606220945770-b5b6c2c55bf1?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 2,
            name: "Minimal Steel Watch",
            category: "Accessories",
            price: 189,
            oldPrice: null,
            rating: 4.8,
            reviews: 184,
            tag: "Popular",
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 3,
            name: "Classic Leather Sneakers",
            category: "Fashion",
            price: 129,
            oldPrice: 159,
            rating: 4.7,
            reviews: 215,
            tag: "Sale",
            image: "https://images.unsplash.com/photo-1495555961986-6d4c1ecb7be3?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 4,
            name: "Everyday Carry Backpack",
            category: "Lifestyle",
            price: 89,
            oldPrice: null,
            rating: 4.9,
            reviews: 142,
            tag: "New",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 5,
            name: "Instant Film Camera",
            category: "Tech",
            price: 139,
            oldPrice: 169,
            rating: 4.6,
            reviews: 97,
            tag: "Sale",
            image: "https://images.unsplash.com/photo-1452780212940-6f5c0d14d848?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 6,
            name: "Premium Cotton Overshirt",
            category: "Fashion",
            price: 79,
            oldPrice: null,
            rating: 4.8,
            reviews: 76,
            tag: "New",
            image: "https://images.unsplash.com/photo-1598033129183-c4f50c736f10?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 7,
            name: "Ceramic Coffee Set",
            category: "Lifestyle",
            price: 54,
            oldPrice: 69,
            rating: 4.9,
            reviews: 119,
            tag: "Sale",
            image: "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 8,
            name: "Classic Leather Tote",
            category: "Accessories",
            price: 149,
            oldPrice: null,
            rating: 4.8,
            reviews: 88,
            tag: "Popular",
            image: "https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=700&q=85"
        }
    ];

    /* =========================================================
       STATE
    ========================================================= */

    let cart = [];
    let wishlist = [];
    let activeFilter = "All";

    /* =========================================================
       ELEMENTS
    ========================================================= */

    const productsEl = document.getElementById("products");
    const categoryGrid = document.getElementById("categoryGrid");
    const resultCount = document.getElementById("resultCount");

    const cartBtn = document.getElementById("cartBtn");
    const cartDrawer = document.getElementById("cartDrawer");
    const closeCart = document.getElementById("closeCart");
    const overlay = document.getElementById("overlay");
    const cartItems = document.getElementById("cartItems");
    const cartCount = document.getElementById("cartCount");
    const cartTotal = document.getElementById("cartTotal");

    const wishlistCount = document.getElementById("wishlistCount");
    const searchInput = document.getElementById("searchInput");

    const toast = document.getElementById("toast");

    /* =========================================================
       CATEGORY RENDER
    ========================================================= */

    function renderCategories() {

        categoryGrid.innerHTML = categories.map(category => `
            <article
                class="category-card"
                data-category="${category.name}"
            >

                <img
                    src="${category.image}"
                    alt="${category.name}"
                    loading="lazy"
                >

                <div class="category-info">
                    <h3>${category.name}</h3>
                    <span>${category.count}</span>
                </div>

            </article>
        `).join("");

        document
            .querySelectorAll(".category-card")
            .forEach(card => {

                card.addEventListener("click", () => {

                    activeFilter = card.dataset.category;

                    document
                        .querySelectorAll(".filter-btn")
                        .forEach(btn => {
                            btn.classList.toggle(
                                "active",
                                btn.dataset.filter === activeFilter
                            );
                        });

                    renderProducts();

                    document
                        .getElementById("shop")
                        .scrollIntoView({
                            behavior: "smooth"
                        });
                });

            });
    }

    /* =========================================================
       PRODUCT RENDER
    ========================================================= */

    function renderProducts() {

        const query = searchInput.value.trim().toLowerCase();

        let filtered = products.filter(product => {

            const matchesFilter =
                activeFilter === "All" ||
                product.category === activeFilter;

            const matchesSearch =
                product.name.toLowerCase().includes(query) ||
                product.category.toLowerCase().includes(query);

            return matchesFilter && matchesSearch;
        });

        resultCount.textContent =
            `${filtered.length} products`;

        if (!filtered.length) {

            productsEl.innerHTML = `
                <div style="
                    grid-column:1/-1;
                    padding:60px 20px;
                    text-align:center;
                    color:var(--muted);
                    background:#fff;
                    border-radius:20px;
                ">
                    <i
                        class="fa-solid fa-magnifying-glass"
                        style="font-size:30px;margin-bottom:12px;color:#ccc;"
                    ></i>

                    <h3 style="color:var(--ink);margin-bottom:5px;">
                        No products found
                    </h3>

                    <p>
                        Try another search or category.
                    </p>
                </div>
            `;

            return;
        }

        productsEl.innerHTML = filtered.map(product => {

            const liked = wishlist.includes(product.id);

            const oldPrice = product.oldPrice
                ? `<span class="old-price">$${product.oldPrice}</span>`
                : "";

            return `
                <article class="product">

                    <div class="product-image">

                        <img
                            src="${product.image}"
                            alt="${product.name}"
                            loading="lazy"
                        >

                        <span class="product-tag ${product.tag === "Sale" ? "sale" : ""}">
                            ${product.tag}
                        </span>

                        <button
                            class="wishlist ${liked ? "liked" : ""}"
                            data-wishlist="${product.id}"
                            aria-label="Wishlist"
                        >
                            <i class="${liked ? "fa-solid" : "fa-regular"} fa-heart"></i>
                        </button>

                    </div>

                    <div class="product-body">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <h3 class="product-title">
                            ${product.name}
                        </h3>

                        <div class="rating">
                            ${"★".repeat(Math.round(product.rating))}
                            <span>
                                ${product.rating} (${product.reviews})
                            </span>
                        </div>

                        <div class="product-bottom">

                            <div class="price">
                                $${product.price}
                                ${oldPrice}
                            </div>

                            <button
                                class="add-cart"
                                data-cart="${product.id}"
                                aria-label="Add to cart"
                            >
                                <i class="fa-solid fa-plus"></i>
                            </button>

                        </div>

                    </div>

                </article>
            `;
        }).join("");

        bindProductEvents();
    }

    /* =========================================================
       PRODUCT EVENTS
    ========================================================= */

    function bindProductEvents() {

        document
            .querySelectorAll("[data-cart]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id = Number(button.dataset.cart);

                    addToCart(id);

                    button.innerHTML =
                        '<i class="fa-solid fa-check"></i>';

                    button.style.background = "var(--green)";

                    setTimeout(() => {

                        button.innerHTML =
                            '<i class="fa-solid fa-plus"></i>';

                        button.style.background = "";

                    }, 1000);
                });
            });

        document
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id = Number(button.dataset.wishlist);

                    toggleWishlist(id);
                });
            });
    }

    /* =========================================================
       CART
    ========================================================= */

    function addToCart(id) {

        const product = products.find(
            product => product.id === id
        );

        if (!product) return;

        cart.push(product);

        updateCart();

        showToast(`${product.name} added to your bag`);
    }

    function removeFromCart(index) {

        cart.splice(index, 1);

        updateCart();
    }

    function updateCart() {

        cartCount.textContent = cart.length;

        const total = cart.reduce(
            (sum, item) => sum + item.price,
            0
        );

        cartTotal.textContent =
            `$${total.toLocaleString()}`;

        if (!cart.length) {

            cartItems.innerHTML = `
                <div class="empty-cart">

                    <div>
                        <i class="fa-solid fa-bag-shopping"></i>

                        <strong>Your bag is empty</strong>

                        <p style="margin-top:5px;font-size:11px;">
                            Add something you love.
                        </p>
                    </div>

                </div>
            `;

            return;
        }

        cartItems.innerHTML = cart.map((item,index) => `
            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.name}"
                >

                <div class="cart-item-info">

                    <h4>${item.name}</h4>

                    <p>$${item.price}</p>

                </div>

                <button
                    class="cart-remove"
                    data-remove="${index}"
                    aria-label="Remove"
                >
                    <i class="fa-solid fa-xmark"></i>
                </button>

            </div>
        `).join("");

        document
            .querySelectorAll("[data-remove]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    removeFromCart(
                        Number(button.dataset.remove)
                    );

                });
            });
    }

    /* =========================================================
       WISHLIST
    ========================================================= */

    function toggleWishlist(id) {

        if (wishlist.includes(id)) {

            wishlist = wishlist.filter(
                item => item !== id
            );

            showToast("Removed from wishlist");

        } else {

            wishlist.push(id);

            showToast("Added to wishlist");
        }

        wishlistCount.textContent =
            wishlist.length;

        renderProducts();
    }

    /* =========================================================
       CART DRAWER
    ========================================================= */

    function openCart() {

        cartDrawer.classList.add("show");
        overlay.classList.add("show");
        document.body.classList.add("no-scroll");
    }

    function closeCartDrawer() {

        cartDrawer.classList.remove("show");
        overlay.classList.remove("show");
        document.body.classList.remove("no-scroll");
    }

    cartBtn.addEventListener("click", openCart);

    closeCart.addEventListener(
        "click",
        closeCartDrawer
    );

    overlay.addEventListener(
        "click",
        closeCartDrawer
    );

    /* =========================================================
       FILTERS
    ========================================================= */

    document
        .querySelectorAll(".filter-btn")
        .forEach(button => {

            button.addEventListener("click", () => {

                activeFilter =
                    button.dataset.filter;

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn => {
                        btn.classList.remove("active");
                    });

                button.classList.add("active");

                renderProducts();
            });
        });

    /* =========================================================
       SEARCH
    ========================================================= */

    searchInput.addEventListener(
        "input",
        renderProducts
    );

    /* =========================================================
       MOBILE NAV
    ========================================================= */

    const mobileMenuBtn =
        document.getElementById("mobileMenuBtn");

    const mobileNav =
        document.getElementById("mobileNav");

    mobileMenuBtn.addEventListener("click", () => {

        const open =
            mobileNav.style.display === "block";

        mobileNav.style.display =
            open ? "none" : "block";

        mobileMenuBtn.innerHTML =
            open
                ? '<i class="fa-solid fa-bars"></i>'
                : '<i class="fa-solid fa-xmark"></i>';
    });

    mobileNav
        .querySelectorAll("a")
        .forEach(link => {

            link.addEventListener("click", () => {

                mobileNav.style.display = "none";

                mobileMenuBtn.innerHTML =
                    '<i class="fa-solid fa-bars"></i>';
            });
        });

    /* =========================================================
       FLASH SALE TIMER
    ========================================================= */

    const dealEnd =
        Date.now() + (
            2 * 24 * 60 * 60 * 1000 +
            8 * 60 * 60 * 1000 +
            42 * 60 * 1000
        );

    function updateTimer() {

        const difference =
            Math.max(0, dealEnd - Date.now());

        const days =
            Math.floor(
                difference / (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (difference / (1000 * 60 * 60)) % 24
            );

        const minutes =
            Math.floor(
                (difference / (1000 * 60)) % 60
            );

        const seconds =
            Math.floor(
                (difference / 1000) % 60
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

    updateTimer();

    setInterval(updateTimer,1000);

    /* =========================================================
       DEAL BUTTON
    ========================================================= */

    document
        .getElementById("dealBtn")
        .addEventListener("click", () => {

            cart.push({
                id: "deal",
                name: "MacBook Air M2",
                price: 999,
                image:
                    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85"
            });

            updateCart();

            showToast(
                "MacBook Air M2 added to your bag"
            );
        });

    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document.getElementById("email").value;

            if (!email.includes("@")) {

                showToast(
                    "Please enter a valid email"
                );

                return;
            }

            document.getElementById("email").value = "";

            showToast(
                "You're on the list ✦"
            );
        });

    /* =========================================================
       CHECKOUT
    ========================================================= */

    document
        .getElementById("checkoutBtn")
        .addEventListener("click", () => {

            if (!cart.length) {

                showToast(
                    "Your bag is empty"
                );

                return;
            }

            showToast(
                "Checkout demo — payment integration goes here"
            );
        });

    /* =========================================================
       TOAST
    ========================================================= */

    let toastTimeout;

    function showToast(message) {

        clearTimeout(toastTimeout);

        toast.textContent = message;

        toast.classList.add("show");

        toastTimeout =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2600);
    }

    /* =========================================================
       YEAR
    ========================================================= */

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();

    /* =========================================================
       INITIALIZE
    ========================================================= */

    renderCategories();

    renderProducts();

    updateCart();

</script>

</body>
</html>
