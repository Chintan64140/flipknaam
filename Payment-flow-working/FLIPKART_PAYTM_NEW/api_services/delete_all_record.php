<?php

function delete_all_record()
{
	global $outputjson, $gh, $db;
	$outputjson['success'] = 0;

	$db->execute_query('TRUNCATE TABLE tbl_product_verient');
	$db->execute_query('TRUNCATE TABLE tbl_product');

	$outputjson['message'] = 'data deleted successfully.';
	$outputjson['success'] = 1;
}
