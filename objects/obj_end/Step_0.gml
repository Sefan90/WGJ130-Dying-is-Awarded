/// @description Insert description here
// You can write your code in this editor
if room_get_name(room) == "EndRoom" and keyboard_check_pressed(ord("R"))
	game_restart()
if room_get_name(room) == "EndRoom" and keyboard_check_pressed(vk_escape)
	game_end()