import requests
import time

while True:
	# Get telemetry from NASA api
	# here use NASA api
	get = requests.get("http://130.101.92.77/NasaSuits/api/Tele/GetTele.php?RespSize=1")
	
	# if json aray, get the first element using this line of code
	telemetry = get.json()[0]
	
	# if not json array, use this line of code
	# telemety = get.json()
	
	print("GET")
	print(telemetry)
	
	# Post Telemetry to VEST database using VEST api
	# make sure the mapping is correct
	# 'vest_api_var_name' : telemetry['nasa_api_var_name']
	payload = {
		'heart_rate' : telemetry["heart_bpm"],
		'internal_suit_pressure' : telemetry["p_suit"],
		'time_life_battery' : telemetry["t_battery"],
		'time_life_oxygen' : telemetry["t_oxygen"],
		'time_life_water' : telemetry["t_water"],
		'sub_pressure' : telemetry["p_sub"],
		'sub_temp' : telemetry["t_sub"],
		'fan_tachometer' : telemetry["v_fan"],
		'oxygen_pressure' : telemetry["p_o2"],
		'oxygen_rate' : telemetry["rate_o2"],
		'battery_capacity' : telemetry["cap_battery"],
		'h2o_gas_pressure' : telemetry["p_h2o_g"],
		'h2o_liquid_pressure' : telemetry["p_h2o_l"],
		'sop_pressure' : telemetry["p_sop"],
		'sop_rate' : telemetry["rate_sop"]
	}
	
	# here used VEST api to send post request
	post = requests.post("http://130.101.92.77/NasaSuits/api/Tele/PostTele.php", data = payload)
	print("POST")
	print(payload)
	time.sleep(1)