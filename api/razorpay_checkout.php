<?php
// .env ફાઇલ લોડ કરવાનો કોડ
function load_env_file($path) {
    if (!file_exists($path)) return false;
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        $line = trim($line);
        if ($line === '' || strpos($line, '#') === 0 || strpos($line, '=') === false) continue;
        list($key, $value) = explode('=', $line, 2);
        $key = trim($key);
        $value = trim($value);
        $value = trim($value, "\"'");
        $_ENV[$key] = $value;
    }
    return true;
}

// Try current directory and parent directory for .env
if (!load_env_file(__DIR__ . '/.env')) {
    load_env_file(__DIR__ . '/../.env');
}

// .env માંથી સાચી કી મેળવો
$keyId = isset($_ENV['RAZORPAY_KEY_ID']) ? trim($_ENV['RAZORPAY_KEY_ID']) : '';
$keySecret = isset($_ENV['RAZORPAY_KEY_SECRET']) ? trim($_ENV['RAZORPAY_KEY_SECRET']) : '';

// આગળના પેજમાંથી આવતી અમાઉન્ટ (કિંમત) મેળવો
$amount = isset($_GET['amount']) ? (float)$_GET['amount'] : 0;
if ($amount <= 0) {
    die('Invalid amount (ખોટી કિંમત છે)');
}
if ($keyId === '' || $keySecret === '') {
    die('Razorpay keys missing in .env (કી મળી નથી)');
}

// રૂપિયાને પૈસામાં કન્વર્ટ કરો
$amountPaise = (int) round($amount * 100);
$receiptId = 'rcpt_' . time();

// Razorpay Payment Links API URL
$url = 'https://api.razorpay.com/v1/payment_links';

// Construct callback URL dynamically
$protocol = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https://' : 'http://');
$host = $_SERVER['HTTP_HOST'];
$scriptDir = dirname($_SERVER['SCRIPT_NAME']);
$currentDirUrl = $protocol . $host . ($scriptDir === '/' || $scriptDir === '\\' ? '' : $scriptDir);
$currentDirUrl = rtrim($currentDirUrl, '/\\');
$callbackUrl = $currentDirUrl . "/razorpay_verify.php?receipt=" . $receiptId;

// આ ડેટા સીધો જ Razorpay ના સર્વર પર જશે લિંક બનાવવા માટે
$data = array(
    "amount" => $amountPaise,
    "currency" => "INR",
    "accept_partial" => false,
    "description" => "Order Payment " . $receiptId,
    "notify" => array(
        "sms" => false,
        "email" => false
    ),
    "reminder_enable" => false,
    "callback_url" => $callbackUrl,
    "callback_method" => "get"
);

// cURL દ્વારા સુરક્ષિત રીતે લિંક જનરેટ કરો
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_USERPWD, $keyId . ":" . $keySecret);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // For local dev compatibility

$response = curl_exec($ch);

// CURLINFO_HTTP_CODE નો સાચો ઉપયોગ કર્યો છે
$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE); 
curl_close($ch);

$result = json_decode($response, true);

if (($http_code == 200 || $http_code == 201) && isset($result['short_url'])) {
    header("Location: " . $result['short_url']);
    exit();
} else {
    echo "<h2>❌ પેમેન્ટ લિંક ઓપન કરવામાં સમસ્યા આવી છે!</h2>";
    echo "<p>Razorpay તરફથી મળેલો મેસેજ નીચે મુજબ છે:</p>";
    echo "<pre>";
    print_r($result);
    echo "</pre>";
}
?>
