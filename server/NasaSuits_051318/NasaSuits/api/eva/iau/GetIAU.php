<?php
/**
 * Get IAU data from MySQL Batabase and return as JSON
 *
 * PHP Version 7
 *
 * @category Nasa_Suites_MySQL
 * @package  Database
 * @author   UA team <kjv13@zips.uakron.edu>
 * @license  http://www.gnu.org/copyleft/gpl.html GNU General Public License
 * @link     http://www.hashbangcode.com/
 */

require_once __DIR__."/../../models/IAU.php";
require_once __DIR__."/../../models/ServerConn.php";

$serverConn = new ServerConn;//make and initialize Connection

if(array_key_exists("eva_id", $_GET)&&array_key_exists("step", $_GET)){
	$eva_id = $_GET["eva_id"];
	$step = $_GET["step"];
	$iau = new IAU;
	$iau->FillFromDatabaseByEvaIdAndStep($eva_id, $step, $serverConn->conn);
	echo json_encode($iau);
	
} else if(array_key_exists("iau_id", $_GET)){//all data for 1 IAU
  $iau_id = $_GET["iau_id"];
  $iau = new IAU;

  $iau ->FillFromDatabase($iau_id, $serverConn->conn);
  echo json_encode($iau);
  }

else{//all iau's in eva
  //make query
  $sql = "SELECT * FROM iau";
  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result)>0) {
      //show data for each row
      $multarr = [];
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
                 "iau_id" => $row['id'],
				 "iau_step" => $row['step'],
				 "iau_sub_step" => $row['sub_step'],
				 "iau_high_level_action" => $row['high_level_action'],
				 "iau_site_of_action" => $row['site_of_action'],
				 "iau_task_of_action" => $row['task_of_action'],
				 "iau_confirm_level" => $row['confirm_level'],
				 "iau_next_step" => $row['next_step'],
				 "iau_backup_step" => $row['backup_step'],
				 "iau_caution_level" => $row['caution_level'],
				 "iau_caution" => $row['caution'],
				 "iau_completed" => $row['completed'],
				 "iau_eva_id" => $row['eva_id'],
				 "iau_preemption_level" => $row['preemption_level'],
				 "iau_locked" => $row['locked']
          );


          array_push($multarr,$arr);
      }//get individual results in main array
      echo json_encode($multarr);
  }
  else{//no results
    echo error;
  }
}//no useful parameters provided//list of all IAU's

$serverConn->closeConnection();
