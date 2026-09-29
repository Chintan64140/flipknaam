<?php
include 'header.php';
$include_javscript_at_bottom = '<script defer src="' . ROOT_URL . 'assets/js/manage_summary.js"></script>';
?>
<style>
    .form-control {
        margin-bottom: 16px;
    }

    .card {
        --bs-border-color-translucent: rgba(0, 0, 0, 0) !important;
    }

    .card.max-height {
        height: calc(100vh - 42px) !important;
    }

    .card-footer {
        background: none !important;
        border-top: none !important;
        position: absolute;
        bottom: 0;
        width: 90%;
        left: 5%;
    }
    
    
    .header-container {
        position: sticky;
        top: 0;
        z-index: 1000;
        background-color: #fff;
        /* Optional: Add background color to prevent transparency */
    }

    /* If you want it to be fixed and stay at the top even when scrolling */
    .header-container {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
        background-color: #fff;
    }

    .form-control {
        a margin-bottom: 16px;
    }

    .card {
        --bs-border-color-translucent: rgba(0, 0, 0, 0) !important;
    }

    .card.max-height {
        height: calc(100vh - 42px) !important;
    }

    .card-footer {
        background: none !important;
        border-top: none !important;
        position: absolute;
        bottom: 0;
        width: 90%;
        left: 5%;
    }

    .donation-card {
        width: 100%;
        background: #fff;
        /*border-radius: 10px;*/
        /*box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);*/
        /*padding: 10px;*/
        text-align: left;
        box-sizing: border-box;
    }

    .donation-header {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
    }

    .donation-header img {
        width: 100%;
        height: 100%;
    }

    .donation-header h2 {
        font-size: 14px;
        margin: 0;
        color: #333;
        font-weight: 600;
    }

    .donation-header p {
        font-size: 13px;
        color: #666;
        margin: 5px 0 0;
    }

    .donation-buttons {
        display: flex;
        margin: 20px 12px;
        justify-content: space-between;
    }

    .donation-buttons button {
        width: 22%;
        padding: 6px 0;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 20px;
        background-color: #fff;
        color: #333;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .donation-buttons button:hover {
        background-color: #f0f0f0;
        transform: scale(1.05);
    }

    .donation-note {
        font-size: 13px;
        color: #888;

        padding: 10px 12px;
    }

    .two-line-ellipsis {
        display: -webkit-box;
        -webkit-line-clamp: 2;
        /* Limit the text to 2 lines */
        -webkit-box-orient: vertical;
        /* Required for the multi-line truncation */
        overflow: hidden;
        /* Hide the overflowing text */
        text-overflow: ellipsis;
        /* Add ellipsis */
    }

    hr {
        margin-top: -12px;
    }
    
</style>
<div class="container-fluid p-3 header-container">
    <div class="row header">
        <div class="col-1">
            <div class="menu-icon" id="back_btn">
                <?php include 'assets/images/theme/back_dark.svg' ?>
            </div>
        </div>
        <div class="col-8">
            <div class="menu-logo">
                <h4 class="mb-0 mt-1 ms-2">Order Summary</h4>
            </div>
        </div>
    </div>
</div>
<div class="_1fhgRH max-height mb-70" >
    <div class="card pt-1 mb-1">
        <div class="progress-box mb-0" style="margin-top:44px"> 
            <img class="w-100" src="assets/images/theme/progress-indicator-summary.png" />
        </div>
    </div>
    <!--<div class="card px-3 py-4 mb-2">-->
    <!--    <h3>Delivered to:</h3>-->
    <!--    <div class="address-div mt-2">-->
    <!--        <h4 class="customer-name">Parth</h4>-->
    <!--        <div class="mb-2 customer-address">G-12, Sai Home Decor, Sarthana, Surat 395006</div>-->
    <!--        <div class="customer-contact">9537298745</div>-->
    <!--    </div>-->
    <!--</div>-->
     <div class="card px-3 py-4 mb-2" style="">
        <div style=' display: flex; justify-content: space-between; align-items: center;width: 100%;'>
            <h3 style='color: rgb(17, 17, 18);font-weight:600; font-size:16px;'>Deliver to:</h3>
            <p style='color: #2a55e5; font-size: 13px; border: 1px solid #dbdbdb;padding: 5px 10px; font-weight: 600;courser:pointer' class='rounded' onclick="handleChangeAdd()"> Change </p>
        </div>
        <div class="address-div">
          <div class='flex gap-2'>  <h4 class="customer-name" style='font-weight:600'>Parth</h4>
            <span style='padding:2px 7px; color:#717478; background:#f0f2f5; font' class='rounded'>Home</span> 
          </div>
            <div class="mb-2 customer-address" style='font-size:14px'>G-12, Sai Home Decor, Sarthana, Surat 395006</div>
            <div class="customer-contact" style='font-size:14px; margin-top:8px;'>9537298745</div>
        </div>
    </div>
    
    
    
    
    
        <div class="card px-3 py-2 mb-2">
        <div class='flex gap-2'>
            <p style='background:#00a098; width:fit-content;color:white; padding-bottom:0rem;margin-bottom: 1rem;padding: 3px 4px;font-weight:600'> BESTSELLER </p>
           <p style='background-color: #c7ffd3;font-size: 12px; color: rgb(38, 165, 65); font-weight:600;padding:2px 6px;'>
                                    Hot Deal
                                    </p>
        </div>
        <ul class="list-group list-group-flush" id="deals" style='margin-top:-10px'>
            <li class="list-group-item px-0" data-timer="2000">
                <div class="flex recommended-product">
                    <div>
                        <img src="" id="item_image" />
                        <div class="flex recommended-product ">
                            <div class="timer qty " style='border: 1px solid #dbdbdb; padding: 1px 11px; font-size: 14px; font-weight: 600;margin-top:10px'>
                                Qty: 1
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <div class="product-title mb-1" id="product-title"></div>
                        <p style='margin-bottom: 0rem;font-size:14px;color:#878787'>Mutlicolor</p>
                     <div style='flex'>
                        <div style='display: flex; align-items: center;' class='py-2' id="rating-stars">
                            <!-- Stars will be rendered here -->
                        </div>
                    </div>
 
                        <div class="price flex">
                              <svg width="16" height="16" viewBox="0 0 12 12" fill="none" style='margin-top:5px;'>
                                    <path d="M6.73461 1V8.46236L9.5535 5.63352L10.5876 6.65767L5.99384 11.2415L1.41003 6.65767L2.42424 5.63352L5.25307 8.46236V1H6.73461Z" fill="#008C00">
                                    </path></svg> 
                                    
                                <span class="discount"  style='font-weight:600'>12% </span>
                                &nbsp;&nbsp;
                                <span class="strike mrp"style="color:#DC3545" >&#8377;4999</span>
                                &nbsp;&nbsp;
                                <span class="selling_price" >&#8377;99</span>
                        </div>
                        <div class='flex gap-3'>
                        <p style='font-weight:600;color:#008C00;font-size:12px' class='py-2'> 1 coupon applied </p> 
                        <p style='  height: 4px;width: 4px;background-color: #008C00;border-radius: 50%;display: inline-block; margin-top:15px'> </p>
                         <p style='font-weight:600;color:#008C00;font-size:12px' class='py-2'>1 offer available</p> 
                        </div>
                            </div>
                        </div>
                          <div class='flex gap-2' style='font-size:13px;margin-top:0px;'>
            <p>Delivery by </p> 
            <p style='color:#008C00; font-weight:600'> Free </p>
        </div>
        
        
                
            </li>
        </ul>
      
        
    </div>
    
    
        <div class=' px-3   flex gap-3' style='background:#f0f2f5;'>
        <img src='./assets/images/cart.webp' style = " width: 9%; height: 4%;" class="py-2"/>
        <div class="py-2" style="    display: flex
;
    align-items: center;">
            Cancellation is allowed up to 48 hours after placing the order. 
        </div>
    </div>
    
    
    <div class=' px-4 py-3 mb-2 ' style='background:white'>

            <div class="flex gap-3" style="display: flex; align-items: center; justify-content: space-between;">
                <div style="display: flex; align-items: center; gap: 10px;">
                    <img src="./assets/images/invoice.webp" style="width: 20%; height: 4%;" />
                    <div style="font-size: 15px;">
                        Invoice
                    </div>
                </div>
                <div style="color: #2874f0; font-size: 15px;">
                    Add Email
                </div>
            </div>
        </div>
        
         <div>
            <!--<img src='./assets/images/VIP banner.jpg' style='width:100%' onclick="payNow()" />-->
            <!--<img src='./assets/images/vip_card.jpg' style='width:100%' onclick="payNow()" />-->


            <div class='flex p-2 bg-[#f0f2f5] gap-2'>
                <div style='width:22%'>
                    <img src='./assets/images/vip-card.png' style='width:100%; height:auto' />
                </div>
                <div style='width:88%'>
                    <p style='font-weight:600; font-size:15px;color:black' class='pt-2 pb-0 mb-0'> Get Benefit Worth of ₹10000 Per
                        Year </p>
                    <p style='font-size:12px;color:black' class='pt-1 mb-0'> For Exclusive Discount up to 80% on All product
                        up to 12 Months. Limited Time Offer | Become VIP Member </p>
                    <!--<p style='font-size:10px;color:black'  class='pb-1'> Limited Time Offer | Become VIP Member </p>-->

                    <div class='flex gap-3 pt-2'>
                        <p style='font-size:15px; font-weight:600;color:black'>₹199 For 12 Months</p>
                        <button class='bg-[#FABC07] px-2 rounded' style="font-size:13px; height:29px; background:#FBBC05; border:0px" onclick="payNow()">Get VIP Member </button>
                    </div>
                </div>

            </div>

            <div class="donation-card mt-2">
                <div class="donation-header" style='padding-top:9px;width:100%'>
                    <div style='width:74%; padding-left:10px;'>
                        <h2>Direct UPI Payment</h2>
                        <p>Support transformative social work in India</p>
                    </div>
                    <img src="./assets/images/Image (1).png" style='width: 20%; margin-left: 22px;'
                        alt="Girls with books">
                </div>
                <hr />
                <div class="donation-buttons ">
                    <button>₹10</button>
                    <button>₹20</button>
                    <button>₹50</button>
                    <button>₹100</button>
                </div>
                <hr style='margin-top: 0px; margin-bottom: 0px;' />
                <p class="donation-note" style='font-weight:600'>Note: GST and No cost EMI will not be applicable</p>
            </div>



            <div class=' px-3 py-2 flex gap-3' style='background:#e7f8ec; margin-top:-11px'>
                <img src='./assets/images/card.webp' style=" width: 9%; height: 4%;" />
                <div style='font-size:14px;margin-top:5px;'>
                    Continue to the next page for Bank Offers.
                </div>
            </div>
        </div>
        
        
        
    
   
    <div class="card px-3 py-4 mb-2" id="price-detail">
        <h3>Price Details</h3>
        <div class="price-detail-div mt-2">
            <div class="product-price-list my-3">
                <span class="title">Price (1 item)</span>
                <span class="data mrp me-0 td-none">&#8377;4999</span>
            </div>
            <div class="product-price-list my-3">
                <span class="title">Discount</span>
                <span class="data discount-amt text-success">-&#8377;4999</span>
            </div>
            <div class="product-price-list my-3">
                <span class="title">Delivery Charges</span>
                <span class="data text-success">FREE Delivery </span>
            </div>
            <div class="product-price-list my-3 pt-3 total">
                <span class="title">Total Amount </span>
                <span class="data selling_price">&#8377;99</span>
            </div>
            <div class="product-price-list mt-3 pt-3 saved-div">
                <span class="text-success">You will save <span class="discount-amt">₹4,500</span> on this order</span>
            </div>
        </div>
    </div>
    <div class="sefty-banner">
        <img class="sefty-img" src="https://rukminim1.flixcart.com/www/60/70/promos/13/02/2019/9b179a8a-a0e2-497b-bd44-20aa733dc0ec.png?q=90" loading="lazy" alt="">
        <div dir="auto" class="sefty-txt">Safe and secure payments. Easy returns. 100% Authentic products.</div>
    </div>
    <div class="button-container flex p-3 bg-white">
        <div class="col-6 footer-price">
            <span class="strike mrp ms-0 mb-1" id="mrp">&#8377;4999</span>
            <span class="selling_price" id="selling_price">&#8377;99</span>
        </div>
        <button class="buynow-button product-page-buy col-6 btn-continue"Style="width:100%; background: #FFC107; border: none; color: black; font-weight:600" onclick="btnContinue();">
            Continue To Payment
        </button>
    </div>
</div>
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