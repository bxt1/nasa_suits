<?php


require_once __DIR__."/../models/ServerConn.php";
$serverConn = new ServerConn;//make and initialize Connection

if(array_key_exists("RespSize", $_GET)){//case 1 in documentation
	$RespSize = $_GET["RespSize"];
	//make query
	$sql = "SELECT * FROM suit_switch ORDER BY create_date DESC LIMIT $RespSize";

	$result = mysqli_query($serverConn->conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		$multarr = [];
		//fill every row
		while ($row = mysqli_fetch_assoc($result)) {
			$arr = array(
			"sop_on" => $row['sop_on'],
			"sspe" => $row['sspe'],
			"fan_error" => $row['fan_error'],
			"vent_error" => $row['vent_error'],
			"vehicle_power" => $row['vehicle_power'],
			"h2o_off" => $row['h2o_off'],
			"o2_off" => $row['o2_off'],
			"create_date" => $row['create_date'] );

			array_push($multarr, $arr);
		}
		echo json_encode($multarr);
	}
}
$serverConn->closeConnection();
