<?php
/**
 * Get Telemetry data from MySQL Batabase and return as JSON
 *
 * PHP Version 7
 *
 * @category Nasa_Suites_MySQL
 * @package  Database
 * @author   UA team <kjv13@zips.uakron.edu>
 * @license  http://www.gnu.org/copyleft/gpl.html GNU General Public License
 * @link     http://www.hashbangcode.com/
 */

require_once __DIR__."/../models/ServerConn.php";
$serverConn = new ServerConn;//make and initialize Connection

if(array_key_exists("RespSize", $_GET)){//case 1 in documentation

  $RespSize = $_GET["RespSize"];
 
  //make query
  $sql = "SELECT tele_id, internal_suit_pressure, time_life_battery, time_life_oxygen,
  time_life_water, sub_pressure, sub_temp, fan_tachometer,
  heart_rate, oxygen_pressure, oxygen_rate,
  battery_capacity, h2o_gas_pressure, h2o_liquid_pressure,
  sop_pressure, sop_rate, create_date
  FROM telemetry ORDER BY create_date DESC LIMIT $RespSize";

  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result) > 0) {
      $multarr = [];
      //fill every row
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
          "tele_id" => $row['tele_id'],
          "p_suit" => $row['internal_suit_pressure'],
          "t_battery" => $row['time_life_battery'],
          "t_oxygen" => $row['time_life_oxygen'],
          "t_water" => $row['time_life_water'],
          "p_sub" => $row['sub_pressure'],
          "t_sub" => $row['sub_temp'],
          "v_fan" => $row['fan_tachometer'],
          "heart_bpm" => $row['heart_rate'],
          "p_o2" => $row['oxygen_pressure'],
          "rate_o2" => $row['oxygen_rate'],
          "cap_battery" => $row['battery_capacity'],
          "p_h2o_g" => $row['h2o_gas_pressure'],
          "p_h2o_l" => $row['h2o_liquid_pressure'],
          "p_sop" => $row['sop_pressure'],
          "rate_sop" => $row['sop_rate'],
          "create_date" => $row['create_date'] );

          array_push($multarr, $arr);
      }
      echo json_encode($multarr);
  }


}
elseif(array_key_exists("WithinPastMinutes", $_GET)){//case 2 in documentation
  $WithinPastMinutes = $_GET["WithinPastMinutes"];
  

  //make query
  $sql = "SELECT tele_id, internal_suit_pressure, time_life_battery, time_life_oxygen,
  time_life_water, sub_pressure, sub_temp, fan_tachometer,
  heart_rate, oxygen_pressure, oxygen_rate,
  battery_capacity, h2o_gas_pressure, h2o_liquid_pressure,
  sop_pressure, sop_rate, create_date
  FROM telemetry WHERE TIME_TO_SEC(TIMEDIFF(NOW(), create_date)) < $WithinPastMinutes*60";

  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result) > 0) {
      $multarr = [];
      //fill every row
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
          "tele_id" => $row['tele_id'],
          "p_suit" => $row['internal_suit_pressure'],
          "t_battery" => $row['time_life_battery'],
          "t_oxygen" => $row['time_life_oxygen'],
          "t_water" => $row['time_life_water'],
          "p_sub" => $row['sub_pressure'],
          "t_sub" => $row['sub_temp'],
          "v_fan" => $row['fan_tachometer'],
          "heart_bpm" => $row['heart_rate'],
          "p_o2" => $row['oxygen_pressure'],
          "rate_o2" => $row['oxygen_rate'],
          "cap_battery" => $row['battery_capacity'],
          "p_h2o_g" => $row['h2o_gas_pressure'],
          "p_h2o_l" => $row['h2o_liquid_pressure'],
          "p_sop" => $row['sop_pressure'],
          "rate_sop" => $row['sop_rate'],
          "create_date" => $row['create_date'] );

          array_push($multarr, $arr);
      }
      echo json_encode($multarr);
  }
}
elseif((array_key_exists("StartTime", $_GET) And array_key_exists("EndTime", $_GET))){//case 3 in documentation case: for only specified user
  $StartTime = $_GET["StartTime"];
  $EndTime = $_GET["EndTime"];
  
  //make query
  $sql = "SELECT tele_id, internal_suit_pressure, time_life_battery, time_life_oxygen,
  time_life_water, sub_pressure, sub_temp, fan_tachometer,
  heart_rate, oxygen_pressure, oxygen_rate,
  battery_capacity, h2o_gas_pressure, h2o_liquid_pressure,
  sop_pressure, sop_rate, create_date
  FROM telemetry WHERE (create_date >= $StartTime AND $EndTime >= create_date)";

  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result) > 0) {
      $multarr = [];
      //fill every row
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
          "tele_id" => $row['tele_id'],
          "p_suit" => $row['internal_suit_pressure'],
          "t_battery" => $row['time_life_battery'],
          "t_oxygen" => $row['time_life_oxygen'],
          "t_water" => $row['time_life_water'],
          "p_sub" => $row['sub_pressure'],
          "t_sub" => $row['sub_temp'],
          "v_fan" => $row['fan_tachometer'],
          "heart_bpm" => $row['heart_rate'],
          "p_o2" => $row['oxygen_pressure'],
          "rate_o2" => $row['oxygen_rate'],
          "cap_battery" => $row['battery_capacity'],
          "p_h2o_g" => $row['h2o_gas_pressure'],
          "p_h2o_l" => $row['h2o_liquid_pressure'],
          "p_sop" => $row['sop_pressure'],
          "rate_sop" => $row['sop_rate'],
          "create_date" => $row['create_date'] );

          array_push($multarr, $arr);
      }
      echo json_encode($multarr);
  }
}
elseif(array_key_exists("StartTime", $_GET) And array_key_exists("EndTime", $_GET)){//case 3 in documentation case:for all users
  $StartTime = $_GET["StartTime"];
  $EndTime = $_GET["EndTime"];

  //make query
  $sql = "SELECT tele_id, internal_suit_pressure, time_life_battery, time_life_oxygen,
  time_life_water, sub_pressure, sub_temp, fan_tachometer,
  heart_rate, oxygen_pressure, oxygen_rate,
  battery_capacity, h2o_gas_pressure, h2o_liquid_pressure,
  sop_pressure, sop_rate, create_date
  FROM telemetry WHERE (create_date >= $StartTime AND $EndTime >= create_date)";



  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result) > 0) {
      $multarr = [];
      //fill every row
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
          "tele_id" => $row['tele_id'],
          "p_suit" => $row['internal_suit_pressure'],
          "t_battery" => $row['time_life_battery'],
          "t_oxygen" => $row['time_life_oxygen'],
          "t_water" => $row['time_life_water'],
          "p_sub" => $row['sub_pressure'],
          "t_sub" => $row['sub_temp'],
          "v_fan" => $row['fan_tachometer'],
          "heart_bpm" => $row['heart_rate'],
          "p_o2" => $row['oxygen_pressure'],
          "rate_o2" => $row['oxygen_rate'],
          "cap_battery" => $row['battery_capacity'],
          "p_h2o_g" => $row['h2o_gas_pressure'],
          "p_h2o_l" => $row['h2o_liquid_pressure'],
          "p_sop" => $row['sop_pressure'],
          "rate_sop" => $row['sop_rate'],
          "create_date" => $row['create_date'] );

          array_push($multarr, $arr);
      }
      echo json_encode($multarr);
  }

}
else{
  //default case
  $RespSize = 5;
  $ast_username = "\"cesl\"";
  //make query
  $sql = "SELECT tele_id, internal_suit_pressure, time_life_battery, time_life_oxygen,
  time_life_water, sub_pressure, sub_temp, fan_tachometer,
  heart_rate, oxygen_pressure, oxygen_rate,
  battery_capacity, h2o_gas_pressure, h2o_liquid_pressure,
  sop_pressure, sop_rate, create_date
  FROM telemetry ORDER BY create_date DESC LIMIT $RespSize";

  $result = mysqli_query($serverConn->conn, $sql);

  if (mysqli_num_rows($result) > 0) {
      $multarr = [];
      //fill every row
      while ($row = mysqli_fetch_assoc($result)) {
          $arr = array(
          "tele_id" => $row['tele_id'],
          "p_suit" => $row['internal_suit_pressure'],
          "t_battery" => $row['time_life_battery'],
          "t_oxygen" => $row['time_life_oxygen'],
          "t_water" => $row['time_life_water'],
          "p_sub" => $row['sub_pressure'],
          "t_sub" => $row['sub_temp'],
          "v_fan" => $row['fan_tachometer'],
          "heart_bpm" => $row['heart_rate'],
          "p_o2" => $row['oxygen_pressure'],
          "rate_o2" => $row['oxygen_rate'],
          "cap_battery" => $row['battery_capacity'],
          "p_h2o_g" => $row['h2o_gas_pressure'],
          "p_h2o_l" => $row['h2o_liquid_pressure'],
          "p_sop" => $row['sop_pressure'],
          "rate_sop" => $row['sop_rate'],
          "create_date" => $row['create_date'] );

          array_push($multarr, $arr);
      }
      echo json_encode($multarr);
  }
}

$serverConn->closeConnection();
