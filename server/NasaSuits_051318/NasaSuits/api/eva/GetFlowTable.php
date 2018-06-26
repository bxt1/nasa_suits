<?php
/**
 * Get EVA data from MySQL Batabase and return as JSON
 *
 * PHP Version 7
 *
 * @category Nasa_Suites_MySQL
 * @package  Database
 * @author   UA team <kjv13@zips.uakron.edu>
 * @license  http://www.gnu.org/copyleft/gpl.html GNU General Public License
 * @link     http://www.hashbangcode.com/
 */

require_once __DIR__."/../models/FlowTable.php";
require_once __DIR__."/../models/ServerConn.php";

$serverConn = new ServerConn;

if(array_key_exists("eva_id", $_GET)){
	$eva_id = $_GET["eva_id"];
	$sql = "SELECT * FROM flow_table WHERE eva_id = $eva_id";

    $result = mysqli_query($serverConn->conn, $sql);
    if(mysqli_num_rows($result)>0){
		$flows = [];
        while($row = mysqli_fetch_assoc($result)){
          $flow_table = new FlowTable($row['id'], $row['current_iau_id'],
          $row['future_iau_id'], $row['eva_id']);
          array_push($flows, $flow_table);
        }
		echo json_encode($flows);
    } else {
		echo "no result";
	}
}


$serverConn->closeConnection();
