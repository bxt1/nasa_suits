<?php

require_once __DIR__."/../../models/ServerConn.php";

$serverConn = new ServerConn;//make and initialize Connection

if(array_key_exists("eva_id", $_GET)){
	$eva_id = $_GET["eva_id"];
	
	$sql = "SELECT step FROM iau WHERE eva_id = $eva_id ORDER BY step DESC LIMIT 1";
	//echo $sql;
    $result = mysqli_query($serverConn->conn, $sql);
	if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $step = $row['step'];
            echo $step;
        }
    } else{
		echo 0;
	}
}
$serverConn->closeConnection();
