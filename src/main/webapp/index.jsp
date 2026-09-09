<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NEXUS — Premium Lifestyle & Electronics</title>

    <!-- Google Fonts & Font Awesome Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            /* Maroon Design System */
            --bg: #120307;
            --surface: #1e080f;
            --surface-elevated: #2c0e17;
            --border: rgba(244, 63, 94, 0.14);
            --border-focus: rgba(225, 29, 72, 0.6);
            --primary: #ffffff;
            --muted: #c99ea8;
            --muted-dark: #7a505b;
            --accent: #b91c1c;
            --accent-light: #fb7185;
            --accent-glow: rgba(185, 28, 28, 0.4);
            --secondary: #f43f5e;
            --success: #10b981;
            --warning: #fbbf24;
            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 24px;
            --transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1);
            --container: 1320px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }

        a { color: inherit; text-decoration: none; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; }
        input, select { font-family: inherit; outline: none; }
        img { display: block; max-width: 100%; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== UTILITY & BUTTONS ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 26px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
        }

        .btn-primary {
            background: linear-gradient(135deg, #e11d48, var(--accent));
            color: #fff;
            box-shadow: 0 4px 20px var(--accent-glow);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(225, 29, 72, 0.5);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.05);
            color: #fff;
            border: 1px solid var(--border);
            backdrop-filter: blur(8px);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        /* ===== TOP BANNER ===== */
        .announcement-bar {
            background: linear-gradient(90deg, #4c0519, #881337, #4c0519);
            background-size: 200% auto;
            animation: gradientShift 8s ease infinite;
            padding: 8px 16px;
            text-align: center;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: 0.5px;
            border-bottom: 1px solid rgba(244, 63, 94, 0.2);
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 60;
            background: rgba(18, 3, 7, 0.85);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 76px;
            gap: 20px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Space Grotesk', sans-serif;
            font-size: 24px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .brand-logo {
            width: 38px;
            height: 38px;
            background: linear-gradient(135deg, #e11d48, #881337);
            border-radius: 10px;
            display: grid;
            place-items: center;
            box-shadow: 0 0 16px var(--accent-glow);
        }

        .brand span {
            background: linear-gradient(to right, #fff, var(--muted));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .search-container {
            flex: 1;
            max-width: 440px;
            position: relative;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            padding: 0 16px;
            transition: var(--transition);
        }

        .search-box:focus-within {
            border-color: var(--secondary);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search-box i {
            color: var(--muted);
            font-size: 14px;
            margin-right: 10px;
        }

        .search-box input {
            width: 100%;
            background: transparent;
            border: none;
            color: #fff;
            padding: 10px 0;
            font-size: 13px;
        }

        .search-box input::placeholder { color: var(--muted-dark); }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .action-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            font-size: 15px;
            position: relative;
            transition: var(--transition);
        }

        .action-btn:hover {
            color: #fff;
            border-color: rgba(251, 113, 133, 0.4);
            transform: translateY(-2px);
        }

        .badge-counter {
            position: absolute;
            top: -4px;
            right: -4px;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--secondary);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
            transition: var(--transition);
        }

        /* ===== HERO ===== */
        .hero {
            padding: 32px 0 60px;
        }

        .hero-banner {
            border-radius: var(--radius-lg);
            background: radial-gradient(circle at 80% 20%, rgba(225, 29, 72, 0.22), transparent 50%),
                        linear-gradient(135deg, #240a12 0%, #150409 100%);
            border: 1px solid var(--border);
            padding: 68px 56px;
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 40px;
            position: relative;
            overflow: hidden;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(225, 29, 72, 0.15);
            border: 1px solid rgba(251, 113, 133, 0.35);
            color: var(--accent-light);
            padding: 6px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .hero-badge i { font-size: 11px; }

        .hero-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 52px;
            line-height: 1.1;
            font-weight: 700;
            margin-bottom: 20px;
            letter-spacing: -1.5px;
        }

        .hero-title span {
            background: linear-gradient(135deg, #fff 40%, var(--accent-light));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-desc {
            color: var(--muted);
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 36px;
            max-width: 500px;
        }

        .hero-img-box {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .hero-img-box img {
            border-radius: var(--radius-md);
            box-shadow: 0 20px 50px rgba(0,0,0,0.7);
            border: 1px solid var(--border);
            max-height: 380px;
            object-fit: cover;
        }

        /* ===== CATALOG CONTROLS ===== */
        .catalog-controls {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--border);
        }

        .filter-tabs {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            padding-bottom: 4px;
        }

        .tab-btn {
            padding: 8px 18px;
            border-radius: 999px;
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            font-size: 13px;
            font-weight: 600;
            white-space: nowrap;
            transition: var(--transition);
        }

        .tab-btn.active, .tab-btn:hover {
            background: var(--surface-elevated);
            border-color: var(--secondary);
            color: #fff;
        }

        .sort-select {
            background: var(--surface);
            border: 1px solid var(--border);
            color: #fff;
            padding: 8px 16px;
            border-radius: 999px;
            font-size: 13px;
            cursor: pointer;
        }

        /* ===== PRODUCT GRID ===== */
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
            transform: translateY(-6px);
            border-color: rgba(251, 113, 133, 0.4);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
        }

        .product-thumb {
            position: relative;
            background: #19050b;
            aspect-ratio: 1 / 1;
            overflow: hidden;
        }

        .product-thumb img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card:hover .product-thumb img {
            transform: scale(1.06);
        }

        .badge-tag {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 10px;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }

        .badge-new { background: var(--secondary); color: #fff; }
        .badge-sale { background: #881337; border: 1px solid var(--accent-light); color: #fff; }

        .card-actions {
            position: absolute;
            top: 12px;
            right: 12px;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .circle-action {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(30, 8, 15, 0.85);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border);
            color: var(--muted);
            display: grid;
            place-items: center;
            font-size: 13px;
            transition: var(--transition);
        }

        .circle-action:hover {
            color: #fff;
            background: var(--surface-elevated);
        }

        .circle-action.active-wish {
            color: var(--secondary);
            border-color: var(--secondary);
        }

        .product-body {
            padding: 18px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-cat {
            font-size: 11px;
            font-weight: 700;
            color: var(--accent-light);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 4px;
        }

        .product-name {
            font-size: 15px;
            font-weight: 600;
            line-height: 1.4;
            margin-bottom: 8px;
            color: #fff;
        }

        .product-meta {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            color: var(--warning);
            margin-bottom: 14px;
        }

        .product-meta span { color: var(--muted); }

        .product-foot {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 12px;
            border-top: 1px solid rgba(255, 255, 255, 0.04);
        }

        .price-container {
            display: flex;
            flex-direction: column;
        }

        .price-now {
            font-size: 18px;
            font-weight: 700;
            color: #fff;
        }

        .price-was {
            font-size: 12px;
            color: var(--muted-dark);
            text-decoration: line-through;
        }

        .btn-add-cart {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--surface-elevated);
            border: 1px solid var(--border);
            color: #fff;
            display: grid;
            place-items: center;
            transition: var(--transition);
        }

        .btn-add-cart:hover {
            background: var(--secondary);
            border-color: var(--secondary);
            box-shadow: 0 0 12px var(--accent-glow);
        }

        /* ===== SLIDE DRAWERS ===== */
        .drawer-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(6px);
            z-index: 100;
            opacity: 0;
            visibility: hidden;
            transition: var(--transition);
        }

        .drawer-overlay.open { opacity: 1; visibility: visible; }

        .slide-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            max-width: 440px;
            height: 100%;
            background: var(--surface);
            border-left: 1px solid var(--border);
            z-index: 101;
            transform: translateX(100%);
            transition: transform 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            flex-direction: column;
        }

        .slide-drawer.open { transform: translateX(0); }

        .drawer-head {
            padding: 24px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .drawer-head h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 18px;
            font-weight: 700;
        }

        .shipping-meter {
            background: var(--surface-elevated);
            padding: 12px 24px;
            border-bottom: 1px solid var(--border);
            font-size: 12px;
            color: var(--muted);
        }

        .meter-bar {
            height: 6px;
            background: rgba(255, 255, 255, 0.08);
            border-radius: 999px;
            margin-top: 8px;
            overflow: hidden;
        }

        .meter-fill {
            height: 100%;
            background: linear-gradient(90deg, #e11d48, var(--accent-light));
            width: 0%;
            transition: width 0.4s ease;
        }

        .drawer-content {
            flex: 1;
            overflow-y: auto;
            padding: 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .drawer-item {
            display: flex;
            gap: 14px;
            background: var(--surface-elevated);
            padding: 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border);
        }

        .drawer-item img {
            width: 70px;
            height: 70px;
            border-radius: 6px;
            object-fit: cover;
        }

        .item-info { flex: 1; }
        .item-name { font-size: 14px; font-weight: 600; margin-bottom: 4px; }
        .item-price { font-size: 13px; color: var(--accent-light); font-weight: 700; }

        .stepper {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }

        .stepper-btn {
            width: 24px;
            height: 24px;
            border-radius: 4px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            color: #fff;
            font-size: 11px;
            display: grid;
            place-items: center;
        }

        .stepper-btn:hover { background: rgba(255, 255, 255, 0.15); }

        .drawer-foot {
            padding: 24px;
            border-top: 1px solid var(--border);
            background: var(--surface);
        }

        .subtotal-row {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        /* ===== QUICK VIEW MODAL ===== */
        .modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.85);
            backdrop-filter: blur(8px);
            z-index: 110;
            opacity: 0;
            visibility: hidden;
            display: grid;
            place-items: center;
            padding: 20px;
            transition: var(--transition);
        }

        .modal-overlay.open { opacity: 1; visibility: visible; }

        .modal-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            width: 100%;
            max-width: 820px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.8);
            transform: scale(0.95);
            transition: var(--transition);
            position: relative;
        }

        .modal-overlay.open .modal-card { transform: scale(1); }

        .modal-close {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--surface-elevated);
            border: 1px solid var(--border);
            color: var(--muted);
            display: grid;
            place-items: center;
            z-index: 2;
        }

        .modal-gallery {
            background: #150308;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-gallery img {
            width: 100%;
            height: 100%;
            max-height: 440px;
            object-fit: cover;
        }

        .modal-details {
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        /* ===== TOAST MESSAGE ===== */
        .toast {
            position: fixed;
            bottom: 28px;
            right: 28px;
            background: var(--surface-elevated);
            border: 1px solid var(--secondary);
            color: #fff;
            padding: 14px 22px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.7);
            transform: translateY(120px);
            opacity: 0;
            transition: var(--transition);
            z-index: 200;
        }

        .toast.show { transform: translateY(0); opacity: 1; }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .hero-title { font-size: 42px; }
        }

        @media (max-width: 860px) {
            .hero-banner { grid-template-columns: 1fr; padding: 40px 24px; text-align: center; }
            .hero-desc { margin: 0 auto 28px; }
            .hero-img-box { display: none; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .modal-card { grid-template-columns: 1fr; max-height: 90vh; overflow-y: auto; }
            .modal-gallery { max-height: 280px; }
            .search-container { display: none; }
        }

        @media (max-width: 540px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero-title { font-size: 32px; }
            .container { padding: 0 16px; }
        }
    </style>
</head>
<body>

    <!-- Notification Bar -->
    <div class="announcement-bar">
        <span>⚡ COMPLIMENTARY EXPRESS GLOBAL SHIPPING ON ORDERS OVER $200</span>
    </div>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-logo"><i class="fas fa-cube" style="color:#fff;font-size:16px;"></i></div>
                <span>NEXUS</span>
            </a>

            <div class="search-container">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search products, models, categories..." />
                </div>
            </div>

            <div class="header-actions">
                <button class="action-btn" id="wishlistTrigger" aria-label="Open Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge-counter" id="wishlistCount">0</span>
                </button>

                <button class="action-btn" id="cartTrigger" aria-label="Open Cart">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="badge-counter" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main class="container">
        <!-- Hero -->
        <section class="hero">
            <div class="hero-banner">
                <div class="hero-text">
                    <div class="hero-badge"><i class="fas fa-sparkles"></i> 2026 Studio Flagships</div>
                    <h1 class="hero-title">Precision Hardware for <span>Creative Minds</span>.</h1>
                    <p class="hero-desc">Engineered for seamless productivity and uncompromised industrial aesthetics. Elevate your everyday workspace.</p>
                    <div style="display:flex;gap:14px;flex-wrap:wrap;">
                        <a href="#catalog" class="btn btn-primary"><i class="fas fa-arrow-down"></i> Explore Catalog</a>
                        <button class="btn btn-secondary" onclick="quickView(2)"><i class="fas fa-play"></i> Watch Feature</button>
                    </div>
                </div>
                <div class="hero-img-box">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Hardware Display">
                </div>
            </div>
        </section>

        <!-- Product Catalog -->
        <section id="catalog" style="padding-bottom:80px;">
            <div class="catalog-controls">
                <div class="filter-tabs" id="categoryTabs">
                    <button class="tab-btn active" data-cat="All">All Items</button>
                    <button class="tab-btn" data-cat="Smartphones">Smartphones</button>
                    <button class="tab-btn" data-cat="Laptops">Laptops</button>
                    <button class="tab-btn" data-cat="Gadgets">Gadgets</button>
                    <button class="tab-btn" data-cat="Accessories">Accessories</button>
                    <button class="tab-btn" data-cat="Footwear">Footwear</button>
                </div>

                <select class="sort-select" id="sortSelect">
                    <option value="featured">Sort: Featured</option>
                    <option value="price-asc">Price: Low to High</option>
                    <option value="price-desc">Price: High to Low</option>
                    <option value="rating">Highest Rated</option>
                </select>
            </div>

            <div class="products-grid" id="productsGrid">
                <!-- Dynamically rendered -->
            </div>
        </section>
    </main>

    <!-- Cart Drawer -->
    <div class="drawer-overlay" id="drawerOverlay"></div>
    
    <div class="slide-drawer" id="cartDrawer">
        <div class="drawer-head">
            <h3>Your Shopping Cart (<span id="cartTotalItems">0</span>)</h3>
            <button class="action-btn" id="closeCartBtn" aria-label="Close Cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="shipping-meter">
            <div id="shippingNotice">Spend $200 more for Free Express Shipping</div>
            <div class="meter-bar"><div class="meter-fill" id="shippingMeterFill"></div></div>
        </div>
        <div class="drawer-content" id="cartDrawerList">
            <!-- Items -->
        </div>
        <div class="drawer-foot">
            <div class="subtotal-row">
                <span>Subtotal</span>
                <span id="cartSubtotalVal">$0.00</span>
            </div>
            <button class="btn btn-primary" style="width:100%;" onclick="triggerCheckout()">Proceed to Secure Checkout</button>
        </div>
    </div>

    <!-- Wishlist Drawer -->
    <div class="slide-drawer" id="wishlistDrawer">
        <div class="drawer-head">
            <h3>Saved Items (<span id="wishlistTotalItems">0</span>)</h3>
            <button class="action-btn" id="closeWishlistBtn" aria-label="Close Wishlist"><i class="fas fa-times"></i></button>
        </div>
        <div class="drawer-content" id="wishlistDrawerList">
            <!-- Wishlist Items -->
        </div>
    </div>

    <!-- Quick View Modal -->
    <div class="modal-overlay" id="quickModal">
        <div class="modal-card">
            <button class="modal-close" onclick="closeModal()" aria-label="Close Modal"><i class="fas fa-times"></i></button>
            <div class="modal-gallery">
                <img id="modalImg" src="" alt="">
            </div>
            <div class="modal-details">
                <span id="modalCat" style="color:var(--accent-light);font-size:12px;font-weight:700;text-transform:uppercase;"></span>
                <h2 id="modalTitle" style="font-family:'Space Grotesk',sans-serif;font-size:28px;margin:8px 0;"></h2>
                <div style="display:flex;align-items:center;gap:6px;color:var(--warning);font-size:13px;margin-bottom:16px;">
                    <i class="fas fa-star"></i> <strong id="modalRating"></strong> <span>(Verified Buyers)</span>
                </div>
                <p id="modalDesc" style="color:var(--muted);font-size:14px;line-height:1.6;margin-bottom:24px;"></p>
                <div style="font-size:26px;font-weight:700;margin-bottom:24px;" id="modalPrice"></div>
                <button class="btn btn-primary" id="modalAddBtn"><i class="fas fa-bag-shopping"></i> Add to Bag</button>
            </div>
        </div>
    </div>

    <!-- Toast Notification -->
    <div class="toast" id="appToast">
        <i class="fas fa-circle-check" style="color:var(--success);"></i>
        <span id="toastText">Action completed successfully</span>
    </div>

    <script>
        // Database
        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro Max', category: 'Smartphones', price: 1199, oldPrice: 1299, rating: 4.9, reviews: 340, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', desc: 'Titanium chassis equipped with the A17 Pro chip and configurable Action Button.' },
            { id: 2, title: 'MacBook Air M3', category: 'Laptops', price: 1099, oldPrice: null, rating: 4.8, reviews: 180, badge: '', img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', desc: 'Strikingly thin unibody build with all-day battery endurance and fluid dual-display support.' },
            { id: 3, title: 'Apple Watch Ultra 2', category: 'Accessories', price: 799, oldPrice: 849, rating: 5.0, reviews: 92, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', desc: 'Engineered for extreme environments with rugged titanium casing and dual-frequency GPS.' },
            { id: 4, title: 'Air Max Pulse', category: 'Footwear', price: 160, oldPrice: null, rating: 4.6, reviews: 75, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', desc: 'Textile-wrapped midsole with tuned point-loaded Air cushioning for high-rebound energy.' },
            { id: 5, title: 'Sony Alpha 7R V', category: 'Gadgets', price: 3899, oldPrice: null, rating: 4.9, reviews: 48, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', desc: '61.0 MP full-frame sensor coupled with deep-learning AI auto-focus subject recognition.' },
            { id: 6, title: 'Mechanical Field Watch', category: 'Accessories', price: 320, oldPrice: null, rating: 4.7, reviews: 112, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', desc: 'Sapphire crystal dial housing a 24-jewel Japanese mechanical self-winding movement.' },
            { id: 7, title: 'Modular Commuter Pack', category: 'Accessories', price: 145, oldPrice: 180, rating: 4.5, reviews: 88, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', desc: 'Waterproof Cordura construct with dedicated padded slots for dual 16-inch laptops.' },
            { id: 8, title: 'Sony WH-1000XM5', category: 'Gadgets', price: 399, oldPrice: 429, rating: 4.9, reviews: 410, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', desc: 'Industry-leading noise cancellation driven by two processors and eight calibrated microphones.' }
        ];

        // State Store
        let state = {
            cart: [],
            wishlist: new Set(),
            category: 'All',
            search: '',
            sort: 'featured'
        };

        // DOM Elements
        const productsGrid = document.getElementById('productsGrid');
        const cartDrawer = document.getElementById('cartDrawer');
        const wishlistDrawer = document.getElementById('wishlistDrawer');
        const drawerOverlay = document.getElementById('drawerOverlay');
        const quickModal = document.getElementById('quickModal');
        const appToast = document.getElementById('appToast');

        // Toast Trigger
        function notify(msg) {
            document.getElementById('toastText').textContent = msg;
            appToast.classList.add('show');
            setTimeout(() => appToast.classList.remove('show'), 2800);
        }

        // Render Catalog Grid
        function renderCatalog() {
            let items = PRODUCTS.filter(p => {
                const matchesCat = state.category === 'All' || p.category.toLowerCase() === state.category.toLowerCase();
                const matchesQuery = p.title.toLowerCase().includes(state.search.toLowerCase()) || 
                                     p.category.toLowerCase().includes(state.search.toLowerCase());
                return matchesCat && matchesQuery;
            });

            // Sorting
            if (state.sort === 'price-asc') items.sort((a, b) => a.price - b.price);
            else if (state.sort === 'price-desc') items.sort((a, b) => b.price - a.price);
            else if (state.sort === 'rating') items.sort((a, b) => b.rating - a.rating);

            if (items.length === 0) {
                productsGrid.innerHTML = `
                    <div style="grid-column:1/-1;text-align:center;padding:80px 20px;">
                        <i class="fas fa-magnifying-glass" style="font-size:36px;color:var(--muted);margin-bottom:12px;"></i>
                        <h3 style="font-size:18px;">No matching hardware found</h3>
                        <p style="color:var(--muted);font-size:14px;margin-top:4px;">Try searching for another category or product title.</p>
                    </div>`;
                return;
            }

            productsGrid.innerHTML = items.map(p => {
                const isSaved = state.wishlist.has(p.id);
                return `
                <div class="product-card">
                    <div class="product-thumb">
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        ${p.badge ? `<span class="badge-tag ${p.badge === 'Sale' ? 'badge-sale' : 'badge-new'}">${p.badge}</span>` : ''}
                        <div class="card-actions">
                            <button class="circle-action ${isSaved ? 'active-wish' : ''}" onclick="toggleWish(${p.id})" aria-label="Toggle Wishlist">
                                <i class="${isSaved ? 'fas fa-heart' : 'far fa-heart'}"></i>
                            </button>
                            <button class="circle-action" onclick="quickView(${p.id})" aria-label="Quick View">
                                <i class="far fa-eye"></i>
                            </button>
                        </div>
                    </div>
                    <div class="product-body">
                        <span class="product-cat">${p.category}</span>
                        <h4 class="product-name">${p.title}</h4>
                        <div class="product-meta">
                            <i class="fas fa-star"></i>
                            <strong>${p.rating}</strong>
                            <span>(${p.reviews})</span>
                        </div>
                        <div class="product-foot">
                            <div class="price-container">
                                <span class="price-now">$${p.price.toLocaleString()}</span>
                                ${p.oldPrice ? `<span class="price-was">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            </div>
                            <button class="btn-add-cart" onclick="modifyCart(${p.id}, 1)" aria-label="Add to Bag">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>`;
            }).join('');
        }

        // Cart Actions
        function modifyCart(productId, change) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;

            const existing = state.cart.find(i => i.id === productId);
            if (existing) {
                existing.qty += change;
                if (existing.qty <= 0) {
                    state.cart = state.cart.filter(i => i.id !== productId);
                }
            } else if (change > 0) {
                state.cart.push({ ...product, qty: 1 });
            }

            updateCartUI();
            if (change > 0) notify(`Added ${product.title} to bag`);
        }

        function updateCartUI() {
            const totalQty = state.cart.reduce((sum, item) => sum + item.qty, 0);
            const subtotal = state.cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

            document.getElementById('cartCount').textContent = totalQty;
            document.getElementById('cartTotalItems').textContent = totalQty;
            document.getElementById('cartSubtotalVal').textContent = `$${subtotal.toLocaleString()}`;

            // Shipping Progress Meter
            const threshold = 200;
            const progress = Math.min(100, (subtotal / threshold) * 100);
            document.getElementById('shippingMeterFill').style.width = `${progress}%`;
            
            const shippingNotice = document.getElementById('shippingNotice');
            if (subtotal >= threshold) {
                shippingNotice.innerHTML = `🎉 You qualify for <strong>Free Express Shipping</strong>`;
            } else {
                shippingNotice.textContent = `Spend $${(threshold - subtotal).toLocaleString()} more for Free Shipping`;
            }

            // Render List
            const listEl = document.getElementById('cartDrawerList');
            if (state.cart.length === 0) {
                listEl.innerHTML = `<div style="text-align:center;color:var(--muted);padding:80px 0;"><i class="fas fa-bag-shopping" style="font-size:32px;margin-bottom:12px;opacity:0.3;"></i><p>Your shopping bag is empty.</p></div>`;
                return;
            }

            listEl.innerHTML = state.cart.map(item => `
                <div class="drawer-item">
                    <img src="${item.img}" alt="${item.title}">
                    <div class="item-info">
                        <div class="item-name">${item.title}</div>
                        <div class="item-price">$${item.price.toLocaleString()}</div>
                        <div class="stepper">
                            <button class="stepper-btn" onclick="modifyCart(${item.id}, -1)">-</button>
                            <span style="font-size:13px;font-weight:600;min-width:16px;text-align:center;">${item.qty}</span>
                            <button class="stepper-btn" onclick="modifyCart(${item.id}, 1)">+</button>
                        </div>
                    </div>
                    <button onclick="modifyCart(${item.id}, -${item.qty})" style="color:var(--muted-dark);font-size:13px;" aria-label="Remove item"><i class="fas fa-trash"></i></button>
                </div>
            `).join('');
        }

        // Wishlist Actions
        function toggleWish(productId) {
            if (state.wishlist.has(productId)) {
                state.wishlist.delete(productId);
                notify('Item removed from saved list');
            } else {
                state.wishlist.add(productId);
                notify('Item saved to your list');
            }
            document.getElementById('wishlistCount').textContent = state.wishlist.size;
            document.getElementById('wishlistTotalItems').textContent = state.wishlist.size;
            renderWishlistUI();
            renderCatalog();
        }

        function renderWishlistUI() {
            const listEl = document.getElementById('wishlistDrawerList');
            const savedItems = PRODUCTS.filter(p => state.wishlist.has(p.id));

            if (savedItems.length === 0) {
                listEl.innerHTML = `<div style="text-align:center;color:var(--muted);padding:80px 0;"><i class="far fa-heart" style="font-size:32px;margin-bottom:12px;opacity:0.3;"></i><p>No saved items yet.</p></div>`;
                return;
            }

            listEl.innerHTML = savedItems.map(p => `
                <div class="drawer-item">
                    <img src="${p.img}" alt="${p.title}">
                    <div class="item-info">
                        <div class="item-name">${p.title}</div>
                        <div class="item-price">$${p.price.toLocaleString()}</div>
                        <button class="btn btn-primary" style="padding:6px 14px;font-size:11px;margin-top:8px;" onclick="modifyCart(${p.id}, 1)">Move to Bag</button>
                    </div>
                    <button onclick="toggleWish(${p.id})" style="color:var(--secondary);font-size:14px;"><i class="fas fa-heart"></i></button>
                </div>
            `).join('');
        }

        // Quick View Modal
        function quickView(id) {
            const product = PRODUCTS.find(p => p.id === id);
            if (!product) return;

            document.getElementById('modalImg').src = product.img;
            document.getElementById('modalCat').textContent = product.category;
            document.getElementById('modalTitle').textContent = product.title;
            document.getElementById('modalRating').textContent = product.rating;
            document.getElementById('modalDesc').textContent = product.desc;
            document.getElementById('modalPrice').textContent = `$${product.price.toLocaleString()}`;
            
            const addBtn = document.getElementById('modalAddBtn');
            addBtn.onclick = () => {
                modifyCart(product.id, 1);
                closeModal();
            };

            quickModal.classList.add('open');
        }

        function closeModal() {
            quickModal.classList.remove('open');
        }

        function triggerCheckout() {
            if (state.cart.length === 0) {
                notify('Your bag is currently empty.');
                return;
            }
            alert('Redirecting to 256-bit encrypted checkout gateway.');
        }

        // Event Bindings
        document.getElementById('cartTrigger').onclick = () => {
            cartDrawer.classList.add('open');
            drawerOverlay.classList.add('open');
        };

        document.getElementById('wishlistTrigger').onclick = () => {
            wishlistDrawer.classList.add('open');
            drawerOverlay.classList.add('open');
        };

        const closeDrawers = () => {
            cartDrawer.classList.remove('open');
            wishlistDrawer.classList.remove('open');
            drawerOverlay.classList.remove('open');
        };

        document.getElementById('closeCartBtn').onclick = closeDrawers;
        document.getElementById('closeWishlistBtn').onclick = closeDrawers;
        drawerOverlay.onclick = closeDrawers;

        document.getElementById('categoryTabs').addEventListener('click', e => {
            if (e.target.classList.contains('tab-btn')) {
                document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
                e.target.classList.add('active');
                state.category = e.target.dataset.cat;
                renderCatalog();
            }
        });

        document.getElementById('searchInput').addEventListener('input', e => {
            state.search = e.target.value;
            renderCatalog();
        });

        document.getElementById('sortSelect').addEventListener('change', e => {
            state.sort = e.target.value;
            renderCatalog();
        });

        // Initialize
        renderCatalog();
        updateCartUI();
        renderWishlistUI();
    </script>
</body>
</html>
