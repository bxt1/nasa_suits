<?php
require_once __DIR__."/../models/ServerConn.php";
$serverConn = new ServerConn;
$sql = "SELECT * FROM telemetry_meta";

$result = mysqli_query($serverConn->conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $multarr = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $arr = array(
			"telemetry_data" => $row['telemetry_data'],
			"rank" => $row['rank'],
			"warning_thr_low" => $row['warning_thr_low'],
			"warning_thr_up" => $row['warning_thr_up'],
			"critical_thr_low" => $row['critical_thr_low'],
			"critical_thr_up" => $row['critical_thr_up'],
        );
        array_push($multarr, $arr);
    }
    echo json_encode($multarr);
}
$serverConn->closeConnection();