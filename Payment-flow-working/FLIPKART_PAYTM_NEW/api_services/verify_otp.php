<?php

function verify_otp()
{
	global $outputjson, $gh, $db, $const, $tz_name, $tz_offset, $phone_format;
	$outputjson['success'] = 0;

	$username = $gh->read("email");
	$username = addslashes(str_replace('&apos;', "'", $username));
	$otp = $gh->read("otp");
	if (empty($otp)) {
		$outputjson['message'] = "OTP is required.";
		return;
	}

	$query_user = "SELECT usr.* FROM tbl_users as usr WHERE usr.username ='" . $username . "'";
	$rows = $db->execute($query_user);

	if ($rows != null && is_array($rows) && count($rows) > 0) {
		$user = $rows[0];
		$userotp = $user['otp'];

		// remove password from user object
		unset($user["password"]);
		unset($user["otp"]);

		if ($userotp == $otp) {
			$outputjson['success'] = 1;
			$outputjson['global_search_flag'] = 1;
			$outputjson['message'] = 'User logged in successfully.';
			$outputjson["data"] = $user;
		} else {
			$outputjson['message'] = "Invalid OTP.";
		}
	} else {
		$outputjson['message'] = "Your account is Inactive or this Username does not exist. Please try again or contact support@sailons.com.";
	}
}
