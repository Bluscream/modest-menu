---------------------------------------
-- Globals:
---------------------------------------
bool	globals.get_boolean(Integer index)
Number	globals.get_float(Integer index)
Integer	globals.get_int(Integer index)
Integer	globals.get_uint(Integer index)
nil		globals.set_boolean(Integer index, bool value)
nil		globals.set_float(Integer index, Number value)
nil		globals.set_int(Integer index, Integer value)
nil		globals.set_uint(Integer index, Integer value)


---------------------------------------
-- Menu:
---------------------------------------
Lua_ref	menu.register_hotkey(Integer keycode, function callback)
Lua_ref	menu.register_callback(String event, function callback)
-- Events supported:
--  "OnPlayerChanged" -> function(Ped|nil oldPlayer, Ped|nil newPlayer) 
--  "OnVehicleChanged" -> function(Vehicle|nil oldVehicle, Vehicle|nil newVehicle) 
--  "OnWeaponChanged" -> function(Weapon|nil oldWeapon, Weapon|nil newWeapon) 
nil		menu.add_action(string name, function action_function)
nil		menu.add_float_range(string name, float step, float min_value, float max_value, function getter, function setter)
nil		menu.add_int_range(string name, int step, int min_value, int  max_value, function getter, function setter)
nil		menu.add_toggle(string name, function getter, function setter)
nil		menu.remove_hotkey(Lua_ref reference)
nil		menu.remove_callback(Lua_ref reference)
nil		menu.send_key_down(Integer keycode)
nil		menu.send_key_press(Integer keycode)
nil		menu.send_key_up(Integer keycode)
nil		menu.call_airstrike()
nil		menu.call_heli_backup()
nil		menu.clear_wanted_level()
nil		menu.deliver_ammo()
nil		menu.deliver_avenger()
nil		menu.deliver_bullshark()
nil		menu.deliver_dinghy()
nil		menu.deliver_kosatka()
nil		menu.deliver_minigun()
nil		menu.deliver_moc()
nil		menu.deliver_personal_vehicle()
nil		menu.deliver_terrorbyte()
nil		menu.detach_objects()
nil		menu.disconnect_session()
nil		menu.empty_session()
nil		menu.end_cutscene()
nil		menu.enter_personal_vehicle()
nil		menu.heal_all()
nil		menu.heal_player()
nil		menu.heal_vehicle()
nil		menu.instant_bullshark()
nil		menu.instant_drone()
nil		menu.instant_minigun()
nil		menu.instant_minitank()
nil		menu.instant_rcbandito()
nil		menu.kill_all_vehicles()
nil		menu.kill_all_enemies()
nil		menu.kill_all_mission_peds()
nil		menu.kill_all_mission_vehicles()
nil		menu.kill_all_npcs()
nil		menu.kill_current_vehicle()
nil		menu.level_current_vehicle()
nil		menu.max_all_ammo()
nil		menu.max_current_ammo()
nil		menu.refill_boost()
nil		menu.remove_insurance_claims()
nil		menu.repair_online_vehicle()
nil		menu.retrieve_personal_vehicle()
nil		menu.start_choose_character()
nil		menu.start_creator_mode()
nil		menu.start_singleplayer()
nil		menu.suicide_player()
nil		menu.teleport_to_current_vehicle()
nil		menu.teleport_to_objective()
nil		menu.teleport_to_waypoint()
nil		menu.trigger_boat_pickup()
nil		menu.trigger_bunker_production()
nil		menu.trigger_bunker_research()
nil		menu.trigger_heli_pickup()
nil		menu.trigger_heli_vip_pickup()
nil		menu.trigger_mc_production()
nil		menu.trigger_nightclub_production()
bool	menu.get_assisted_aim()
bool	menu.get_bribe_authorities()
bool	menu.get_cops_turn_blind_eye()
bool	menu.get_disable_crash_to_sp()
bool	menu.get_disable_send_to_island()
bool	menu.get_disable_send_to_job()
bool	menu.get_disable_teleport_to_apartment()
bool	menu.get_disable_vehicle_kick()
bool	menu.get_disable_weather_control()
bool	menu.get_ghost_organisation()
bool	menu.get_nightvision()
bool	menu.get_offradar()
bool	menu.get_passive()
bool	menu.get_reveal_player()
bool	menu.get_thermalvision()
nil		menu.set_assisted_aim(bool value)
nil		menu.set_bribe_authorities(bool value)
nil		menu.set_cops_turn_blind_eye(bool value)
nil		menu.set_disable_crash_to_sp(bool value)
nil		menu.set_disable_send_to_island(bool value)
nil		menu.set_disable_send_to_job(bool value)
nil		menu.set_disable_teleport_to_apartment(bool value)
nil		menu.set_disable_vehicle_kick(bool value)
nil		menu.set_disable_weather_control(bool value)
nil		menu.set_ghost_organisation(bool value)
nil		menu.set_nightvision(bool value)
nil		menu.set_offradar(bool value)
nil		menu.set_passive(bool value)
nil		menu.set_reveal_player(bool value)
nil		menu.set_thermalvision(bool value)


---------------------------------------
-- Ped:
---------------------------------------
Integer ped:get_armour()
bool	ped:get_config_flag(Integer index)
Weapon	ped:get_current_weapon()
Vehicle	ped:get_current_vehicle()
bool	ped:get_freeze_momentum()
bool	ped:get_godmode()
Number	ped:get_health()
Number	ped:get_max_health()
Vehicle	ped:get_nearest_vehicle()
Integer	ped:get_player_id()
Integer	ped:get_pedtype()

Ped Types:  
Any ped = -1  
Player = 1  
Male = 4   
Female = 5   
Cop = 6  
Human = 26  
SWAT = 27   
Animal = 28  
Army = 29  

vector3	ped:get_position()
bool	ped:get_reset_flag(Integer index)
vector3	ped:get_rotation()
Number	ped:get_run_speed()
Number	ped:get_swim_speed()
Integer	ped:get_wallet()
Integer	ped:get_wanted_level()
bool	ped:get_weapon_enabled(Integer weapon_hash)
bool	ped:is_in_vehicle()
Nil		ped:set_armour(Integer value)
Nil		ped:set_config_flag(Integer index, bool value)
Nil		ped:set_freeze_momentum(bool value)
Nil		ped:set_godmode(bool value)
Nil		ped:set_health(Number value)
Nil		ped:set_max_health(Number value)
Nil		ped:set_position(vector3 value)
Nil		ped:set_reset_flag(Integer index, bool value)
Nil		ped:set_rotation(vector3 value)
Nil		ped:set_run_speed(Number value)
Nil		ped:set_swim_speed(Number value)
Nil		ped:set_wallet(Integer value)
Nil		ped:set_wanted_level(Integer value)
Nil		ped:set_weapon_enabled(Integer weapon_hash, bool value)

---------------------------------------
-- Pickup:
---------------------------------------
Integer	pickup:get_amount()
Number	pickup:get_health()
Integer	pickup:get_model_hash()
Integer	pickup:get_pickup_hash()
vector3	pickup:get_position()
vector3	pickup:get_rotation()
Nil		pickup:set_amount(Integer value)
Nil		pickup:set_health(Number value)
Nil		pickup:set_model_hash(Integer value)
Nil		pickup:set_model_hash(String value)
Nil		pickup:set_pickup_hash(Integer value)
Nil		pickup:set_pickup_hash(String value)
Nil		pickup:set_position(vector3 value)
Nil		pickup:set_rotation(vector3 value)


---------------------------------------
-- Replayinterface:
---------------------------------------
Iterator<ped>		replayinterface.get_peds()
Iterator<pickup>	replayinterface.get_pickups()
Iterator<vehicle>	replayinterface.get_vehicles()


---------------------------------------
-- Script:
---------------------------------------
script	script(Integer scriptNameHash)
script	script(String scriptName)
bool	script:get_bool(Integer index)
Number	script:get_float(Integer index)
Integer	script:get_int(Integer index)
Integer	script:get_uint(Integer index)
bool	script:is_active()
Nil		script:set_bool(Integer index, bool value)
Nil		script:set_float(Integer index, Number value)
Nil		script:set_int(Integer index, Integer value)
Nil		script:set_uint(Integer index, Integer value)


---------------------------------------
-- Vehicle:
---------------------------------------
bool	vehicle:get_bulletproof_tires()
bool	vehicle:get_godmode()
Number	vehicle:get_health()
Integer	vehicle:get_model_hash()
String	vehicle:get_number_plate_text()
vector3	vehicle:get_position()
vector3	vehicle:get_rotation()
Nil		vehicle:set_bulletproof_tires(bool value)
Nil		vehicle:set_godmode(bool value)
Nil		vehicle:set_health(Number value)
Nil		vehicle:set_model_hash(Integer value)
Nil		vehicle:set_number_plate_text(String value)
Nil		vehicle:set_position(vector3 value)
Nil		vehicle:set_rotation(vector3 value)


---------------------------------------
-- Weapon:
---------------------------------------
Number	weapon:get_aim_fov()
Integer	weapon:get_current_ammo()
Integer	weapon:get_damage_type()
Integer	weapon:get_explosion_type()
Integer	weapon:get_fire_type()
bool	weapon:get_infinite_ammo()
Number	weapon:get_lock_on_range()
Integer	weapon:get_max_ammo()
Integer	weapon:get_max_mp_ammo()
Number	weapon:get_range()
Nil		weapon:set_aim_fov(Number value)
Nil		weapon:set_current_ammo(Integer value)
Nil		weapon:set_damage_type(Integer value)
Nil		weapon:set_explosion_type(Integer value)
Nil		weapon:set_infinite_ammo(bool value)
Nil		weapon:set_lock_on_range(Number value)
Nil		weapon:set_range(Number value)
