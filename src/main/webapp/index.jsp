<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Outfit:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f8fafc;
            --surface: #ffffff;
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #4f46e5;
            --accent-hover: #4338ca;
            --accent-soft: #eef2ff;
            --secondary: #ec4899;
            --muted: #64748b;
            --muted-light: #94a3b8;
            --border: #e2e8f0;
            --success: #10b981;
            --warning: #f59e0b;
            --radius-lg: 20px;
            --radius-md: 12px;
            --radius-sm: 8px;
            --shadow-subtle: 0 1px 3px rgba(0,0,0,0.05);
            --shadow-card: 0 10px 25px -5px rgba(15, 23, 42, 0.04), 0 8px 10px -6px rgba(15, 23, 42, 0.04);
            --shadow-hover: 0 20px 30px -10px rgba(15, 23, 42, 0.1);
            --transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1280px;
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
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            overflow-x: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
        }

        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== BUTTONS ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 24px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: #fff;
            box-shadow: 0 4px 14px rgba(79, 70, 229, 0.35);
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(79, 70, 229, 0.45);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(8px);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.25);
            transform: translateY(-2px);
        }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 72px;
            gap: 20px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Outfit', sans-serif;
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.5px;
            color: var(--primary);
        }

        .brand-icon {
            width: 40px;
            height: 40px;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--accent), var(--secondary));
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 18px;
            box-shadow: 0 4px 12px rgba(79, 70, 229, 0.3);
        }

        .brand span span {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            list-style: none;
            gap: 6px;
        }

        nav.main-nav a {
            padding: 8px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover,
        nav.main-nav a.active {
            color: var(--accent);
            background: var(--accent-soft);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search-box {
            position: relative;
            width: 260px;
            display: flex;
            align-items: center;
        }

        .search-box input {
            width: 100%;
            padding: 10px 16px 10px 38px;
            border-radius: 999px;
            border: 1px solid var(--border);
            background: var(--bg);
            font-size: 13px;
            color: var(--primary);
            outline: none;
            transition: var(--transition);
        }

        .search-box input:focus {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.15);
        }

        .search-box i {
            position: absolute;
            left: 14px;
            color: var(--muted-light);
            font-size: 14px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            font-size: 16px;
            position: relative;
            transition: var(--transition);
        }

        .icon-btn:hover {
            color: var(--accent);
            border-color: var(--accent);
            transform: translateY(-1px);
        }

        .badge-count {
            position: absolute;
            top: -4px;
            right: -4px;
            width: 18px;
            height: 18px;
            background: var(--secondary);
            color: #fff;
            border-radius: 50%;
            font-size: 10px;
            font-weight: 700;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        /* ===== HERO SECTION ===== */
        .hero-section {
            padding: 24px 0 40px;
        }

        .hero-banner {
            border-radius: var(--radius-lg);
            background: linear-gradient(135deg, #090e1a 0%, #1e1b4b 100%);
            overflow: hidden;
            position: relative;
            padding: 64px 48px;
            color: #fff;
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 40px;
        }

        .hero-banner::after {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 600px;
            height: 600px;
            border-radius: 50%;
            background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, transparent 70%);
            pointer-events: none;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .pill-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 6px 14px;
            border-radius: 999px;
            background: rgba(99, 102, 241, 0.2);
            border: 1px solid rgba(99, 102, 241, 0.4);
            color: #818cf8;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .hero-banner h1 {
            font-family: 'Outfit', sans-serif;
            font-size: 48px;
            line-height: 1.15;
            font-weight: 800;
            margin-bottom: 16px;
            letter-spacing: -1px;
        }

        .hero-banner p {
            color: #94a3b8;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 32px;
            max-width: 480px;
        }

        .hero-actions {
            display: flex;
            gap: 14px;
        }

        .hero-visual {
            position: relative;
            z-index: 2;
            display: flex;
            justify-content: center;
        }

        .hero-visual img {
            border-radius: var(--radius-md);
            box-shadow: 0 25px 50px -12px rgba(0,0,0,0.5);
            max-height: 340px;
            object-fit: cover;
            border: 1px solid rgba(255,255,255,0.1);
        }

        /* ===== SECTION STYLING ===== */
        .section {
            padding: 48px 0;
        }

        .section-heading {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 32px;
        }

        .section-heading h2 {
            font-family: 'Outfit', sans-serif;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .section-heading p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 4px;
        }

        /* Category Filter Pills */
        .filter-pills {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            padding-bottom: 12px;
            margin-bottom: 24px;
        }

        .pill-btn {
            padding: 8px 18px;
            border-radius: 999px;
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            font-weight: 600;
            font-size: 13px;
            white-space: nowrap;
            transition: var(--transition);
        }

        .pill-btn.active, .pill-btn:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }

        /* ===== CATEGORIES GRID ===== */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .cat-item {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 20px 16px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .cat-item:hover {
            transform: translateY(-4px);
            border-color: var(--accent);
            box-shadow: var(--shadow-card);
        }

        .cat-icon-wrap {
            width: 52px;
            height: 52px;
            border-radius: 14px;
            background: var(--accent-soft);
            color: var(--accent);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 20px;
            transition: var(--transition);
        }

        .cat-item:hover .cat-icon-wrap {
            background: var(--accent);
            color: #fff;
        }

        .cat-item h4 {
            font-size: 14px;
            font-weight: 700;
        }

        .cat-item span {
            font-size: 12px;
            color: var(--muted-light);
        }

        /* ===== PRODUCT CARD GRID ===== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
            border-color: #cbd5e1;
        }

        .product-thumb {
            position: relative;
            background: #f1f5f9;
            aspect-ratio: 1 / 1;
            overflow: hidden;
        }

        .product-thumb img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-card:hover .product-thumb img {
            transform: scale(1.05);
        }

        .card-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }

        .badge-new {
            background: var(--primary);
            color: #fff;
        }

        .badge-sale {
            background: var(--secondary);
            color: #fff;
        }

        .wish-trigger {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(4px);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 14px;
        }

        .wish-trigger:hover, .wish-trigger.active {
            color: var(--secondary);
            background: #fff;
        }

        .product-details {
            padding: 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .product-category {
            font-size: 11px;
            font-weight: 700;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            line-height: 1.4;
            color: var(--primary);
        }

        .rating-bar {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 12px;
            color: var(--warning);
        }

        .rating-bar span {
            color: var(--muted);
            margin-left: 2px;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: auto;
            padding-top: 8px;
        }

        .current-price {
            font-size: 18px;
            font-weight: 800;
            color: var(--primary);
        }

        .old-price {
            font-size: 13px;
            color: var(--muted-light);
            text-decoration: line-through;
        }

        .card-footer {
            padding: 0 16px 16px;
        }

        .add-cart-btn {
            width: 100%;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--bg);
            border: 1px solid var(--border);
            color: var(--primary);
            font-weight: 600;
            font-size: 13px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }

        .add-cart-btn:hover {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }

        /* ===== FLASH DEAL BOX ===== */
        .deal-card {
            background: #fff;
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            box-shadow: var(--shadow-card);
        }

        .deal-img-wrapper {
            background: #f1f5f9;
        }

        .deal-img-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-info {
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-countdown {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .countdown-segment {
            background: var(--bg);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 10px 14px;
            min-width: 60px;
            text-align: center;
        }

        .countdown-segment .value {
            font-size: 22px;
            font-weight: 800;
            color: var(--accent);
        }

        .countdown-segment .label {
            font-size: 10px;
            color: var(--muted);
            text-transform: uppercase;
            font-weight: 600;
        }

        /* ===== REVIEWS CAROUSEL ===== */
        .reviews-wrapper {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 10px 0 20px;
        }

        .review-box {
            flex: 0 0 320px;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 24px;
            box-shadow: var(--shadow-subtle);
        }

        .review-box blockquote {
            font-size: 14px;
            color: var(--primary-light);
            line-height: 1.6;
            margin: 12px 0 16px;
        }

        .reviewer-info {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .reviewer-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* ===== CART SLIDE-OVER DRAWER ===== */
        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, 0.5);
            backdrop-filter: blur(4px);
            z-index: 100;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
        }

        .cart-overlay.open {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            max-width: 420px;
            height: 100%;
            background: #fff;
            box-shadow: -10px 0 30px rgba(0,0,0,0.1);
            z-index: 101;
            transform: translateX(100%);
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.open {
            transform: translateX(0);
        }

        .drawer-header {
            padding: 20px 24px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .drawer-header h3 {
            font-family: 'Outfit', sans-serif;
            font-size: 18px;
            font-weight: 700;
        }

        .drawer-body {
            flex: 1;
            overflow-y: auto;
            padding: 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .cart-item {
            display: flex;
            gap: 14px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: var(--radius-sm);
            object-fit: cover;
        }

        .cart-item-details {
            flex: 1;
        }

        .cart-item-title {
            font-size: 14px;
            font-weight: 600;
        }

        .cart-item-price {
            font-size: 13px;
            color: var(--accent);
            font-weight: 700;
            margin-top: 4px;
        }

        .drawer-footer {
            padding: 24px;
            border-top: 1px solid var(--border);
            background: var(--bg);
        }

        .drawer-total {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 16px;
        }

        /* ===== TOAST NOTIFICATION ===== */
        .toast {
            position: fixed;
            bottom: 24px;
            right: 24px;
            padding: 12px 20px;
            background: var(--primary);
            color: #fff;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            transform: translateY(100px);
            opacity: 0;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            z-index: 200;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* ===== FOOTER ===== */
        footer {
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 60px 0 24px;
            margin-top: 60px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-col h5 {
            font-family: 'Outfit', sans-serif;
            font-size: 15px;
            margin-bottom: 16px;
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .footer-col a {
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--accent);
        }

        .footer-bottom {
            padding-top: 24px;
            border-top: 1px solid var(--border);
            text-align: center;
            font-size: 13px;
            color: var(--muted-light);
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1024px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .cat-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 768px) {
            .hero-banner { grid-template-columns: 1fr; text-align: center; padding: 40px 24px; }
            .hero-banner h1 { font-size: 32px; }
            .hero-banner p { margin: 0 auto 24px; }
            .hero-actions { justify-content: center; }
            .hero-visual { display: none; }
            .deal-card { grid-template-columns: 1fr; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .search-box, nav.main-nav { display: none; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .cat-grid { grid-template-columns: repeat(2, 1fr); }
            .footer-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-icon"><i class="fas fa-layer-group"></i></div>
                <span>Nexus<span>Shop</span></span>
            </a>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search gadgets, apparel..." />
                </div>

                <button class="icon-btn" id="wishlistHeaderBtn" title="Wishlist" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge-count" id="wishlistCount">0</span>
                </button>

                <button class="icon-btn" id="cartOpenBtn" title="Open Cart" aria-label="Open Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- Hero -->
        <section class="hero-section">
            <div class="hero-banner">
                <div class="hero-content">
                    <div class="pill-badge"><i class="fas fa-sparkles"></i> Fall Selection 2026</div>
                    <h1>Elevate Your Everyday Essentials.</h1>
                    <p>Experience an artisan-curated collection of next-generation gadgets, accessories, and style staples built to last.</p>
                    <div class="hero-actions">
                        <a href="#products" class="btn btn-primary"><i class="fas fa-arrow-down"></i> Explore Catalog</a>
                        <a href="#deals" class="btn btn-secondary"><i class="fas fa-bolt"></i> View Flash Deal</a>
                    </div>
                </div>
                <div class="hero-visual">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Tech Essentials Preview">
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section" id="categories">
            <div class="section-heading">
                <div>
                    <h2>Curated Departments</h2>
                    <p>Targeted collections designed around your workflow.</p>
                </div>
            </div>
            <div class="cat-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products -->
        <section class="section" id="products">
            <div class="section-heading">
                <div>
                    <h2>Trending Products</h2>
                    <p>Highly requested equipment and lifestyle accessories.</p>
                </div>
            </div>

            <!-- Filter Pills -->
            <div class="filter-pills" id="categoryPills">
                <button class="pill-btn active" data-cat="All">All Items</button>
                <button class="pill-btn" data-cat="Smartphones">Smartphones</button>
                <button class="pill-btn" data-cat="Laptops">Laptops</button>
                <button class="pill-btn" data-cat="Gadgets">Gadgets</button>
                <button class="pill-btn" data-cat="Footwear">Footwear</button>
                <button class="pill-btn" data-cat="Accessories">Accessories</button>
            </div>

            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Deal -->
        <section class="section" id="deals">
            <div class="deal-card">
                <div class="deal-img-wrapper">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Deal" loading="lazy">
                </div>
                <div class="deal-info">
                    <span style="color:var(--secondary);font-size:12px;font-weight:700;letter-spacing:1px;text-transform:uppercase;">Limited Inventory</span>
                    <h3 style="font-size:32px;font-family:'Outfit',sans-serif;font-weight:800;margin:8px 0;">MacBook Air M2</h3>
                    <p style="color:var(--muted);font-size:15px;">Supercharged by M2 chip. Incredible battery efficiency meets thin, silent unibody construction.</p>
                    
                    <div class="deal-countdown" id="dealCountdown">
                        <div class="countdown-segment"><div class="value" id="hours">14</div><div class="label">Hours</div></div>
                        <div class="countdown-segment"><div class="value" id="minutes">32</div><div class="label">Mins</div></div>
                        <div class="countdown-segment"><div class="value" id="seconds">45</div><div class="label">Secs</div></div>
                    </div>

                    <div style="display:flex;align-items:center;gap:14px;margin-bottom:20px;">
                        <span style="font-size:28px;font-weight:800;color:var(--primary);">$999</span>
                        <span style="font-size:18px;color:var(--muted-light);text-decoration:line-through;">$1,199</span>
                    </div>

                    <button class="btn btn-primary" id="claimDealBtn" style="align-self:flex-start;"><i class="fas fa-cart-plus"></i> Claim This Offer</button>
                </div>
            </div>
        </section>

        <!-- Reviews -->
        <section class="section">
            <div class="section-heading">
                <div>
                    <h2>Verified Feedback</h2>
                    <p>What our customer network says about product reliability.</p>
                </div>
            </div>
            <div class="reviews-wrapper" id="reviewsContainer"></div>
        </section>
    </main>

    <!-- Slide-Over Cart Drawer -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <div class="cart-drawer" id="cartDrawer">
        <div class="drawer-header">
            <h3>Your Shopping Cart</h3>
            <button class="icon-btn" id="cartCloseBtn" aria-label="Close Cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="drawer-body" id="cartItemsList">
            <!-- Rendered Cart Items -->
        </div>
        <div class="drawer-footer">
            <div class="drawer-total">
                <span>Subtotal</span>
                <span id="cartSubtotal">$0.00</span>
            </div>
            <button class="btn btn-primary" style="width:100%;" onclick="alert('Proceeding to Checkout mock')">Checkout</button>
        </div>
    </div>

    <!-- Toast Notification -->
    <div class="toast" id="toastMessage"><i class="fas fa-check-circle" style="color:var(--success)"></i> <span>Item added to your bag</span></div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <div class="brand" style="margin-bottom:12px;">
                        <div class="brand-icon"><i class="fas fa-layer-group"></i></div>
                        <span>Nexus<span>Shop</span></span>
                    </div>
                    <p style="color:var(--muted);font-size:14px;max-width:320px;line-height:1.6;">Curating premium lifestyle devices and daily carry with direct-to-door verified quality.</p>
                </div>
                <div class="footer-col">
                    <h5>Catalog</h5>
                    <ul>
                        <li><a href="#">New Releases</a></li>
                        <li><a href="#">Workstations</a></li>
                        <li><a href="#">Smart Wearables</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Platform</h5>
                    <ul>
                        <li><a href="#">Order Tracking</a></li>
                        <li><a href="#">Warranty Protection</a></li>
                        <li><a href="#">Return Policy</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Connect</h5>
                    <ul>
                        <li><a href="#">Developer API</a></li>
                        <li><a href="#">Support Desk</a></li>
                        <li><a href="#">Privacy Framework</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year">2026</span> NexusShop Inc. All rights reserved.
            </div>
        </div>
    </footer>

    <script>
        // Data Store
        const CATEGORIES = [
            { id: 'Smartphones', name: 'Phones', icon: 'fa-mobile-screen', count: 24 },
            { id: 'Laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'Footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 42 },
            { id: 'Gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'Accessories', name: 'Carry', icon: 'fa-briefcase', count: 27 },
            { id: 'Wearables', name: 'Watches', icon: 'fa-stopwatch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4.8, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
            { id: 3, title: 'Apple Watch Ultra', price: 349, oldPrice: 399, rating: 4.9, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 4, title: 'Nike Air Max Dynamic', price: 150, oldPrice: null, rating: 4.4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
            { id: 5, title: 'Sony Alpha A7 Camera', price: 2499, oldPrice: null, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
            { id: 6, title: 'Minimalist Timepiece', price: 120, oldPrice: null, rating: 4.6, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 7, title: 'All-Weather Backpack', price: 79, oldPrice: 99, rating: 4.5, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5 ANC', price: 399, oldPrice: null, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
        ];

        const REVIEWS = [
            { name: 'Ava Martin', role: 'Staff Product Designer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80', text: 'Shipping arrived inside 48 hours. Build quality and clean packaging was on par with flagship boutiques.' },
            { name: 'Michael Lee', role: 'Audio Engineer', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80', text: 'Cleanest transaction UX I have experienced. The Sony headphones calibration came flawlessly configured.' },
            { name: 'Sophia Chen', role: 'Tech Journalist', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80', text: 'The MacBook deal was authentically discounted. Will be ordering studio kits from here on out.' }
        ];

        // App State
        let cart = [];
        let wishlist = new Set();
        let selectedCategory = 'All';

        // Element Bindings
        const productsGrid = document.getElementById('productsGrid');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const reviewsContainer = document.getElementById('reviewsContainer');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItemsList = document.getElementById('cartItemsList');
        const cartSubtotal = document.getElementById('cartSubtotal');
        const cartCountBadge = document.getElementById('cartCount');
        const wishlistCountBadge = document.getElementById('wishlistCount');
        const toastMessage = document.getElementById('toastMessage');

        // Toast Trigger
        function showToast(text) {
            toastMessage.querySelector('span').textContent = text;
            toastMessage.classList.add('show');
            setTimeout(() => toastMessage.classList.remove('show'), 2600);
        }

        // Render Categories
        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(c => `
                <div class="cat-item" onclick="selectCategory('${c.id}')">
                    <div class="cat-icon-wrap"><i class="fas ${c.icon}"></i></div>
                    <h4>${c.name}</h4>
                    <span>${c.count} Items</span>
                </div>
            `).join('');
        }

        // Render Products
        function renderProducts(items) {
            if (!items.length) {
                productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No matching gear found.</p>`;
                return;
            }

            productsGrid.innerHTML = items.map(p => {
                const isWished = wishlist.has(p.id);
                return `
                <article class="product-card">
                    <div class="product-thumb">
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        ${p.badge ? `<span class="card-badge ${p.badge === 'Sale' ? 'badge-sale' : 'badge-new'}">${p.badge}</span>` : ''}
                        <button class="wish-trigger ${isWished ? 'active' : ''}" onclick="toggleWishlist(${p.id})">
                            <i class="${isWished ? 'fas fa-heart' : 'far fa-heart'}"></i>
                        </button>
                    </div>
                    <div class="product-details">
                        <span class="product-category">${p.category}</span>
                        <h4 class="product-title">${p.title}</h4>
                        <div class="rating-bar">
                            <i class="fas fa-star"></i>
                            <strong>${p.rating}</strong>
                            <span>(${p.reviews})</span>
                        </div>
                        <div class="price-row">
                            <span class="current-price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="add-cart-btn" onclick="addToCart(${p.id})">
                            <i class="fas fa-bag-shopping"></i> Add to Bag
                        </button>
                    </div>
                </article>
                `;
            }).join('');
        }

        // Render Reviews
        function renderReviews() {
            reviewsContainer.innerHTML = REVIEWS.map(r => `
                <div class="review-box">
                    <div style="color:var(--warning);font-size:12px;"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <blockquote>“${r.text}”</blockquote>
                    <div class="reviewer-info">
                        <img src="${r.avatar}" alt="${r.name}">
                        <div>
                            <div style="font-weight:700;font-size:14px;">${r.name}</div>
                            <div style="font-size:12px;color:var(--muted);">${r.role}</div>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        // Cart Actions
        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            const existing = cart.find(item => item.id === productId);
            if (existing) {
                existing.qty++;
            } else {
                cart.push({ ...product, qty: 1 });
            }

            updateCartUI();
            showToast(`Added ${product.title} to bag`);
        }

        function removeFromCart(productId) {
            cart = cart.filter(item => item.id !== productId);
            updateCartUI();
        }

        function updateCartUI() {
            const totalCount = cart.reduce((sum, item) => sum + item.qty, 0);
            const totalSum = cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

            cartCountBadge.textContent = totalCount;
            cartSubtotal.textContent = `$${totalSum.toLocaleString()}`;

            if (cart.length === 0) {
                cartItemsList.innerHTML = `<p style="text-align:center;color:var(--muted);padding:40px 0;">Your shopping bag is empty.</p>`;
                return;
            }

            cartItemsList.innerHTML = cart.map(item => `
                <div class="cart-item">
                    <img src="${item.img}" alt="${item.title}">
                    <div class="cart-item-details">
                        <div class="cart-item-title">${item.title}</div>
                        <div class="cart-item-price">${item.qty} × $${item.price.toLocaleString()}</div>
                    </div>
                    <button onclick="removeFromCart(${item.id})" style="color:var(--muted-light);"><i class="fas fa-trash-can"></i></button>
                </div>
            `).join('');
        }

        // Wishlist Actions
        function toggleWishlist(productId) {
            if (wishlist.has(productId)) {
                wishlist.delete(productId);
                showToast('Removed from wishlist');
            } else {
                wishlist.add(productId);
                showToast('Added to wishlist');
            }
            wishlistCountBadge.textContent = wishlist.size;
            filterData();
        }

        // Filtering
        function selectCategory(cat) {
            selectedCategory = cat;
            document.querySelectorAll('.pill-btn').forEach(btn => {
                btn.classList.toggle('active', btn.dataset.cat === cat);
            });
            filterData();
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        }

        function filterData() {
            const term = document.getElementById('searchInput').value.toLowerCase().trim();
            const filtered = PRODUCTS.filter(p => {
                const matchesCat = selectedCategory === 'All' || p.category.toLowerCase() === selectedCategory.toLowerCase();
                const matchesSearch = p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term);
                return matchesCat && matchesSearch;
            });
            renderProducts(filtered);
        }

        // Deal Timer
        (function initTimer() {
            let totalSeconds = 14 * 3600 + 32 * 60 + 45;
            setInterval(() => {
                if (totalSeconds <= 0) return;
                totalSeconds--;
                document.getElementById('hours').textContent = String(Math.floor(totalSeconds / 3600)).padStart(2, '0');
                document.getElementById('minutes').textContent = String(Math.floor((totalSeconds % 3600) / 60)).padStart(2, '0');
                document.getElementById('seconds').textContent = String(totalSeconds % 60).padStart(2, '0');
            }, 1000);
        })();

        // Event Listeners
        document.getElementById('cartOpenBtn').addEventListener('click', () => {
            cartDrawer.classList.add('open');
            cartOverlay.classList.add('open');
        });

        document.getElementById('cartCloseBtn').addEventListener('click', () => {
            cartDrawer.classList.remove('open');
            cartOverlay.classList.remove('open');
        });

        cartOverlay.addEventListener('click', () => {
            cartDrawer.classList.remove('open');
            cartOverlay.classList.remove('open');
        });

        document.getElementById('categoryPills').addEventListener('click', (e) => {
            if (e.target.classList.contains('pill-btn')) {
                selectCategory(e.target.dataset.cat);
            }
        });

        document.getElementById('searchInput').addEventListener('input', filterData);

        document.getElementById('claimDealBtn').addEventListener('click', () => {
            addToCart(2); // Adds MacBook
            cartDrawer.classList.add('open');
            cartOverlay.classList.add('open');
        });

        // Initialize Page
        renderCategories();
        renderProducts(PRODUCTS);
        renderReviews();
        updateCartUI();
    </script>
</body>
</html>
