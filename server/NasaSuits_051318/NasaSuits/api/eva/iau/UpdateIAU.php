<?php
require_once __DIR__."/../../models/ServerConn.php";

$serverConn = new ServerConn;//make and initialize Connection

if(array_key_exists("iau_id", $_GET) && array_key_exists("completed", $_GET)){
	$iau_id = $_GET["iau_id"];
	$iau_completed = $_GET["completed"];
	$sql = "UPDATE iau SET completed = $iau_completed WHERE id = $iau_id";

	if ($serverConn->conn->query($sql) === true) {
		echo "Update successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $serverConn->conn->error;
		http_response_code(400);
	}
}
else if(array_key_exists("iau_id", $_GET) && array_key_exists("locked", $_GET)){
	$iau_id = $_GET["iau_id"];
	$iau_locked = $_GET["locked"];
	$sql = "UPDATE iau SET locked = $iau_locked WHERE id = $iau_id";

	if ($serverConn->conn->query($sql) === true) {
		echo "Update successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $serverConn->conn->error;
		http_response_code(400);
	}
}

else if(array_key_exists("eva_id", $_GET) && array_key_exists("completed", $_GET) && array_key_exists("locked", $_GET)){
	$eva_id = $_GET["eva_id"];
	$iau_completed = $_GET["completed"];
	$iau_locked = $_GET["locked"];
	$sql = "UPDATE iau SET completed = $iau_completed, locked = $iau_locked WHERE eva_id = $eva_id";

	if ($serverConn->conn->query($sql) === true) {
		echo "Update successfully";
	} else {
		echo "Error: " . $sql . "<br>" . $serverConn->conn->error;
		http_response_code(400);
	}
}

$serverConn->closeConnection();