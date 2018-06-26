<?php
/**
 * POST Telemetry data to MySQL Batabase and return status
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

//POST info into var
$internal_suit_pressure = $_POST["internal_suit_pressure"];
$time_life_battery = $_POST["time_life_battery"];
$time_life_oxygen = $_POST["time_life_oxygen"];
$time_life_water = $_POST["time_life_water"];
$sub_pressure = $_POST["sub_pressure"];
$sub_temp = $_POST["sub_temp"];
$fan_tachometer = $_POST["fan_tachometer"];
$heart_rate = $_POST["heart_rate"];
$oxygen_pressure = $_POST["oxygen_pressure"];
$oxygen_rate = $_POST["oxygen_rate"];
$battery_capacity = $_POST["battery_capacity"];
$h2o_gas_pressure = $_POST["h2o_gas_pressure"];
$h2o_liquid_pressure = $_POST["h2o_liquid_pressure"];
$sop_pressure = $_POST["sop_pressure"];
$sop_rate = $_POST["sop_rate"];

//insert into database
$sql = "INSERT INTO telemetry (tele_id, internal_suit_pressure, time_life_battery,
time_life_oxygen, time_life_water, sub_pressure,sub_temp, fan_tachometer,
heart_rate ,oxygen_pressure, oxygen_rate,
battery_capacity, h2o_gas_pressure, h2o_liquid_pressure, sop_pressure,
sop_rate, create_date)
VALUES (NULL, $internal_suit_pressure, $time_life_battery,
$time_life_oxygen, $time_life_water, $sub_pressure, $sub_temp, $fan_tachometer,
$heart_rate ,$oxygen_pressure, $oxygen_rate,
$battery_capacity, $h2o_gas_pressure, $h2o_liquid_pressure, $sop_pressure,
$sop_rate, NULL)";

if ($serverConn->conn->query($sql) === true) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $serverConn->conn->error;
}

$serverConn->closeConnection();
