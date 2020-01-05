/// @description Insert description here
// You can write your code in this editor
draw_self();
if room_get_name(room) == "EndRoom"
{
	draw_text(125, 90, "Total deaths: " + string(global.playerdeaths));
	draw_text(120, 120, "R to restart game");
	draw_text(125, 140, "ESC to exit game");
}
if room_get_name(room) == "room0"
{
	draw_text(30, 1, "WASD to move, R to restart, Q to die");
}