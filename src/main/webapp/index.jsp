<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Midnight Luxe | Curated Elegance</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #0B0C10;
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: #E5E9F0;
            scroll-behavior: smooth;
        }

        /* modern glass morphism & dark theme */
        :root {
            --bg-deep: #0A0B0F;
            --surface: #11131A;
            --surface-elevated: #1A1E2A;
            --primary: #FFD966;
            --primary-glow: rgba(255, 217, 102, 0.2);
            --accent-cyan: #5EEAD4;
            --accent-purple: #C084FC;
            --border-dim: rgba(255, 255, 255, 0.05);
            --text-muted: #8B93A7;
            --card-radius: 28px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* glass header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(18px);
            background: rgba(11, 12, 16, 0.82);
            border-bottom: 1px solid var(--border-dim);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-weight: 800;
            font-size: 26px;
            letter-spacing: -0.3px;
            background: linear-gradient(135deg, #FFE6B0, #FFD966);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand span {
            background: none;
            -webkit-background-clip: unset;
            color: #E5E9F0;
            font-weight: 700;
        }

        .main-nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .main-nav a {
            text-decoration: none;
            color: #D1D5DB;
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .main-nav a:hover, .main-nav a:focus {
            color: var(--primary);
        }

        .search-bar {
            background: var(--surface);
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-dim);
            transition: var(--transition);
        }

        .search-bar input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 210px;
            font-size: 0.85rem;
        }

        .search-bar input::placeholder {
            color: #5F6A7A;
        }

        .header-actions {
            display: flex;
            gap: 18px;
            align-items: center;
        }

        .icon-circle {
            background: var(--surface);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: var(--transition);
            color: #E5E9F0;
            font-size: 1.2rem;
            border: 1px solid var(--border-dim);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--primary);
            color: #0B0C10;
            font-weight: 800;
            font-size: 11px;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            color: white;
        }

        /* HERO modern */
        .hero-modern {
            background: radial-gradient(ellipse at 70% 30%, #191E2C, #07090E);
            border-radius: 0 0 48px 48px;
            margin-bottom: 24px;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }

        .hero-modern::before {
            content: "✨";
            font-size: 240px;
            position: absolute;
            bottom: -50px;
            right: -30px;
            opacity: 0.08;
            pointer-events: none;
        }

        .hero-content h1 {
            font-size: 3.8rem;
            font-weight: 800;
            line-height: 1.2;
            background: linear-gradient(135deg, #FFFFFF, #FFD966);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .btn-glow {
            background: linear-gradient(105deg, #FFD966 0%, #FFC857 100%);
            border: none;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            color: #0B0C10;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.2s ease;
            box-shadow: 0 8px 18px rgba(255, 217, 102, 0.2);
        }

        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255, 217, 102, 0.5);
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            color: #FFD966;
            backdrop-filter: blur(4px);
        }

        /* section titles */
        .section-head {
            margin: 48px 0 28px 0;
        }
        .section-head h2 {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
        }
        .section-head p {
            color: var(--text-muted);
        }

        /* category cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 20px;
        }

        .cat-card-modern {
            background: var(--surface);
            backdrop-filter: blur(4px);
            border: 1px solid var(--border-dim);
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-card-modern:hover {
            transform: translateY(-6px);
            background: var(--surface-elevated);
            border-color: var(--primary);
            box-shadow: 0 18px 28px -12px rgba(0,0,0,0.5);
        }

        .cat-icon {
            font-size: 2.4rem;
            color: var(--primary);
            margin-bottom: 12px;
        }

        /* products grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: var(--surface);
            border-radius: 32px;
            border: 1px solid var(--border-dim);
            overflow: hidden;
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--primary-glow);
            box-shadow: 0 25px 35px -12px black;
        }

        .product-img {
            height: 240px;
            width: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-body {
            padding: 20px 18px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin: 12px 0;
        }

        .current-price {
            font-size: 1.6rem;
            font-weight: 800;
            color: var(--primary);
        }

        .old-price {
            color: var(--text-muted);
            text-decoration: line-through;
            font-size: 0.85rem;
        }

        .rating {
            color: #FFB347;
            font-size: 0.85rem;
        }

        .btn-add {
            width: 100%;
            background: rgba(255, 217, 102, 0.1);
            border: 1px solid rgba(255, 217, 102, 0.3);
            border-radius: 40px;
            padding: 12px;
            font-weight: 700;
            color: #FFD966;
            transition: 0.2s;
            cursor: pointer;
        }

        .btn-add:hover {
            background: #FFD966;
            color: #0B0C10;
        }

        /* flash sale section */
        .flash-deal {
            background: linear-gradient(125deg, #121624, #0B0E17);
            border-radius: 48px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            overflow: hidden;
            border: 1px solid rgba(94, 234, 212, 0.2);
            margin: 20px 0;
        }

        .deal-image {
            flex: 1.2;
            min-height: 320px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
        }

        .deal-content {
            flex: 1;
            padding: 36px;
        }

        .timer-group {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }

        .time-unit {
            background: #00000040;
            backdrop-filter: blur(8px);
            padding: 12px 20px;
            border-radius: 24px;
            text-align: center;
            min-width: 70px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .time-unit span:first-child {
            font-size: 2rem;
            font-weight: 800;
        }

        /* testimonials */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 12px 4px 24px;
        }

        .testimonial-card {
            background: var(--surface);
            border-radius: 32px;
            min-width: 320px;
            padding: 28px;
            border: 1px solid var(--border-dim);
        }

        /* newsletter */
        .newsletter-modern {
            background: linear-gradient(145deg, #11131F, #0C0E16);
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid rgba(255,217,102,0.2);
        }

        .newsletter-modern input {
            background: #1E2432;
            border: none;
            padding: 14px 24px;
            border-radius: 80px;
            width: 280px;
            color: white;
            outline: none;
        }

        footer {
            margin-top: 60px;
            border-top: 1px solid var(--border-dim);
            padding: 40px 0;
            color: var(--text-muted);
        }

        @media (max-width: 900px) {
            .main-nav {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero-content h1 {
                font-size: 2.4rem;
            }
            .search-bar input {
                width: 140px;
            }
        }
        @media (max-width: 640px) {
            .products-grid {
                grid-template-columns: 1fr;
            }
            .timer-group {
                flex-wrap: wrap;
            }
        }
        button {
            background: none;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 18px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand"><span>MIDNIGHT</span> LUXE</div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#" id="catTriggerBtn"><i class="fas fa-layer-group"></i> Categories</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Elite</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="search-bar">
                <i class="fas fa-search" style="color: #FFD966;"></i>
                <input type="text" id="searchInput" placeholder="Search gold...">
            </div>
            <div class="header-actions">
                <a href="#" class="icon-circle"><i class="far fa-heart"></i></a>
                <div class="cart">
                    <a href="#" class="icon-circle"><i class="fas fa-bag-shopping"></i></a>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; background: #11131A; border-top: 1px solid #2a2e3a; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
            <li><a href="#">Home</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">Wishlist</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero -->
    <section class="hero-modern">
        <div class="container hero-content">
            <h1>Dark opulence.<br>Unrivaled style.</h1>
            <p style="font-size: 1.1rem; max-width: 540px; margin: 20px 0 32px; color: #B9C1D4;">Discover curated luxury — from cutting-edge tech to timeless fashion. Limited drops, infinite allure.</p>
            <div style="display: flex; gap: 18px; flex-wrap: wrap;">
                <button class="btn-glow" id="shopNowBtn"><i class="fas fa-gem"></i> Shop Now</button>
                <button class="btn-outline-light" id="exploreDealsBtn">Flash Deals <i class="fas fa-arrow-right"></i></button>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <div class="container section-head">
        <h2>Curated realms</h2>
        <p>Immerse in refined collections</p>
    </div>
    <div class="container categories-grid" id="categoriesGrid"></div>

    <!-- Trending Products -->
    <div class="container section-head" id="productsSection">
        <h2>Iconic picks</h2>
        <p>Most desired this season</p>
    </div>
    <div class="container products-grid" id="productsGrid"></div>

    <!-- Flash Sale Section -->
    <div class="container" id="deals" style="margin-top: 56px;">
        <div class="section-head">
            <h2>⚡ Midnight flash</h2>
            <p>limited quantity, ultimate value</p>
        </div>
        <div class="flash-deal">
            <div class="deal-image"></div>
            <div class="deal-content">
                <h3 style="font-size: 1.8rem;">MacBook Air M2 · Starlight</h3>
                <p style="color: var(--text-muted); margin: 12px 0;">18hr battery · 512GB SSD · Liquid Retina</p>
                <div class="timer-group" id="timerGroup">
                    <div class="time-unit"><span id="dealDays">0</span><br>Days</div>
                    <div class="time-unit"><span id="dealHours">00</span><br>Hrs</div>
                    <div class="time-unit"><span id="dealMinutes">00</span><br>Mins</div>
                    <div class="time-unit"><span id="dealSeconds">00</span><br>Sec</div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 16px; margin: 16px 0;">
                    <span class="current-price" style="font-size: 2rem;">$999</span>
                    <span class="old-price" style="font-size: 1.2rem;">$1,299</span>
                    <span style="background: #FF4757; padding: 4px 12px; border-radius: 30px; font-weight: bold;">-23%</span>
                </div>
                <button id="buyDealBtn" class="btn-glow" style="background: #FFD966; color:#0B0C10;">Add to cart <i class="fas fa-bolt"></i></button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container section-head">
        <h2>Voices of elegance</h2>
        <p>Trusted by collectors & creators</p>
    </div>
    <div class="container testimonial-scroll" id="testimonialsContainer">
        <div class="testimonial-card"><div class="rating">★★★★★</div><p style="margin: 14px 0;">“Exceptional quality & ultra fast delivery. The packaging felt like a gift.”</p><div><strong>— S. Carter</strong></div></div>
        <div class="testimonial-card"><div class="rating">★★★★★</div><p style="margin: 14px 0;">“Dark theme store is gorgeous, found my new favorite headphones here.”</p><div><strong>— Jamie L.</strong></div></div>
        <div class="testimonial-card"><div class="rating">★★★★☆</div><p style="margin: 14px 0;">“Smooth checkout and support answered in minutes. Will buy again.”</p><div><strong>— Alex Rivera</strong></div></div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin: 48px auto;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
            <p style="margin: 10px 0 20px;">Exclusive previews & members-only prices</p>
            <form id="newsletterForm" onsubmit="return false;">
                <input type="email" id="newsEmail" placeholder="your@email.com" required>
                <button type="submit" class="btn-glow" style="margin-left: 12px; padding: 12px 28px;">Subscribe</button>
                <p id="newsMsg" style="margin-top: 12px; font-size: 0.85rem; display: none;"></p>
            </form>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 30px;">
        <div><div style="font-weight: 800; font-size: 20px;">MIDNIGHT LUXE</div><p style="margin-top: 8px;">Elegance redefined for the modern connoisseur.</p></div>
        <div style="display: flex; gap: 40px;"><div><strong>Support</strong><div style="margin-top: 10px;">FAQ<br>Returns<br>Contact</div></div><div><strong>Legal</strong><div style="margin-top: 10px;">Privacy<br>Terms</div></div></div>
    </div>
    <div class="container text-center" style="text-align: center; margin-top: 40px;">© <span id="year"></span> Midnight Luxe — all rights reserved.</div>
</footer>

<script>
    // ------------------- DATA (enriched) --------------------
    const CATEGORIES = [
        { id: 'phones', name: 'Phantom Devices', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: 'Quantum Laptops', icon: 'fa-laptop-code' },
        { id: 'clothing', name: 'Velvet Apparel', icon: 'fa-shirt' },
        { id: 'gadgets', name: 'Cyber Gadgets', icon: 'fa-microchip' },
        { id: 'footwear', name: 'Monarch Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Gilded Accessories', icon: 'fa-crown' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 342, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones', badge: 'NEW' },
        { id: 2, title: 'ZenBook Pro 14', price: 1499, oldPrice: 1699, rating: 5, reviews: 118, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Horizon Watch Ultra', price: 449, oldPrice: 599, rating: 4, reviews: 256, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories', badge: '-25%' },
        { id: 4, title: 'AirMax Shadow', price: 179, rating: 4, reviews: 93, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony Alpha ZV-E10', price: 899, oldPrice: 1099, rating: 5, reviews: 67, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Onyx Parfum', price: 189, rating: 5, reviews: 209, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Noir Backpack', price: 129, oldPrice: 189, rating: 4, reviews: 77, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 431, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
    ];

    let cartItems = 0;
    const cartCountSpan = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInputField = document.getElementById('searchInput');

    function updateCartUI() { cartCountSpan.innerText = cartItems; }
    function addToCartById(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        cartItems++;
        updateCartUI();
        const btn = document.querySelector(`.add-btn[data-id='${id}']`);
        if(btn) {
            const originalHtml = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => { btn.innerHTML = originalHtml; }, 1000);
        } else {
            alert(`✨ ${product.title} added to cart`);
        }
    }

    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div style="font-size:12px; opacity:0.6;">Explore</div>`;
            card.addEventListener('click', () => {
                searchInputField.value = cat.name;
                filterProductsBySearch(cat.name);
                document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
            });
            categoriesGrid.appendChild(card);
        });
    }

    function filterProductsBySearch(query) {
        const term = query.trim().toLowerCase();
        if (!term) { renderProducts(PRODUCTS); return; }
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    function renderProducts(productsArray) {
        productsGrid.innerHTML = '';
        productsArray.forEach(prod => {
            const card = document.createElement('div');
            card.className = 'product-card';
            card.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-body">
                    <h3 style="font-size: 1.2rem;">${escapeHtml(prod.title)}</h3>
                    <div class="price-row">
                        <div><span class="current-price">$${prod.price}</span> ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice}</span>` : ''}</div>
                        <div class="rating">${'★'.repeat(Math.floor(prod.rating))} (${prod.reviews})</div>
                    </div>
                    <button class="btn-add add-btn" data-id="${prod.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                </div>
            `;
            productsGrid.appendChild(card);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function escapeHtml(str) { return str.replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

    // deal countdown: 1 day 14 hours from now
    (function startTimer() {
        const targetTime = new Date().getTime() + (36 * 60 * 60 * 1000) + (15 * 60 * 1000);
        function updateTimer() {
            const now = new Date().getTime();
            const diff = targetTime - now;
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = "0";
                document.getElementById('dealHours').innerText = "00";
                document.getElementById('dealMinutes').innerText = "00";
                document.getElementById('dealSeconds').innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        updateTimer();
        setInterval(updateTimer, 1000);
    })();

    // event handlers
    document.getElementById('shopNowBtn')?.addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsBtn')?.addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDealBtn')?.addEventListener('click', () => {
        cartItems++;
        updateCartUI();
        alert('✨ MacBook Air added to your bag — flash deal applied.');
    });
    document.getElementById('searchBtn')?.addEventListener('click', () => filterProductsBySearch(searchInputField.value));
    if(searchInputField) searchInputField.addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductsBySearch(e.target.value); });

    // mobile toggle
    const mobileToggleBtn = document.getElementById('mobileToggleBtn');
    const mobilePanel = document.getElementById('mobileMenuPanel');
    mobileToggleBtn?.addEventListener('click', () => { mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'block' : 'none'; });

    // newsletter
    document.getElementById('newsletterForm')?.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email || !email.includes('@')) {
            msgDiv.style.display = 'block';
            msgDiv.innerText = 'Enter a valid email address.';
            msgDiv.style.color = '#FFB347';
            return;
        }
        msgDiv.style.display = 'block';
        msgDiv.innerText = '🎉 Welcome to the inner circle!';
        msgDiv.style.color = '#5EEAD4';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => { msgDiv.style.display = 'none'; }, 3000);
    });

    document.getElementById('catTriggerBtn')?.addEventListener('click', (e) => {
        e.preventDefault();
        document.querySelector('.categories-grid')?.scrollIntoView({ behavior: 'smooth' });
    });

    renderCategories();
    renderProducts(PRODUCTS);
    updateCartUI();
    document.getElementById('year').innerText = new Date().getFullYear();
</script>
</body>
</html>
