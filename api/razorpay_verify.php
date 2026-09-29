<?php
function load_env_file($path) {
    if (!file_exists($path)) return false;
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        $line = trim($line);
        if ($line === '' || strpos($line, '#') === 0 || strpos($line, '=') === false) continue;
        list($key, $value) = explode('=', $line, 2);
        $key = trim($key);
        $value = trim(trim($value), "\"'");
        $_ENV[$key] = $value;
    }
    return true;
}

// Try current directory and parent directory for .env
if (!load_env_file(__DIR__ . '/.env')) {
    load_env_file(__DIR__ . '/../.env');
}

// Razorpay લિંક દ્વારા આવતો ડેટા URL (GET) માંથી મેળવો
$paymentId = $_GET['razorpay_payment_id'] ?? '';
$paymentLinkStatus = $_GET['razorpay_payment_link_status'] ?? '';
$receipt = $_GET['receipt'] ?? '';

$baseUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https://' : 'http://') . $_SERVER['HTTP_HOST'];

// જો પેમેન્ટ આઈડી ખાલી હોય અથવા સ્ટેટસ સાચું ના હોય તો ફેલિયર પેજ પર મોકલો
if (empty($paymentId) || $paymentLinkStatus !== 'paid') {
    header('Location: ' . $baseUrl . '/checkout/payment?status=failed');
    exit;
}

// 🎉 જો સ્ટેટસ 'paid' મળી જાય તો પેમેન્ટ સફળ છે, થેન્ક્યુ પેજ પર મોકલો
header('Location: ' . $baseUrl . '/success');
exit;
?>
