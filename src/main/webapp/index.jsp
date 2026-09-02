<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern E-Commerce</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --primary: #111827;
            --primary-light: #1f2937;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --cyan: #06b6d4;
            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-soft: #f1f5f9;

            --text: #111827;
            --muted: #64748b;
            --border: #e2e8f0;

            --radius: 16px;
            --shadow-sm: 0 4px 14px rgba(15, 23, 42, .06);
            --shadow-md: 0 12px 30px rgba(15, 23, 42, .10);
            --shadow-lg: 0 25px 60px rgba(15, 23, 42, .15);

            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            color: var(--text);
            background: var(--bg);
            line-height: 1.6;
        }

        body.no-scroll {
            overflow: hidden;
        }

        img {
            max-width: 100%;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin-inline: auto;
        }

        /* =========================
           TOP BAR
        ========================= */

        .top-bar {
            background: var(--primary);
            color: white;
            font-size: 13px;
        }

        .top-bar-inner {
            min-height: 36px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .top-bar span {
            opacity: .9;
        }

        .top-links {
            display: flex;
            gap: 20px;
        }

        .top-links a:hover {
            color: #93c5fd;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, .94);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            height: 76px;
            display: flex;
            align-items: center;
            gap: 32px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: Poppins, sans-serif;
            font-size: 23px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            color: white;
            background: linear-gradient(135deg, #2563eb, #06b6d4);
            box-shadow: 0 8px 20px rgba(37, 99, 235, .25);
        }

        .logo span {
            color: var(--accent);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 4px;
            flex: 1;
        }

        .desktop-nav a {
            padding: 10px 13px;
            border-radius: 10px;
            color: #475569;
            font-weight: 600;
            font-size: 14px;
            transition: .2s;
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            color: var(--accent);
            background: #eff6ff;
        }

        /* Search */

        .search-box {
            width: 280px;
            height: 44px;
            display: flex;
            align-items: center;
            gap: 9px;
            background: var(--surface-soft);
            border: 1px solid transparent;
            border-radius: 12px;
            padding: 0 13px;
            transition: .2s;
        }

        .search-box:focus-within {
            background: white;
            border-color: #93c5fd;
            box-shadow: 0 0 0 4px rgba(37, 99, 235, .08);
        }

        .search-box i {
            color: #94a3b8;
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text);
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .header-btn {
            position: relative;
            width: 42px;
            height: 42px;
            border: 0;
            background: transparent;
            border-radius: 11px;
            color: #475569;
            transition: .2s;
        }

        .header-btn:hover {
            background: var(--surface-soft);
            color: var(--accent);
        }

        .badge-count {
            position: absolute;
            top: 1px;
            right: 0;
            min-width: 19px;
            height: 19px;
            padding: 0 5px;
            display: grid;
            place-items: center;
            border-radius: 20px;
            background: var(--danger);
            color: white;
            border: 2px solid white;
            font-size: 10px;
            font-weight: 700;
        }

        .mobile-menu-btn {
            display: none;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            position: relative;
            min-height: 570px;
            display: flex;
            align-items: center;
            overflow: hidden;
            color: white;
            background:
                linear-gradient(90deg,
                    rgba(15, 23, 42, .95) 0%,
                    rgba(15, 23, 42, .76) 42%,
                    rgba(15, 23, 42, .15) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero::after {
            content: "";
            position: absolute;
            inset: auto 0 0;
            height: 80px;
            background: linear-gradient(transparent, var(--bg));
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 650px;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, .12);
            border: 1px solid rgba(255, 255, 255, .2);
            backdrop-filter: blur(10px);
            padding: 8px 13px;
            border-radius: 999px;
            font-size: 13px;
            margin-bottom: 20px;
        }

        .hero-tag i {
            color: #67e8f9;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 5vw, 68px);
            line-height: 1.08;
            letter-spacing: -2px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #67e8f9;
        }

        .hero p {
            max-width: 580px;
            color: #dbeafe;
            font-size: 17px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            border-radius: 11px;
            padding: 13px 20px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            font-weight: 700;
            transition: .2s;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
            box-shadow: 0 10px 25px rgba(37, 99, 235, .3);
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-2px);
        }

        .btn-white {
            background: white;
            color: var(--primary);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-md);
        }

        /* =========================
           TRUST BAR
        ========================= */

        .trust-bar {
            position: relative;
            z-index: 5;
            margin-top: -35px;
        }

        .trust-grid {
            background: white;
            border-radius: 18px;
            box-shadow: var(--shadow-md);
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            overflow: hidden;
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 22px;
            border-right: 1px solid var(--border);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-icon {
            width: 42px;
            height: 42px;
            flex-shrink: 0;
            display: grid;
            place-items: center;
            border-radius: 12px;
            color: var(--accent);
            background: #eff6ff;
        }

        .trust-item strong {
            display: block;
            font-size: 14px;
        }

        .trust-item small {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================
           SECTIONS
        ========================= */

        .section {
            padding: 80px 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 30px;
        }

        .section-title small {
            display: block;
            color: var(--accent);
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            font-size: 11px;
            margin-bottom: 7px;
        }

        .section-title h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            line-height: 1.2;
        }

        .section-title p {
            color: var(--muted);
            margin-top: 7px;
            font-size: 14px;
        }

        .view-all {
            color: var(--accent);
            font-size: 14px;
            font-weight: 700;
            white-space: nowrap;
        }

        .view-all:hover {
            color: var(--accent-hover);
        }

        /* =========================
           CATEGORIES
        ========================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category {
            border: 1px solid var(--border);
            background: white;
            border-radius: 16px;
            padding: 25px 15px;
            text-align: center;
            transition: .25s;
            cursor: pointer;
        }

        .category:hover {
            transform: translateY(-6px);
            border-color: #bfdbfe;
            box-shadow: var(--shadow-md);
        }

        .category-icon {
            width: 60px;
            height: 60px;
            margin: 0 auto 13px;
            display: grid;
            place-items: center;
            border-radius: 18px;
            font-size: 23px;
            color: var(--accent);
            background: #eff6ff;
        }

        .category:nth-child(2) .category-icon {
            color: #8b5cf6;
            background: #f5f3ff;
        }

        .category:nth-child(3) .category-icon {
            color: #ec4899;
            background: #fdf2f8;
        }

        .category:nth-child(4) .category-icon {
            color: #06b6d4;
            background: #ecfeff;
        }

        .category:nth-child(5) .category-icon {
            color: #f59e0b;
            background: #fffbeb;
        }

        .category:nth-child(6) .category-icon {
            color: #10b981;
            background: #ecfdf5;
        }

        .category strong {
            display: block;
            font-size: 14px;
        }

        .category small {
            display: block;
            color: var(--muted);
            margin-top: 4px;
            font-size: 12px;
        }

        /* =========================
           FILTERS
        ========================= */

        .filter-row {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            padding-bottom: 5px;
        }

        .filter-btn {
            border: 1px solid var(--border);
            background: white;
            color: #64748b;
            padding: 8px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            white-space: nowrap;
        }

        .filter-btn.active,
        .filter-btn:hover {
            color: white;
            background: var(--primary);
            border-color: var(--primary);
        }

        /* =========================
           PRODUCTS
        ========================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            position: relative;
            background: white;
            border: 1px solid var(--border);
            border-radius: 17px;
            overflow: hidden;
            transition: .25s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }

        .product-image {
            position: relative;
            height: 245px;
            overflow: hidden;
            background: #f8fafc;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .45s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            background: var(--success);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 10px;
            font-weight: 800;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 36px;
            height: 36px;
            border: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, .94);
            color: #64748b;
            box-shadow: 0 5px 15px rgba(0, 0, 0, .08);
        }

        .wishlist:hover,
        .wishlist.active {
            color: var(--danger);
        }

        .product-content {
            padding: 16px;
        }

        .product-category {
            color: var(--muted);
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: .8px;
            font-weight: 700;
        }

        .product-title {
            margin-top: 5px;
            font-size: 15px;
            font-weight: 700;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            margin: 8px 0;
            font-size: 12px;
        }

        .stars {
            color: #f59e0b;
        }

        .review-count {
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
            margin-top: 12px;
        }

        .price {
            font-size: 19px;
            font-weight: 800;
        }

        .old-price {
            color: #94a3b8;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .add-cart {
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
            transform: scale(1.05);
        }

        .empty-state {
            grid-column: 1 / -1;
            padding: 60px 20px;
            text-align: center;
            color: var(--muted);
            background: white;
            border: 1px dashed var(--border);
            border-radius: 16px;
        }

        .empty-state i {
            font-size: 40px;
            margin-bottom: 12px;
            color: #cbd5e1;
        }

        /* =========================
           FLASH SALE
        ========================= */

        .sale-section {
            padding: 20px 0 80px;
        }

        .sale-card {
            position: relative;
            min-height: 390px;
            overflow: hidden;
            border-radius: 22px;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg,
                    rgba(15, 23, 42, .97),
                    rgba(15, 23, 42, .75),
                    rgba(15, 23, 42, .1)),
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1600&q=85")
                center/cover;
            color: white;
        }

        .sale-content {
            max-width: 620px;
            padding: 50px;
        }

        .sale-label {
            color: #67e8f9;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            font-weight: 800;
        }

        .sale-content h2 {
            font-family: Poppins;
            font-size: 40px;
            margin: 8px 0;
        }

        .sale-content p {
            color: #cbd5e1;
            margin-bottom: 22px;
        }

        .countdown {
            display: flex;
            gap: 9px;
            margin-bottom: 25px;
        }

        .time-box {
            min-width: 65px;
            padding: 9px;
            border-radius: 10px;
            text-align: center;
            background: rgba(255, 255, 255, .1);
            border: 1px solid rgba(255, 255, 255, .15);
            backdrop-filter: blur(10px);
        }

        .time-box strong {
            display: block;
            font-size: 20px;
        }

        .time-box small {
            color: #cbd5e1;
            font-size: 10px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            color: white;
            border-radius: 22px;
            padding: 55px 30px;
            text-align: center;
            overflow: hidden;
            position: relative;
        }

        .newsletter h2 {
            font-family: Poppins;
            font-size: 30px;
        }

        .newsletter p {
            color: #dbeafe;
            margin: 8px 0 25px;
        }

        .newsletter-form {
            max-width: 510px;
            margin: auto;
            display: flex;
            gap: 8px;
            padding: 6px;
            background: white;
            border-radius: 12px;
        }

        .newsletter-form input {
            flex: 1;
            border: 0;
            outline: 0;
            padding: 11px 13px;
            min-width: 0;
        }

        .newsletter-form button {
            border: 0;
            border-radius: 9px;
            padding: 11px 20px;
            background: var(--primary);
            color: white;
            font-weight: 700;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            margin-top: 80px;
            background: #0f172a;
            color: #cbd5e1;
            padding: 55px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 45px;
        }

        .footer-brand {
            color: white;
            font-family: Poppins;
            font-size: 20px;
            font-weight: 700;
        }

        .footer-brand span {
            color: #38bdf8;
        }

        .footer-description {
            max-width: 350px;
            margin-top: 12px;
            color: #94a3b8;
            font-size: 13px;
        }

        .footer-column h4 {
            color: white;
            margin-bottom: 15px;
            font-size: 14px;
        }

        .footer-column a {
            display: block;
            color: #94a3b8;
            font-size: 13px;
            margin-bottom: 9px;
        }

        .footer-column a:hover {
            color: white;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,.08);
            margin-top: 40px;
            padding-top: 20px;
            text-align: center;
            color: #64748b;
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, .55);
            z-index: 150;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            z-index: 200;
            width: min(420px, 100%);
            height: 100%;
            background: white;
            box-shadow: -15px 0 40px rgba(0,0,0,.15);
            transform: translateX(100%);
            transition: .3s;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.show {
            transform: translateX(0);
        }

        .cart-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: Poppins;
        }

        .close-cart {
            width: 36px;
            height: 36px;
            border: 0;
            border-radius: 9px;
            background: var(--surface-soft);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-empty {
            height: 100%;
            display: grid;
            place-items: center;
            text-align: center;
            color: var(--muted);
        }

        .cart-empty i {
            font-size: 45px;
            color: #cbd5e1;
            margin-bottom: 12px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            margin-bottom: 16px;
        }

        .cart-item img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 10px;
            background: #f1f5f9;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info strong {
            display: block;
            font-size: 13px;
        }

        .cart-item-info span {
            color: var(--muted);
            font-size: 12px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout-btn {
            width: 100%;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            right: 22px;
            bottom: 22px;
            z-index: 300;
            background: #0f172a;
            color: white;
            padding: 13px 17px;
            border-radius: 11px;
            box-shadow: var(--shadow-lg);
            display: flex;
            align-items: center;
            gap: 10px;
            transform: translateY(20px);
            opacity: 0;
            pointer-events: none;
            transition: .3s;
            font-size: 13px;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        .toast i {
            color: #4ade80;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width:1100px) {
            .desktop-nav {
                display: none;
            }

            .search-box {
                flex: 1;
            }

            .mobile-menu-btn {
                display: block;
            }

            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media(max-width:800px) {
            .top-links {
                display: none;
            }

            .header-inner {
                height: 68px;
                gap: 10px;
            }

            .logo {
                font-size: 19px;
            }

            .logo-icon {
                width: 35px;
                height: 35px;
            }

            .search-box {
                order: 3;
                width: 100%;
                flex-basis: 100%;
            }

            .header-inner {
                flex-wrap: wrap;
                height: auto;
                padding: 10px 0;
            }

            .header-actions {
                margin-left: auto;
            }

            .trust-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .trust-item:nth-child(-n+2) {
                border-bottom: 1px solid var(--border);
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:600px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .top-bar {
                display: none;
            }

            .hero {
                min-height: 530px;
                background:
                    linear-gradient(90deg,
                        rgba(15, 23, 42, .94),
                        rgba(15, 23, 42, .68)),
                    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=80")
                    center/cover;
            }

            .hero h1 {
                letter-spacing: -1px;
            }

            .hero p {
                font-size: 14px;
            }

            .trust-grid {
                grid-template-columns: 1fr;
            }

            .trust-item {
                border-right: 0 !important;
                border-bottom: 1px solid var(--border);
            }

            .trust-item:last-child {
                border-bottom: 0;
            }

            .section {
                padding: 55px 0;
            }

            .section-header {
                align-items: flex-start;
                flex-direction: column;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }

            .product-image {
                height: 180px;
            }

            .product-content {
                padding: 12px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 16px;
            }

            .sale-card {
                min-height: 500px;
            }

            .sale-content {
                padding: 30px 22px;
            }

            .sale-content h2 {
                font-size: 30px;
            }

            .newsletter-form {
                flex-direction: column;
                background: transparent;
            }

            .newsletter-form input,
            .newsletter-form button {
                width: 100%;
                border-radius: 9px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .toast {
                left: 14px;
                right: 14px;
                bottom: 14px;
            }
        }
    </style>
</head>

<body>

    <!-- TOP BAR -->
    <div class="top-bar">
        <div class="container top-bar-inner">
            <span>
                <i class="fa-solid fa-truck-fast"></i>
                Free shipping on orders over $50
            </span>

            <div class="top-links">
                <a href="#">Track Order</a>
                <a href="#">Help Center</a>
                <a href="#">USD <i class="fa-solid fa-chevron-down"></i></a>
            </div>
        </div>
    </div>

    <!-- HEADER -->
    <header>
        <div class="container header-inner">

            <button class="header-btn mobile-menu-btn" id="mobileMenuBtn">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="logo">
                <span class="logo-icon">
                    <i class="fa-solid fa-bag-shopping"></i>
                </span>
                Nexus<span>Shop</span>
            </a>

            <nav class="desktop-nav">
                <a href="#" class="active">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Deals</a>
                <a href="#about">About</a>
            </nav>

            <div class="search-box">
                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    autocomplete="off">
            </div>

            <div class="header-actions">

                <button class="header-btn" title="Account">
                    <i class="fa-regular fa-user"></i>
                </button>

                <button class="header-btn" id="wishlistBtn" title="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                    <span class="badge-count" id="wishlistCount">0</span>
                </button>

                <button class="header-btn" id="cartBtn" title="Shopping Cart">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <span class="badge-count" id="cartCount">0</span>
                </button>

            </div>
        </div>
    </header>

    <!-- HERO -->
    <section class="hero">

        <div class="container">
            <div class="hero-content">

                <div class="hero-tag">
                    <i class="fa-solid fa-sparkles"></i>
                    New Season Collection
                </div>

                <h1>
                    Premium products.
                    <span>Better prices.</span>
                </h1>

                <p>
                    Discover hand-picked fashion, technology and lifestyle
                    essentials designed to make your everyday life better.
                </p>

                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopNow">
                        Shop Collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-white" id="heroDeals">
                        <i class="fa-solid fa-bolt"></i>
                        View Deals
                    </button>
                </div>

            </div>
        </div>

    </section>

    <!-- TRUST -->
    <section class="trust-bar">
        <div class="container">
            <div class="trust-grid">

                <div class="trust-item">
                    <div class="trust-icon">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>
                    <div>
                        <strong>Free Shipping</strong>
                        <small>Orders over $50</small>
                    </div>
                </div>

                <div class="trust-item">
                    <div class="trust-icon">
                        <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <div>
                        <strong>Secure Payment</strong>
                        <small>100% protected</small>
                    </div>
                </div>

                <div class="trust-item">
                    <div class="trust-icon">
                        <i class="fa-solid fa-rotate-left"></i>
                    </div>
                    <div>
                        <strong>Easy Returns</strong>
                        <small>30-day returns</small>
                    </div>
                </div>

                <div class="trust-item">
                    <div class="trust-icon">
                        <i class="fa-solid fa-headset"></i>
                    </div>
                    <div>
                        <strong>24/7 Support</strong>
                        <small>We're here to help</small>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">

        <div class="container">

            <div class="section-header">
                <div class="section-title">
                    <small>Explore</small>
                    <h2>Shop by Category</h2>
                    <p>Find exactly what you're looking for.</p>
                </div>
            </div>

            <div class="category-grid" id="categoryGrid"></div>

        </div>

    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">

        <div class="container">

            <div class="section-header">

                <div class="section-title">
                    <small>Trending now</small>
                    <h2>Popular Products</h2>
                    <p>Our customers' favorite picks.</p>
                </div>

                <a href="#" class="view-all">
                    View all <i class="fa-solid fa-arrow-right"></i>
                </a>

            </div>

            <div class="filter-row" id="filterRow"></div>

            <br>

            <div class="product-grid" id="productGrid"></div>

        </div>

    </section>

    <!-- FLASH SALE -->
    <section class="sale-section" id="deals">

        <div class="container">

            <div class="sale-card">

                <div class="sale-content">

                    <div class="sale-label">
                        <i class="fa-solid fa-bolt"></i>
                        Limited Time Offer
                    </div>

                    <h2>Flash Sale</h2>

                    <p>
                        Upgrade your workspace with the powerful MacBook Air.
                        Limited stock available at this special price.
                    </p>

                    <div class="countdown">

                        <div class="time-box">
                            <strong id="days">00</strong>
                            <small>DAYS</small>
                        </div>

                        <div class="time-box">
                            <strong id="hours">00</strong>
                            <small>HOURS</small>
                        </div>

                        <div class="time-box">
                            <strong id="minutes">00</strong>
                            <small>MIN</small>
                        </div>

                        <div class="time-box">
                            <strong id="seconds">00</strong>
                            <small>SEC</small>
                        </div>

                    </div>

                    <button class="btn btn-primary" id="dealBtn">
                        Shop Deal
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- NEWSLETTER -->
    <section class="section">

        <div class="container">

            <div class="newsletter">

                <h2>Get the latest deals</h2>

                <p>
                    Subscribe and receive exclusive offers and new product alerts.
                </p>

                <form class="newsletter-form" id="newsletterForm">

                    <input
                        type="email"
                        id="emailInput"
                        placeholder="Enter your email address"
                        required>

                    <button type="submit">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>

    </section>

    <!-- FOOTER -->
    <footer id="about">

        <div class="container">

            <div class="footer-grid">

                <div>
                    <div class="footer-brand">
                        Nexus<span>Shop</span>
                    </div>

                    <p class="footer-description">
                        A modern shopping experience built around quality,
                        great prices and exceptional customer service.
                    </p>
                </div>

                <div class="footer-column">
                    <h4>Shop</h4>
                    <a href="#">New Arrivals</a>
                    <a href="#">Best Sellers</a>
                    <a href="#">Deals</a>
                    <a href="#">Categories</a>
                </div>

                <div class="footer-column">
                    <h4>Support</h4>
                    <a href="#">Help Center</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Contact Us</a>
                </div>

                <div class="footer-column">
                    <h4>Company</h4>
                    <a href="#">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Privacy</a>
                    <a href="#">Terms</a>
                </div>

            </div>

            <div class="footer-bottom">
                © <span id="year"></span> NexusShop. All rights reserved.
            </div>

        </div>

    </footer>

    <!-- OVERLAY -->
    <div class="overlay" id="overlay"></div>

    <!-- CART DRAWER -->
    <aside class="cart-drawer" id="cartDrawer">

        <div class="cart-header">

            <h3>
                Shopping Cart
                <span id="cartTitleCount">(0)</span>
            </h3>

            <button class="close-cart" id="closeCart">
                <i class="fa-solid fa-xmark"></i>
            </button>

        </div>

        <div class="cart-items" id="cartItems">

            <div class="cart-empty">
                <div>
                    <i class="fa-solid fa-bag-shopping"></i>
                    <h3>Your cart is empty</h3>
                    <p>Add some products to get started.</p>
                </div>
            </div>

        </div>

        <div class="cart-footer">

            <div class="cart-total">
                <span>Total</span>
                <span id="cartTotal">$0</span>
            </div>

            <button class="btn btn-primary checkout-btn" id="checkoutBtn">
                Checkout
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

    </aside>

    <!-- TOAST -->
    <div class="toast" id="toast">
        <i class="fa-solid fa-circle-check"></i>
        <span id="toastMessage">Added to cart</span>
    </div>

    <script>

        /* =========================
           DATA
        ========================= */

        const categories = [
            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },
            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },
            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-shirt"
            },
            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones"
            },
            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },
            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-watch"
            }
        ];

        const products = [
            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                category: "phones",
                badge: "NEW",
                image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 5,
                reviews: 86,
                category: "laptops",
                image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                category: "accessories",
                badge: "-25%",
                sale: true,
                image: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 4,
                title: "Nike Air Max 270",
                price: 150,
                rating: 4,
                reviews: 53,
                category: "footwear",
                image: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 5,
                title: "Sony A7 IV Camera",
                price: 2499,
                rating: 5,
                reviews: 42,
                category: "gadgets",
                image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 6,
                title: "Premium Perfume",
                price: 120,
                rating: 5,
                reviews: 189,
                category: "accessories",
                image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 7,
                title: "Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                category: "accessories",
                badge: "SALE",
                sale: true,
                image: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85"
            },
            {
                id: 8,
                title: "Sony WH-1000XM5",
                price: 399,
                rating: 5,
                reviews: 156,
                category: "gadgets",
                badge: "BEST SELLER",
                image: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85"
            }
        ];

        let cart = [];
        let wishlist = [];
        let activeCategory = "all";

        /* =========================
           DOM
        ========================= */

        const categoryGrid = document.getElementById("categoryGrid");
        const filterRow = document.getElementById("filterRow");
        const productGrid = document.getElementById("productGrid");
        const searchInput = document.getElementById("searchInput");

        const cartBtn = document.getElementById("cartBtn");
        const cartDrawer = document.getElementById("cartDrawer");
        const closeCart = document.getElementById("closeCart");
        const overlay = document.getElementById("overlay");

        const cartItems = document.getElementById("cartItems");
        const cartCount = document.getElementById("cartCount");
        const cartTitleCount = document.getElementById("cartTitleCount");
        const cartTotal = document.getElementById("cartTotal");

        const wishlistCount = document.getElementById("wishlistCount");

        const toast = document.getElementById("toast");
        const toastMessage = document.getElementById("toastMessage");

        /* =========================
           CATEGORIES
        ========================= */

        function renderCategories() {

            categoryGrid.innerHTML = categories.map(category => `
                <div class="category" data-category="${category.id}">

                    <div class="category-icon">
                        <i class="fa-solid ${category.icon}"></i>
                    </div>

                    <strong>${category.name}</strong>

                    <small>
                        Explore products
                    </small>

                </div>
            `).join("");

            document.querySelectorAll(".category").forEach(card => {

                card.addEventListener("click", () => {

                    activeCategory = card.dataset.category;

                    renderFilters();
                    renderProducts();

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                });

            });

        }

        /* =========================
           FILTERS
        ========================= */

        function renderFilters() {

            const filterCategories = [
                {
                    id: "all",
                    name: "All Products"
                },
                ...categories
            ];

            filterRow.innerHTML = filterCategories.map(category => `
                <button
                    class="filter-btn ${activeCategory === category.id ? "active" : ""}"
                    data-filter="${category.id}">
                    ${category.name}
                </button>
            `).join("");

            document.querySelectorAll(".filter-btn").forEach(button => {

                button.addEventListener("click", () => {

                    activeCategory = button.dataset.filter;

                    renderFilters();
                    renderProducts();

                });

            });

        }

        /* =========================
           PRODUCTS
        ========================= */

        function renderProducts() {

            const query = searchInput.value
                .trim()
                .toLowerCase();

            let filteredProducts = products.filter(product => {

                const matchesCategory =
                    activeCategory === "all" ||
                    product.category === activeCategory;

                const matchesSearch =
                    product.title.toLowerCase().includes(query) ||
                    product.category.toLowerCase().includes(query);

                return matchesCategory && matchesSearch;

            });

            if (!filteredProducts.length) {

                productGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <h3>No products found</h3>
                        <p>Try another search or category.</p>
                    </div>
                `;

                return;
            }

            productGrid.innerHTML = filteredProducts.map(product => {

                const isWishlisted = wishlist.includes(product.id);

                return `
                    <article class="product-card">

                        <div class="product-image">

                            ${
                                product.badge
                                ? `<span class="product-badge ${product.sale ? "sale" : ""}">
                                    ${product.badge}
                                   </span>`
                                : ""
                            }

                            <button
                                class="wishlist ${isWishlisted ? "active" : ""}"
                                data-wishlist="${product.id}"
                                aria-label="Add to wishlist">

                                <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>

                            </button>

                            <img
                                src="${product.image}"
                                alt="${product.title}"
                                loading="lazy">

                        </div>

                        <div class="product-content">

                            <div class="product-category">
                                ${product.category}
                            </div>

                            <div class="product-title">
                                ${product.title}
                            </div>

                            <div class="rating">

                                <span class="stars">
                                    ${"★".repeat(product.rating)}
                                </span>

                                <span class="review-count">
                                    (${product.reviews})
                                </span>

                            </div>

                            <div class="price-row">

                                <div>
                                    <span class="price">
                                        $${product.price.toLocaleString()}
                                    </span>

                                    ${
                                        product.oldPrice
                                        ? `<span class="old-price">
                                            $${product.oldPrice.toLocaleString()}
                                           </span>`
                                        : ""
                                    }

                                </div>

                                <button
                                    class="add-cart"
                                    data-add="${product.id}"
                                    aria-label="Add ${product.title} to cart">

                                    <i class="fa-solid fa-plus"></i>

                                </button>

                            </div>

                        </div>

                    </article>
                `;

            }).join("");

            attachProductEvents();

        }

        /* =========================
           PRODUCT EVENTS
        ========================= */

        function attachProductEvents() {

            document.querySelectorAll("[data-add]").forEach(button => {

                button.addEventListener("click", () => {

                    const id = Number(button.dataset.add);

                    addToCart(id);

                });

            });

            document.querySelectorAll("[data-wishlist]").forEach(button => {

                button.addEventListener("click", () => {

                    const id = Number(button.dataset.wishlist);

                    toggleWishlist(id);

                });

            });

        }

        /* =========================
           CART
        ========================= */

        function addToCart(id) {

            const product = products.find(
                product => product.id === id
            );

            if (!product) return;

            const existing = cart.find(
                item => item.id === id
            );

            if (existing) {
                existing.quantity++;
            } else {
                cart.push({
                    ...product,
                    quantity: 1
                });
            }

            updateCart();

            showToast(`${product.title} added to cart`);

        }

        function updateCart() {

            const count = cart.reduce(
                (total, item) => total + item.quantity,
                0
            );

            const total = cart.reduce(
                (sum, item) =>
                    sum + item.price * item.quantity,
                0
            );

            cartCount.textContent = count;
            cartTitleCount.textContent = `(${count})`;
            cartTotal.textContent =
                `$${total.toLocaleString()}`;

            if (!cart.length) {

                cartItems.innerHTML = `
                    <div class="cart-empty">
                        <div>
                            <i class="fa-solid fa-bag-shopping"></i>
                            <h3>Your cart is empty</h3>
                            <p>Add some products to get started.</p>
                        </div>
                    </div>
                `;

                return;
            }

            cartItems.innerHTML = cart.map(item => `

                <div class="cart-item">

                    <img
                        src="${item.image}"
                        alt="${item.title}">

                    <div class="cart-item-info">

                        <strong>${item.title}</strong>

                        <span>
                            $${item.price.toLocaleString()}
                            × ${item.quantity}
                        </span>

                    </div>

                </div>

            `).join("");

        }

        /* =========================
           WISHLIST
        ========================= */

        function toggleWishlist(id) {

            if (wishlist.includes(id)) {

                wishlist =
                    wishlist.filter(item => item !== id);

                showToast("Removed from wishlist");

            } else {

                wishlist.push(id);

                showToast("Added to wishlist");

            }

            wishlistCount.textContent =
                wishlist.length;

            renderProducts();

        }

        /* =========================
           CART DRAWER
        ========================= */

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
        closeCart.addEventListener("click", closeCartDrawer);
        overlay.addEventListener("click", closeCartDrawer);

        /* =========================
           SEARCH
        ========================= */

        searchInput.addEventListener(
            "input",
            renderProducts
        );

        /* =========================
           HERO BUTTONS
        ========================= */

        document
            .getElementById("shopNow")
            .addEventListener("click", () => {

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

        document
            .getElementById("heroDeals")
            .addEventListener("click", () => {

                document
                    .getElementById("deals")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

        document
            .getElementById("dealBtn")
            .addEventListener("click", () => {

                const product = products.find(
                    product => product.title.includes("MacBook")
                );

                if (product) {
                    addToCart(product.id);
                    openCart();
                }

            });

        /* =========================
           NEWSLETTER
        ========================= */

        document
            .getElementById("newsletterForm")
            .addEventListener("submit", event => {

                event.preventDefault();

                const email =
                    document.getElementById("emailInput").value;

                if (!email) return;

                showToast("You're successfully subscribed!");

                event.target.reset();

            });

        /* =========================
           TOAST
        ========================= */

        let toastTimer;

        function showToast(message) {

            toastMessage.textContent = message;

            toast.classList.add("show");

            clearTimeout(toastTimer);

            toastTimer = setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);

        }

        /* =========================
           COUNTDOWN
        ========================= */

        const saleEnd =
            new Date().getTime() +
            (24 * 60 * 60 * 1000);

        function updateCountdown() {

            const now =
                new Date().getTime();

            const distance =
                saleEnd - now;

            if (distance <= 0) return;

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

            document.getElementById("days").textContent =
                String(days).padStart(2, "0");

            document.getElementById("hours").textContent =
                String(hours).padStart(2, "0");

            document.getElementById("minutes").textContent =
                String(minutes).padStart(2, "0");

            document.getElementById("seconds").textContent =
                String(seconds).padStart(2, "0");

        }

        setInterval(updateCountdown, 1000);
        updateCountdown();

        /* =========================
           MOBILE MENU
        ========================= */

        document
            .getElementById("mobileMenuBtn")
            .addEventListener("click", () => {

                showToast("Mobile navigation can be expanded here");

            });

        /* =========================
           INITIALIZATION
        ========================= */

        document.getElementById("year").textContent =
            new Date().getFullYear();

        renderCategories();
        renderFilters();
        renderProducts();
        updateCart();

    </script>

</body>

</html>
