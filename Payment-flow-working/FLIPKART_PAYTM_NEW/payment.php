<?php

function detectMobileOS(): string {
    if (!isset($_SERVER['HTTP_USER_AGENT'])) {
        return 'unknown';
    }

    $ua = strtolower($_SERVER['HTTP_USER_AGENT']);

    if (preg_match('/iphone|ipad|ipod/', $ua)) {
        return 'ios';
    }

    if (preg_match('/android/', $ua)) {
        return 'android';
    }

    return 'other';
}


$os = detectMobileOS();
?>
<?php
include 'header.php';
$include_javscript_at_bottom = '<script defer src="' . ROOT_URL . 'assets/js/manage_payment.js"></script>';
?>


<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>



<style>
 /* Basic styling for the modal */
    .modal {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 80%;
      max-width: 400px;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      padding: 10px;
      border-radius: 8px;
      z-index: 1000;
      height:auto;
    }

    .modal.show {
      display: block;
    }

    .modal-overlay {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 999;
    }

    .modal-overlay.show {
      display: block;
    }

    .modal-header {
      font-size: 15px;
      font-weight: bold;
      margin-bottom: 10px;
      border-bottom:1px solid white;
    }

  .modal-body {
    display: flex;
    justify-content: center; /* Centers horizontally */
    align-items: center;    /* Centers vertically */
    height: 100%;  
    flex-direction: column;/* Ensures the container has height for vertical centering */
}

.qr-image {
    max-width: 100%;        /* Ensures the image is responsive */
    max-height: 100%;       /* Ensures the image fits within its container */
}

    .close-btn {
      display: block;
      margin: 0px auto 0;
      padding: 8px 16px;
      background-color: #FFC107;
      color: black;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size:15px;
      font-weight:600;
    }
    
    .header-container {
    position: sticky;
    top: 0;
    z-index: 1000;
    background-color: #fff; /* Optional: Add background color to prevent transparency */
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

.section-header {
  display: flex;
  justify-content: space-between;
  cursor: pointer;
  font-weight: bold;
}

.hidden {
  display: none;
}

#upi-options {
  margin-top: 10px;
}

.form-check {
     font-size: 20px; 
     border: 1px solid #fff; 
    margin-bottom: 11px;
     border-radius: 0px;
}
.form-check.active {
    border-color: #fff;
}
   .cashback-container {
            border-radius: 8px;
            padding: 10px;
            max-width: 400px;
            text-align: center;
        }
        .cashback-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .cashback-header img {
            width: 40px;
            margin-right: 10px;
        }
        .cashback-header p {
            font-size: 20px;
            font-weight: bold;
            color: #008C00;
            margin: 0;
        }
        .cashback-body p {
            font-size: 14px;
            
            margin: 10px 0;
        }
        .cashback-highlight {
            font-weight: bold;
            /*color: #008C00;*/
        }
.cashback-footer {
   margin-top: 5px;
    font-size: 15px;
    color: #000;
    border-radius: 5px;
    text-align: center;
    position: relative;
    font-weight:900;
}

.cashback-footer p {
    animation: fadeInOut 3s infinite; /* Apply animation to the text */
}

@keyframes fadeInOut {
    0%, 100% {
        opacity: 1; /* Text fully visible */
    }
    50% {
        opacity: 0; /* Text fully invisible */
    }
}


</style>





              <div class="container-fluid p-3 header-container">
    <div class="row header">
        <div class="col-1">
            <div class="menu-icon" id="back_btn">
                <?php include 'assets/images/theme/back_dark.svg' ?>
            </div>
        </div>
        <div class="col-6">
            <div class="menu-logo">
                <p class='mb-0 ms-2'> Step 3 of 3 </p>
                <h5 class="mb-0 mt-1 ms-2" style='font-weight:600;font-size:16px;'>Payments</h5>
            </div>
        </div>
         <div class="col-5">
            <div class='flex text-center rounded' style='background:#f5f5f5;    justify-content: center;'>
                <img src='./assets/images/lock-icon.svg' />
                <p class="mb-0 mt-1 ms-2" style='font-size:13px;font-weight:600'>100% Secure</p>
            </div>
        </div>
    </div>
</div>
<div style="margin-top:70px;">
    <div class="payment-section" style='background:#F5F5F5; border-radius: 8px;'>
  <div class="">
    <div class=' my-1 py-4 px-4'>
      <div class='flex' style='display: flex; align-items: center; justify-content: space-between;'>
        <div style='display: flex; align-items: center;'>
          <img src='./assets/images/upi.svg' style='width:30px;' />
          <p style='font-size:15px; margin-left: 10px; font-weight:500'>UPI</p>
        </div>
        <img id="arrow" src='./assets/images/up_arw.png' style='width:18px;' />
      </div>
    </div>
  </div>

 <div id="upi-options" style="background:white; padding: 2px; border-radius: 5px; margin: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
  
  
 <div class="form-check available-method phonepe active" pay-type="phonepe" style="padding:12px; display: flex; align-items: center; justify-content: space-between;">
    <label style="display: flex; align-items: center;">
      <input type="radio" name="upi" value="PhonePe" style="margin-right: 10px; width:20px; height:20px;" id="phonepe-radio">
      <div style="margin-left:3px;">
          <div class="flex gap-2" style="font-weight:bold; font-size: 15px;">
              <p id="discount_phonepe" style='display:none'></p> <p style='color:#9A9A9A; display:none'> | </p> 
              <p class="selling_price"></p> <p style='color:#9A9A9A'> | </p> 
              <p> PhonePe </p> 
          </div>
          <p style="font-weight:semibold; font-size: 14px; color:#875BB7">30% Extra Discount By PhonePe </p>
      </div>
    </label>
    <img src="./assets/images/phonepe.svg" style="width:30px;"  />
  </div>
  
     
  <div class="form-check available-method gpay" pay-type="phonepe" style="padding:12px; display: flex; align-items: center; justify-content: space-between;" onclick="selectRadioButton(this, 'gpay')">
    <label style="display: flex; align-items: center;">
      <input type="radio" name="upi" value="gpay" style="margin-right: 10px; width:20px; height:20px;" id="gpay-radio">
      <div style="margin-left:3px;">
          <div class="flex gap-2" style="font-weight:bold; font-size: 15px;">
              <p class='selling_price'></p> <p style='color:#9A9A9A'> | </p> 
              <p>GPay</p> <p style='color:#9A9A9A'> | </p> 
              <p style='color:#ff4700' id="gpay_save"></p>
          </div>
          <p style="font-weight:semibold; font-size: 14px; color:#34A853"> 20% Extra Discount By Gpay </p>
      </div>
    </label>
    <img src="./assets/images/gpay_icon.svg" style="width:30px;" />
  </div>
  
   <div class="form-check available-method paytm" pay-type="phonepe" style="border-top:1px solid #ccc;padding:12px; display: flex; align-items: center; justify-content: space-between;" onclick="selectRadioButton(this, 'paytm')">
    <label style="display: flex; align-items: center;">
      <input type="radio" name="upi" value="paytm" style="margin-right: 10px; width:20px; height:20px;" id="paytm-radio">
      <div style="margin-left:3px;">
          <div class="flex gap-2" style="font-weight:bold; font-size: 15px;">
               <p class='selling_price'></p> <p style='color:#9A9A9A'> | </p> 
              <p> PayTM </p>
          </div>
          <p style="font-weight:semibold; font-size: 14px; color:#02B9EF">10% Extra Discount By PayTM </p>
      </div>
    </label>
    <img src="./assets/images/paytm_icon.svg" style="width:30px;"  />
  </div>
  
  </div>
  <div class="form-check available-method cod" pay-type="cod" style="padding:12px; display: flex; align-items: center; justify-content: space-between; opacity:0.5; pointer-events: none;">
  <label style="display: flex; align-items: center;">
    <input type="radio" name="upi" value="cod" disabled="" style="margin-right: 10px; width:20px; height:20px;" id="cod-radio">
    <div style="margin-left:3px;">
      <div class="flex gap-2" style="font-weight:bold; font-size: 15px;">
        <p class="selling_price">₹289</p> 
        <p style="color:#9A9A9A"> | </p> 
        <p>Cash on Delivery</p>
      </div>
      <p style="font-weight:semibold; font-size: 14px; color:#ff4700">
        Not available on Offer Products
      </p>
    </div>
  </label>
  <img src="./assets/images/cod.png" style="width:30px;">
</div>
 
</div>

    <div style='background:#E7F9ED; border-radius:8px;font-weight:500' class='m-4 '>
       <div class='px-3 py-2'>
           <div class="cashback-container">
                <div class="cashback-header">
                    <!--<img src="./assets/images/2769441.png" alt="Cashback Icon">display:none-->
                 
                    <p > <span id="total_pricess" class="cashback-highlight "></span> Cashback on First Order!</p>
                </div>
                <div class="cashback-body" style='margin-top:-13px;text-align:justify'>
                    <p>Place your order on this Flipkart product and get 
                        <span id="total_pricessss" class="cashback-highlight">₹99</span> cashback!
                         Cashback will be credited to your original UPI payment method (QR/PhonePe/Paytm/Gpay) after your order is delivered to you.
                    </p>
                </div>
      
            </div>
           
       </div>
   </div>

            
            

                     <div class="_1fhgRH max-height mb-70" style='background:#fff'>
    <!--<div class="card pt-1 mb-1">-->
    <!--    <div class="progress-box mb-0">-->
    <!--        <img class="w-100" src="assets/images/theme/progress-indicator-payments_2.png" />-->
    <!--    </div>-->
   <div style='background:#F1F5FF; border-radius:8px;font-weight:500' class='m-4 '>
       <div class='px-3 py-3'>
           <div class='flex py-1'>
                <p style='margin-right:auto; font-size:15px;'> Price (1 item) </p>
                <p style='margin-left:auto; font-size:15px; ' class=' selling_price '> ₹&nbsp;195 </p>
           </div>
            <div class='flex py-1'>
                <p style='margin-right:auto; font-size:15px;'> Delivery Charges </p>
                <p style='margin-left:auto; font-size:15px;color:#008C00'> FREE </p>
           </div>
            <div class='flex py-1'>
                <p style='margin-right:auto; font-size:15px;'> Discount fee </p>
                <p style='margin-left:auto; font-size:15px;' class='mrp '> ₹&nbsp;12999 </p>
           </div>
          
           <div class='pt-3 pb-3' style=' border-top: 1px dashed #c4c4c4;display:flex'>
                    <p style='margin-right:auto; font-size:15px;color:#2855E9 'class='flex'> Total Amount 
                    <img src='./assets/images/uparrow.png' style='width: 10px; height: 10px; margin-left: 11px; margin-top: 5px;'/>
                </p>
                <p style='margin-left:auto; font-size:16px;color:#2855E9; font-weight:600' class=' selling_price'> ₹ 198 </p>
           </div>
       </div>
   </div>
   
       <img src='./assets/images/SecurePay.jpg' style="margin-bottom:50px;" />
                   
                   
                   
    <!--               <div class=' py-1 my-1 py-4 px-4' style='border-top:1px solid #00000020'>-->
    <!--    <div class='flex' style='display: flex; align-items: center; justify-content: space-between;'>-->
    <!--        <div style='display: flex; align-items: center;'>-->
    <!--            <img src='./assets/images/history (1).png' style='width:22px;' />-->
    <!--            <p style='font-size:15px; margin-left: 10px;font-weight:500'>Saved Payment Options</p>-->
    <!--        </div>-->
    <!--        <img src='./assets/images/down_arw.png' style='width:18px;' />-->
    <!--    </div>-->
    <!--</div>-->
    
    
        

 


 <div class="button-container flex p-3 bg-white">
        <div class="col-6 footer-price">
            <span class=' selling_price'>&#8377;99</span>
        </div>
      <button id="action-button" style=" width:100%;text-transform: uppercase; margin-top: 10px; background: #FFC107; border: none; color: black; padding: 10px 20px; font-size: 14px; border-radius: 5px; cursor: pointer; width: 100%; font-weight:600">Proceed To Pay</button>
    </div>

</div>
    
                   
                   
            <footer class="seofooter" id="seofooter"></footer>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/jquery.min.js"></script>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/bootstrap.min.js"></script>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/relativeTime.js"></script>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/days.min.js"></script>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/custom.js"></script>
            <script defer src="<?php echo ROOT_URL; ?>assets/js/manage_payment.js"></script>
    </body>
</html>
<script>

</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
    // Automatically select the GPay option and display its value when the page loads
    const gpayElement = document.querySelector('.form-check.gpay');
    if (gpayElement) {
        selectRadioButton(gpayElement, 'gpay');
    }
});


// Set GPay as the default selected option on page load
window.onload = function() {
    const gpayRadioButton = document.getElementById('phonepe-radio'); // Ensure GPay's radio button is selected
    if (gpayRadioButton) {
        gpayRadioButton.checked = true; // Select the radio button
        const gpayOption = document.querySelector('.phonepe');
        if (gpayOption) {
            gpayOption.classList.add('active'); // Highlight the option
        }
        
        const button = document.getElementById('action-button');
        button.textContent = 'Proceed To Pay'; // Set button text for GPay
        button.onclick = function() {
            payNow();
        };

        
        // Update the selected amount
        const amountDisplayDiv = document.getElementById('selected-amount');
        if (amountDisplayDiv) {
            amountDisplayDiv.textContent = paymentAmount;
        }
    }
};


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
</body></html>
