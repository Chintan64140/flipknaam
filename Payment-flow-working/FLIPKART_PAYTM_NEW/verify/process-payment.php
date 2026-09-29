<?php
include '../config/MANAGE_CONFIG.php';



$conn = new mysqli(db_host, db_user, db_pass, db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get payment details from AJAX request
$orderNumber = $_POST['orderNumber'];
$payType = $_POST['payType'];
$upiAddress = $_POST['upi_address'];
$amount = $_POST['amt'];

// Insert payment details into the database
$sql = "INSERT INTO payments (order_number, pay_type, upi_address, amount, payment_status) 
        VALUES ('$orderNumber', '$payType', '$upiAddress', '$amount', 'pending')";

if ($conn->query($sql) === TRUE) {
    echo "success";
} else {
    echo "error: " . $conn->error;
}

// Close connection
$conn->close();
?>
