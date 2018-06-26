import requests
import time
import random

TimeInMins = 10
TimeInSeconds = TimeInMins * 60
#all changing params0 - 10 hours
#'time_life_battery' 0 - 10 hours
#'time_life_oxygen'0-10 hours
#'time_life_water'0-10 hours
#'extravehicular_activity_time' 0-9 hours
#'battery_capacity' 0-30 amp-hr

hoursmax = 10
batterymax = 30

TimeCounter = TimeInSeconds
while(TimeCounter > 0):
    hoursleft = hoursmax * (float(TimeCounter)/TimeInSeconds)
    minleft = (hoursleft * 60) % 60
    secondleft = (hoursleft*3600) % 3600
    intminleft = int(minleft)
    intsecondleft = int(secondleft)
    intHoursLeft = int(hoursleft)
    fulltimeleft = "\"" + str(intHoursLeft)[:2].zfill(2) + ":" + str(intminleft)[:2].zfill(2) + ":" + str(intsecondleft)[:2].zfill(2) +"\""
    print(fulltimeleft)

    batteryleft = int(batterymax * (float(TimeCounter)/TimeInSeconds))
    print(batteryleft)
    payload = {
	'heart_rate' : 80 + random.randint(1,4) - 2,
	'internal_suit_pressure' : 4 * (float(TimeCounter)/TimeInSeconds),
    'time_life_battery' : fulltimeleft,
    'time_life_oxygen' : fulltimeleft,
    'time_life_water' : fulltimeleft,
    'sub_pressure' : 4 * (float(TimeCounter)/TimeInSeconds),
    'sub_temp' : 100 + random.randint(0,200),
    'fan_tachometer' : int(40000 * (float(TimeCounter)/TimeInSeconds)),
    'oxygen_pressure' : 500 + int(450 * (float(TimeCounter)/TimeInSeconds)),
    'oxygen_rate' : float(TimeCounter)/TimeInSeconds,
    'battery_capacity' : batteryleft,
    'h2o_gas_pressure' : 12 + int(5 * (float(TimeCounter)/TimeInSeconds)),
    'h2o_liquid_pressure' : 11 + int(6 * (float(TimeCounter)/TimeInSeconds)),
    'sop_pressure' : 600 + int(350 * (float(TimeCounter)/TimeInSeconds)),
    'sop_rate' : float(TimeCounter)/TimeInSeconds
	}
    test = requests.post("http://localhost/NasaSuits/api/Tele/PostTele.php", data=payload)

    print(test.text)
    time.sleep(1)
    TimeCounter -= 1
payload = {
'heart_rate' : 80,
'internal_suit_pressure' : 4,
'time_life_battery' : "\"10:00:00\"",
'time_life_oxygen' : "\"10:00:00\"",
'time_life_water' : "\"10:00:00\"",
'sub_pressure' : 2.2,
'sub_temp' : 12,
'fan_tachometer' : 34500,
'extravehicular_activity_time' : "\"10:00:00\"",
'oxygen_pressure' : 780,
'oxygen_rate' : 0.76,
'battery_capacity' : 25,
'h2o_gas_pressure' : 14,
'h2o_liquid_pressure' : 15,
'sop_pressure' : 760,
'sop_rate' : 0.656,
}
test = requests.post("http://localhost/NasaSuits/api/Tele/PostTele.php", data=payload)