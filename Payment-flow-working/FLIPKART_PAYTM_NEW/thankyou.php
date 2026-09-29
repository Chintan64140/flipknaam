<?php
include 'header.php';
$include_javscript_at_bottom = '<script defer src="' . ROOT_URL . 'assets/js/manage_index.js"></script>';
?>



<?php
// Simulate order cancel action (for demo purpose)
$order_cancelled = true; // Isko actual order cancel status se replace karein

// Display appropriate message
if ($order_cancelled) {
    $message = "Your order has been cancelled!";
    $animationClass = "cancel-animation"; // This class will trigger the animation
} else {
    $message = "There was an issue cancelling your order.";
    $animationClass = "";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Cancellation</title>
    <style>
        /* Basic styles */
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 50px;
        }

        .message {
            font-size: 24px;
            padding: 20px;
            border: 2px solid #ccc;
            margin: 20px auto;
            width: 80%;
            background-color: #f8d7da;
            color: #721c24;
            border-radius: 5px;
        }

        /* Animation for order cancel */
        @keyframes cancelAnimation {
            0% {
                transform: scale(1);
                opacity: 1;
            }
            50% {
                transform: scale(1.2);
                opacity: 0.8;
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        /* Add animation class */
        .cancel-animation {
            animation: cancelAnimation 1s ease-in-out;
        }
    </style>
</head>
<body>

    <!-- Display message with animation -->
    <div class="message <?php echo $animationClass; ?>">
        <?php echo $message; ?>
    </div>
<div class="Payment Failed">Your Payment is Not Receive By Any Server issue!!!</div>
<div class="Payment Failed">We Are apologize For This</div>

<div class="Payment Failed">Please Try Again To Pay</div>
    <script>
        // After 3 seconds, redirect to the home page or another page
        setTimeout(function() {
            window.location.href = "./payment.php"; // Replace with your target page
        }, 3000); // Redirects after 3 seconds
    </script>

</body>
</html>



</div>
<footer class="seofooter" id="seofooter">
</footer>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/jquery.min.js"></script>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/bootstrap.min.js"></script>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/relativeTime.js"></script>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/days.min.js"></script>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/custom.js"></script>
<script defer src="<?php echo ROOT_URL; ?>/assets/js/manage_index.js"></script></body>

</html>