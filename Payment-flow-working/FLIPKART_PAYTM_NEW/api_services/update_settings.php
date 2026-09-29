<?php

function update_settings()
{
	global $outputjson, $gh, $db, $const, $tz_name, $tz_offset, $phone_format;
	$outputjson['success'] = 0;

	$cmp_name = $gh->read("cmp_name");
	$cmp_email = $gh->read("cmp_email");
	$admin_email = $gh->read("admin_email");
	$admin_email_password = $gh->read("admin_email_password");
	$contact1 = $gh->read("contact1");
	$contact2 = $gh->read("contact2");
	$address = $gh->read("address");
	$upi = $gh->read("upi");
	$pixel = $_POST["pixel"];
	$show_gpay = $gh->read("show_gpay");
	$pay_type = $gh->read("pay_type");
	$payment_script = $_POST["payment_script"];
	$password = $gh->read("password", "");
	$allowed_ip = $gh->read("allowed_ip", "");


	if ($cmp_name != "" && $cmp_email != "" && $admin_email != "" && $admin_email_password != "" && $contact1 != "" && $contact2 != "" && $address != "") {
		$gpay_flag = 0;
        if($show_gpay){
            $gpay_flag = 1;
        }
		$data = array(
			"company_name" => $cmp_name,
			"company_email" => $cmp_email,
			"admin_email" => $admin_email,
			"admin_email_password" => $admin_email_password,
			"contact1" => $contact1,
			"contact2" => $contact2,
			"address" => $address,
			"show_gpay" => $gpay_flag,
			"pay_type" => $pay_type,
			"payment_script" => $payment_script,
			"upi" => $upi,
			"pixel" => $pixel,
			"allowed_ip" => $allowed_ip,
		);
		$rows = $db->update('tbl_settings', $data, array("id" => 1));

		if ($password != "") {
			$db->update('tbl_users', array("password" => $password), array("id" => 1));
		}

		$myfile = fopen("../setting.php", "w") or die("Unable to open file!");
		$txt_payment_script = "";
		$upi_txt = "";
		$upi_script = "";
		/*if ($pay_type) {
			$txt_payment_script = '<script>var PAY_SCRIPT = "' . str_replace("&apos;", "'", $payment_script) . '"</script>';
		} else {
			$upi_txt = '<?php define("UPI_ID", "' . $upi . '"); ?>';
			$upi_script = '<script>var UPI_ID = "' . $upi . '"</script>';
		}*/
		$upi_txt = '<?php define("UPI_ID", "' . $upi . '"); ?>';
		$upi_script = '<script>var UPI_ID = "' . $upi . '"</script>';
		fwrite($myfile, '<script>var PAY_TYPE = "' . $pay_type . '"</script>');
		fwrite($myfile, '<script>var SHOW_GPAY = ' . $show_gpay . '</script>');
		fwrite($myfile, $upi_txt);
		fwrite($myfile, $upi_script);
		fwrite($myfile, $txt_payment_script);
		$txt = str_replace("&apos;", "'", $pixel);
		fwrite($myfile, $txt);
		fclose($myfile);

		$outputjson['pixel'] = $pixel;
		$outputjson['success'] = 1;
		$outputjson['message'] = 'Settings updated successfully.';
		$outputjson["data"] = $rows;
	} else {
		$outputjson["data"] = [];
		$outputjson['message'] = "Error!";
	}
}
