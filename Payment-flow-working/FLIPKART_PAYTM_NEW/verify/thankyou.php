<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);
include '../config/MANAGE_CONFIG.php';



$conn = new mysqli(db_host, db_user, db_pass, db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$order_number = isset($_GET['orderNumber']) ? $_GET['orderNumber'] : '';

// Query to get payment type
$sql = "SELECT pay_type FROM payments WHERE order_number = '$order_number'";
$result = mysqli_query($conn, $sql);

$row = mysqli_fetch_assoc($result);
$pay_type = $row['pay_type'];
?>

<!DOCTYPE html>
<html lang="en-IN">

<head>
    <!-- Facebook Pixel Purchase Tracking Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  
  fbq('init', '524590987049747');
  fbq('track', 'Purchase'); // सिर्फ Purchase इवेंट ट्रैक करेगा
</script>
<noscript>
  <img height="1" width="1" style="display:none" 
       src="https://www.facebook.com/tr?id=524590987049747&ev=Purchase&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->
    <title>Order Confirmation</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" rel="preload" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.tailwindcss.com" async></script>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            font-size: 15px;

        }

        .thank-you-container {
            max-width: 600px;
            padding: 14px;
            line-height: 24px;
        }

        .confirmation-section {
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
            padding-bottom: 0px;
            margin-bottom: 20px;
        }

        .checkbox-container {
            display: block;
            margin-top: 10px;
            font-size: 14px;
        }

        .checkbox-container input {
            margin-right: 10px;
        }

        .order-details h3 {
            color: #555;
            margin-bottom: 15px;
        }

        .details-section p {
            margin: 5px 0;
        }

        .details-section strong {
            display: block;
            color: #555;
            font-weight: bold;
        }

        .continue-shopping-button {
            display: block;
            width: 100%;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
        }

        .continue-shopping-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="thank-you-container">
        <!--<div class="confirmation-section rounded" style="border: 1px solid #e7e6e6">-->
        <!--    <div class="pt-3 px-3">-->
        <!--        <p style="font-weight:600; font-size:16px;">Your order is confirmed</p>-->
        <!--    </div>-->
        <!--    <div style="background: #e7e6e6" class="px-3 py-1">-->
        <!--        <label class="checkbox-container">-->
        <!--            <input type="checkbox">-->
        <!--            Email me with news and offers-->
        <!--        </label>-->
        <!--    </div>-->
        <!--</div>-->
        <div class="order-details px-5 py-5 rounded" style="border: 1px solid #9b9b9b">
            <div class="py-2">
                <p style='font-size:18px'> <strong> Thank you for your order! Here are the Details: </strong> </p>
                <p style="font-weight:600; font-size:16px; color:green">Your order is confirmed</p>
            </div>
            <div style='display:flex'>
                <p> Dear </p> &nbsp;
                <p id="name"></p>
                <p>,</p>
            </div>
            <div class=mt-2>

                <div class='py-1' style='display:flex '>
                    <p><strong> Name : </strong> </p> &nbsp;
                    <p id="namedd"></p>
                </div>
                <div class='py-1' style='display:flex'>
                    <p><strong> Contact Number: </strong> </p> &nbsp;
                    <p id="number"></p>
                </div>
                <div class='py-1'>
                    <span><strong> Shipping Address: </strong>
                    </span> &nbsp;
                    <span id="flat"></span>
                    <span id="area"></span>
                    <span id="city"></span>
                    <span id="statdde"></span> - <span id='pin'></span>
                </div>
                <div class='py-1' style='display:flex'>
                    <p><strong> Order ID: </strong> </p> &nbsp;
                    <p> <?php echo $order_number ?> </p>
                </div>
                <div class='py-1' style='display:flex'>
                    <p><strong> Payment Method: </strong> </p> &nbsp;
                    <p> <?php echo $pay_type; ?> </p>
                </div>
            </div>
            <div class='py-1'>Your order has been successfully confirmed and will be shipped soon. 🎉</div>
            <div class='py-1'>
                <strong> Note: </strong>
                <p style='color:red'>If your payment is not successful by you, then your order will be cancelled
                    automatically! </p>
                <p style='color:red'> Please make sure not to close any UPI app until payment is done! </p>
                <p> You will receive an order confirmation email with details of your order and a link to track your
                    process. </p>
                Your Order id is
                <strong> <?php echo $order_number ?> </strong>
            </div>
        </div>

        <div style="display: flex; justify-content: center; align-items: center;">
            <a onclick="trackPixelAndRedirectBeforeContinue(event)">
                <a href="00000000000" class="continue-shopping-button m-5"style="background-color: green; color: white; font-weight: bold; padding: 12px 24px; border-radius: 4px; text-decoration: none; display: inline-block;">
  Continue Shopping
</a>
            </a>
        </div>
        <img src="/assets/images/1123.svg" 
         alt="Promotional Image" 
         style="max-width: 100%; height: auto; display: block; margin: 0 auto;">


    </div>




    <script>
        // Custom function to handle Facebook Pixel event tracking and redirection
        function trackPixelAndRedirectBeforeContinue(event) {
            // Prevent the default behavior of the link (so we can track the event first)
            event.preventDefault();

            // Track the 'AddToCart' event with Facebook Pixel
            fbq('track', 'AddToCart', {
                content_ids: ['dummy-product-id'],  // Replace with actual product ID if available
                content_type: 'product',
                value: 0,  // Optional: add dynamic value if needed
                currency: 'INR'
            });

            // Wait for a small delay to ensure the pixel event is tracked before redirecting
            setTimeout(function () {
                const fullUrl = window.location.href;

                // if (paymentIndex !== -1) {

                    const pathParts = window.location.pathname.split('/');
                    const baseUrl = `${window.location.origin}/${pathParts[1]}`;
                    console.log('Base URL:', baseUrl);

                    window.location.href = baseUrl

            }, 1000);
            
        }


        function initFacebookPixel() {
            const storedPixelId = sessionStorage.getItem('facebook_pixel_id');
            console.log('storedPixelId =>', storedPixelId);

            if (storedPixelId) {
                if (typeof fbq !== 'undefined') {
                    fbq('init', storedPixelId);  // Initialize with the stored Pixel ID  
                    fbq('track', 'PageView');  // Track a page view
                } else {
                    console.error('Facebook Pixel is not loaded properly.');
                }
            } else {
                console.error('Pixel ID is not stored in session storage.');
            }
        }


        // Load Facebook Pixel script asynchronously  
        (function (f, b, e, v, n, t, s) {
            if (f.fbq) return; // Prevents installing multiple pixels  
            n = f.fbq = function () {
                n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments);
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];

            t = b.createElement(e); // Create a new script element  
            t.async = !0; // Load asynchronously  
            t.src = v; // Set the source to the Facebook Pixel script  
            s = b.getElementsByTagName(e)[0]; // Get the first script element  
            s.parentNode.insertBefore(t, s); // Insert the new script element  

            // Execute initFacebookPixel only after the script is fully loaded  
            t.onload = function () {
                initFacebookPixel();
            };
        })(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');

    </script>


    <script>
        // Get the value of the address from localStorage
        const address = JSON.parse(localStorage.getItem('address'));
        // Check if the address exists
        if (address) {
            // Display the values in the corresponding elements
            document.getElementById('name').innerText = address.name;
            document.getElementById('namedd').innerText = address.name;
            document.getElementById('number').innerText = address.number;
            document.getElementById('pin').innerText = address.pin;
            document.getElementById('flat').innerText = address.flat;
            document.getElementById('area').innerText = address.area;
            document.getElementById('city').innerText = address.city;
            document.getElementById('statdde').innerText = address.state;
        } else {
            console.log('No address found in localStorage.');
        }
    </script>


    <footer class="seofooter" id="seofooter"></footer>
</body>

</html>

<?php
// Close the database connection
$conn->close();
?>