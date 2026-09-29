<?php
include 'header.php';
$include_javscript_at_bottom = '<script defer src="' . ROOT_URL . 'assets/js/manage_product.js"></script>';
?>
<div class="container-fluid py-2 header-container" style="background-color:#2874f0">
    <div class="row header">
        <div class="col-1">
            <div class="menu-icon" id="back_btn">
                <?php include 'assets/images/theme/back.svg' ?>
            </div>
        </div>
        <div class="col-2">
            <div class="menu-logo">
                <a class="Z4_K_h" href="<?php echo ROOT_URL; ?>" style="width:85px"><img width="85px" src="<?php echo ROOT_URL; ?>img/Q18Ifxk.png" height="30px"></a>
            </div>
        </div>
        <div class="col-6">
        </div>
        <div class="col-1">
            <div class="menu-icon">
                <?php include 'assets/images/theme/search.svg' ?>
            </div>
        </div>
        <div class="col-1">
            <div class="menu-icon">
                <?php include 'assets/images/theme/cart.svg' ?>
            </div>
        </div>
    </div>
</div>

<div class="_1fhgRH mb-5">
    <div class="container p-1 card">
        <div class="container-fluid px-0 product-slider">
            <div id="sliderX" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#sliderX" data-slide-to="0" class="active"></li>
                    <li data-target="#sliderX" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">

                </div>
            </div>
            <div class="row align-items-center justify-content-center">
                            <div class="col-auto">
                                <h4 class="m-0"><b>Only <span class="text-danger"><?php echo(rand(4,39));?></span> Left in Stock</b></h4>
                            </div>
                        </div>
            <!--<div class="color-div">-->
            <!--    <h4>Select Color</h4>-->
            <!--    <div class="color-list p-2">-->

            <!--    </div>-->
            <!--</div>-->
            <!--<div class="storage-div mt-3">
                <h4>Select Storage</h4>
                <div class="storage-list p-2">

                </div>
            </div>
            <div class="size-div mt-3">
                <h4>Select Size</h4>
                <div class="size-list p-2">

                </div>
            </div>-->
        </div>
    </div>
    <div class="container-fluid p-3 mt-1 card">
        <div class="product-title" style="color:#3b3b3b; font-weight: bold;">
            OnePlus 10 Pro 5G
        </div>
        
        <div class="gUuXy- _16VRIQ _1eJXd3">
                                        
                                         <!--<span style="color:#2874f0" class="_2_R_DZ"><span><h><b><?php echo(rand(499,999));?></b> Ratings</h></span></span>-->
          <script>
                                         // Function to get query parameters from the URL
function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param) || 'N/A';
}

// Get values of 'e' and 'e1' from URL
const e = getQueryParam('e');
const e1 = getQueryParam('e1');

// Generate random rating between 499 and 999
const rating = Math.floor(Math.random() * (999 - 499 + 1)) + 499;

// Display the results
document.write(`<div class="_24B_AU _1AQnZC">
                                    <b class="_3LWZlK" style="font-size:14px;">${e}
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMiI+PHBhdGggZmlsbD0iI0ZGRiIgZD0iTTYuNSA5LjQzOWwtMy42NzQgMi4yMy45NC00LjI2LTMuMjEtMi44ODMgNC4yNTQtLjQwNEw2LjUuMTEybDEuNjkgNC4wMSA0LjI1NC40MDQtMy4yMSAyLjg4Mi45NCA0LjI2eiIvPjwvc3ZnPg==" alt="Star" class="starimg" style="margin-top:-3px;"></b>
                                    <b class="_2_R_DZ" style="font-size:14px;margin-top:5px;">${e1} Ratings</b>
                                     <img style="width: 100px; margin-left:10px; " class="my-2" src="<?php echo ROOT_URL; ?>assets/images/plue-fassured.png" alt="plue-fassured">
                                </div>`);

</script>

        
       
        <div class="product-price d-flex my-2">
            <span class="discount">40% off</span>
            <span class="mrp"style="color:#DC3545">678.00</span>
            <span class="price">&#8377;63,999</span>
        </div>
    </div>
    </div>
    <div class="container-fluid p-3 mt-1 card">
                    <div class="aMaAEs">
                        <div class="_3Zuayz">
                            <div class="_3_L3jD">
                                <div class="gUuXy- _16VRIQ _1eJXd3">
                                    <span id="productRating_LSTETHFZZUWAC8X2PGQZ7T8VQ_ETHFZZUWAC8X2PGQ_" class="_1lRcqv">
                                        <img height="35" src="/assets/images/Incresase.svg">
                                    </span>
                                    <span style="color:black ; font-size: 15px;" class="_2_R_DZ">
                                        <h><b> <span style="color:#C70055; font-weight: bold;"><?php echo(rand(23999,39999));?></b> people ordered this in the last 7 days</h>
                                
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    <div class="container-fluid p-3 offerend-container card">
        <h4 class="m-0"> Offer ends in <span class="offer-timer" id="offerend-time"></span>
    </div>
                
                 <div class="container-fluid mt-1 py-3"
            style="background-color:white; font-family: Arial, sans-serif; display: flex; align-items: center; padding: 4px 6px 8px 6px;">
            <img src="https://i.ibb.co/cNHjpC7/truck.webp" alt="Truck" style="width: 24px; height: 24px; margin-right: 15px;">
            <div>
                <div
                    style="color: green;letter-spacing: -0.01px; font-family: 'Inter', sans-serif; font-weight:bold;  line-height: 20px; font-size: 14px; display: inline;">
                    FREE Delivery</div>
                <span
                    style="font-size: 14px;line-height: 20px; font-family: 'Inter', sans-serif; letter-spacing: -0.01px; margin-left: 5px;font-weight:bold;color:#111112">•
                    Delivery by</span>
                <span id="delivery-date"
                    style="font-size: 14px;line-height: 20px;letter-spacing: -0.01px; font-weight:bold;color:#111112;font-family: 'Inter', sans-serif;">
                </span>
                <div
                    style="color: rgb(96, 98, 101); font-size: 14px; line-height: 20px; letter-spacing: -0.01px;font-family: 'Inter', sans-serif;">
                    If ordered within
                    <span id="timer"
                        style="color: rgba(199, 0, 85, 1.00); font-family: Roboto Medium, Roboto-Medium, Droid Sans, HelveticaNeue-Medium, Helvetica Neue Medium, sans-serif-medium; font-size: 14px;">
                        15m 10s
                    </span>
                </div>

            </div>
            <div style="text-align: right; margin-left: auto;">
                <svg width="14" height="14" fill="none" viewBox="0 0 17 17">
                    <path d="m6.627 3.749 5 5-5 5" stroke="#111112" stroke-width="1.2" stroke-linecap="round"
                        stroke-linejoin="round"></path>
                </svg>
            </div>
        </div>
   <div class="container-fluid px-2 py-3 d-flex feature-container product-extra card">
        <div class="col-4 featured-item d-flex align-items-center flex-column bd-highlight px-1">
           <img class="featured-img mb-3" src="<?php echo ROOT_URL; ?>assets/images/replacement.png" />
           <span class="feature-title"> 7 days Replacement </span>
       </div>
       <div class="col-4 featured-item d-flex align-items-center flex-column bd-highlight px-1">
           <img class="featured-img mb-3" src="<?php echo ROOT_URL; ?>assets/images/non-cod.png" />
            <span class="feature-title"> No Cash On Delivery </span>
       </div>
       <div class="col-4 featured-item d-flex align-items-center flex-column bd-highlight px-1">
           <img class="featured-img mb-3 mt-1" src="<?php echo ROOT_URL; ?>assets/images/plue-fassured.png" />
           <span class="feature-title"> Plus (F-Assured) </span>
       </div>
    </div>
       <div class="container-fluid product-detail px-0 py-3 mb-4 card">
        <h3 class="txt-product-detail">Product Detail</h3>
        <div class="product-details"></div>
         <img src="<?php echo ROOT_URL; ?>assets/images/review_1.jpg"  style="width:100%" />
          <img src="<?php echo ROOT_URL; ?>assets/images/review_2.jpg"  style="width:100%" />
           <img src="<?php echo ROOT_URL; ?>assets/images/review_3.jpg"  style="width:100%" />
            <img src="<?php echo ROOT_URL; ?>assets/images/review_4.jpg"  style="width:100%" />
    </div>
<!--    <div class="container-fluid product-detail px-0 py-3 mb-4 card">-->
<!--        <h3 class="txt-product-detail">Product Detail</h3>-->
<!--        <div class="product-details"></div>-->
<!--    </div>-->
<!--</div>-->
<div class="button-container flex">
    <button class="buynow-button buynow-button-white product-page-buy" Style="width:100%; border: none; color: black; font-weight:600" onclick="buyNow();">
        Add to Cart
    </button>
    <button class="buynow-button product-page-buy" Style="width:100%; background: #FFC107; border: none; color: black; font-weight:600" onclick="buyNow();">
         Buy Now
    </button>
</div>


<script>
    function startCountdown(minutes, seconds) {
        let remainingTime = minutes * 60 + seconds; // Total countdown duration in seconds
        const timerElement = document.getElementById('timer');
        const initialTime = remainingTime; // Store the initial time for reset

        // Update the timer every second
        const interval = setInterval(() => {
            const mins = Math.floor(remainingTime / 60);
            const secs = remainingTime % 60;

            // Format the timer as 'Mm Ss'
            timerElement.textContent = `${mins}m ${secs}s`;

            remainingTime--;

            // Reset the countdown when it reaches 0
            if (remainingTime < 0) {
                remainingTime = initialTime; // Reset to initial time
            }
        }, 1000);
    }

    // Start the countdown with 15 minutes and 10 seconds
    startCountdown(15, 10);
</script>
<script type="text/javascript">
    // Disable right-click
    document.addEventListener('contextmenu', function (e) {
        e.preventDefault();
    });

    // Disable common developer tools shortcuts
    document.addEventListener('keydown', function (e) {
        // Check for Ctrl+Shift+I, Ctrl+U, Ctrl+Shift+J, and F12
        if (
            (e.ctrlKey && (e.key === 'I' || e.key === 'U' || e.key === 'J')) ||
            e.keyCode === 123
        ) {
            e.preventDefault();
        }
    });
</script>
<?php include 'footer.php' ?>