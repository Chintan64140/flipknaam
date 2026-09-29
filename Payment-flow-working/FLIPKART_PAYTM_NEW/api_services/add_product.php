<?php

function add_product()
{
	global $outputjson, $gh, $db;
	$outputjson['success'] = 0;

	$id = $gh->read("id");
	$name = $gh->read("name");
	$disp_order = $gh->read("disp_order");
	$varient = json_decode($_POST["varient"], true);
	$outputjson['varient'] = $varient;
	if ($name) {
		$i = 1;
		$last_item = array();
		foreach ($varient as $value) {
			$color = $value['color'];
			$size = $value['size'];
			$storage = $value['storage'];
			$selling_price = $value['selling_price'];
			$mrp = $value['mrp'];
			$features = $value['features'];
			$img1 = $value['img1'];
			$img2 = $value['img2'];
			$img3 = $value['img3'];
			$img4 = $value['img4'];
			$img5 = $value['img5'];

			if ($name != "" || $color != "" || $size != "" || $storage != "") {
				$name = ($name == '' || $name == '-') ? $last_item['name'] : $name;
				if (count($last_item) !== 0 && $name != $last_item['name']) {
					$last_item = array();
				}
				if (count($last_item) !== 0) {
					// echo '~name ' . $last_item['name'];
					$name = ($name == '' || $name == '-') ? $last_item['name'] : $name;
					$color = ($color == '' || $color == '-') ? $last_item['color'] : $color;
					$size = ($size == '' || $size == '-') ? $last_item['size'] : $size;
					$storage = ($storage == '' || $storage == '-') ? $last_item['storage'] : $storage;
					$selling_price = ($selling_price == '' || $selling_price == '-') ? $last_item['selling_price'] : $selling_price;
					$mrp = ($mrp == '' || $mrp == '-') ? $last_item['mrp'] : $mrp;
					$features = ($features == '' || $features == '-') ? $last_item['features'] : $features;
					$img1 = ($img1 == '' || $img1 == '-') ? $last_item['img1'] : $img1;
					$img2 = ($img2 == '' || $img2 == '-') ? $last_item['img2'] : $img2;
					$img3 = ($img3 == '' || $img3 == '-') ? $last_item['img3'] : $img3;
					$img4 = ($img4 == '' || $img4 == '-') ? $last_item['img4'] : $img4;
					$img5 = ($img5 == '' || $img5 == '-') ? $last_item['img5'] : $img5;
				}
				// echo $i . '. ' . $name;

				$last_item = array(
					"name" => $name,
					"color" => $color,
					"size" => $size,
					"storage" => $storage,
					"selling_price" => $selling_price,
					"mrp" => $mrp,
					"features" => $features,
					"img1" => $img1,
					"img2" => $img2,
					"img3" => $img3,
					"img4" => $img4,
					"img5" => $img5,
					"disp_order" => $disp_order,
					"from_csv" => 0,
				);
				// Shipping Line
				$qry_product = "SELECT * FROM tbl_product WHERE name = '$name'";
				$rows_product = $db->execute($qry_product);
				if ($rows_product != null && is_array($rows_product) && count($rows_product) > 0) {
					$product_id = $rows_product[0]['id'];
					if ($i == 1) {
						$db->delete("tbl_product_verient", array('product_id' => $product_id));
					}
				} else {
					$data = $last_item;
					$product_id = $db->insert("tbl_product", $data);
				}

				// Port rates
				$qry_port_chk = "SELECT * FROM tbl_product_verient WHERE product_id = '$product_id' AND color = '$color' AND size = '$size' AND storage = '$storage'";
				$rows_port_chk = $db->execute($qry_port_chk);
				if ($rows_port_chk != null && is_array($rows_port_chk) && count($rows_port_chk) > 0) {
					//Data already Exist
				} else {
					$data = array(
						"product_id" => $product_id,
						"name" => $name,
						"color" => $color,
						"size" => $size,
						"storage" => $storage,
						"selling_price" => $selling_price,
						"mrp" => $mrp,
						"features" => $features,
						"img1" => $img1,
						"img2" => $img2,
						"img3" => $img3,
						"img4" => $img4,
						"img5" => $img5,
						"from_csv" => 0,
					);
					$db->insert("tbl_product_verient", $data);
				}
			}
			$i++;
		}

		$outputjson['result'] = [];
		$outputjson['success'] = 1;
		$outputjson['message'] = "Data added successfully";
	} else {
		$outputjson['message'] = "Please add Rates Category!";
	}
}
