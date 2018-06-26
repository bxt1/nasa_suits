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

require_once __DIR__."/../models/EVA.php";
require_once __DIR__."/../models/ServerConn.php";

$serverConn = new ServerConn;

if(array_key_exists("eva_id", $_GET)){
  //make query
  $eva = new EVA;
  $eva->FillFromDatabase($_GET['eva_id'], $serverConn->conn);
  echo json_encode($eva);
  }
else{
  //make query
  $sql = "SELECT * FROM eva";
  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result)>0) {
      //show data for each row
      $multarr = [];
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array("eva_id" => $row['id'],
          "eva_name" => $row['name'],
          "eva_img_link" => $row['img_link']);

          array_push($multarr,$arr);
      }//get individual results in main array
      echo json_encode($multarr);
  }
  else{//no results
    echo NULL;
  }
}//no useful parameters provided

$serverConn->closeConnection();
