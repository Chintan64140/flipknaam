let offset = 0;
let loading = false;
const LIMIT = 10;

async function loadProducts() {
    if (loading) return;
    loading = true;
    document.getElementById('product-loader').style.display = 'block';

    try {
        const res = await fetch(`/api/fk-products.php?offset=${offset}`);
        const data = await res.json();

        // No more products -> stop
        if (!Array.isArray(data) || data.length === 0) {
            console.log('All products loaded.');
            window.removeEventListener('scroll', handleScroll);
            document.getElementById('product-loader').style.display = 'none';
            return;
        }

        const container = document.getElementById('products-grid');

        data.forEach(p => {
            const div = document.createElement('div');
            div.className = 'product-card rounded-lg overflow-hidden border border-gray-100';
            div.style.background = 'white';
            div.onclick = () => {
                window.location.href = `/product.php?id=${p.id}`;
            };
            div.innerHTML = `
            <div class='relative' style='background: white !important'>
                <img src='${p.img1 || '/assets/images/no-img.png'}'
                    alt='${p.name}'
                    class='w-full h-48 object-contain bg-white' />
            </div>

            <div style="padding-top:10px">
                <!-- Product title -->
                <div class='text-xs text-gray-700 mb-2 leading-tight line-clamp-2 font-medium product-name'>${p.name}</div>


                            <div class="flex items-center gap-2 mb-1">
                                <span class="text-base text-black font-semibold">₹${Math.round(p.selling_price)}</span>
                                <span class="text-base text-gray-400 line-through font-semibold" style="font-size: 12px;">₹${Math.round(p.mrp).toLocaleString("en-US")}</span>
                                <span class="text-green-600 text-base font-semibold" style="font-size: 13px;">${Math.round(((p.mrp - p.selling_price) / p.mrp) * 100)}% off</span>
                            </div>

                            <div class="flex items-center ga-2 mb-2">
                                <img class="h-[16px] w-[38px]"
                                    src="https://rukminim1.flixcart.com/www/76/32/promos/30/08/2023/59dc7885-72bf-4135-9099-025f074b0eb1.png?q=90"
                                    loading="lazy">
                                    <span class="wow-price">₹${Math.round((p.selling_price) - p.selling_price * 0.05)}</span>
                                    <span class="offer-text" style="margin-left: 6px;">with 2 offers</span>
                            </div>

                            <div class="rating-line">
                                <div class="rating-stars">
                                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star-half"></i>
                                </div>
                                <img class="fassured-logo-small" src="/assets/images/fa.png" alt="F-Assured">
                            </div>
            </div>
            `;
            container.appendChild(div);
        });

        // Move offset ahead by however many items we got
        offset += data.length;
    } catch (err) {
        console.error('Error loading products:', err);
    }

    document.getElementById('product-loader').style.display = 'none';
    loading = false;
}

function isScrollAtBottom() {
    return window.innerHeight + window.scrollY >= document.body.offsetHeight - 200;
}

function handleScroll() {
    if (!loading && isScrollAtBottom()) {
        loadProducts();
    }
}

// Auto-load on start
window.addEventListener('DOMContentLoaded', loadProducts);
window.addEventListener('scroll', handleScroll);
