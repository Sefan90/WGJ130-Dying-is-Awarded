var checklayer = argument0 //Layer to check "Collision"
var movingdir = argument1 //Right, Left, Up, Down
var movingspeed = argument2
var bbox_side;
var tilemap = layer_tilemap_get_id(checklayer);
if movingdir = "Right" || movingdir = "Left" 
{
	if movingdir = "Right" 
		bbox_side = bbox_right;
	else 
		bbox_side = bbox_left;

	if tilemap_get_at_pixel(tilemap,bbox_side+movingspeed,bbox_top) != 0 || tilemap_get_at_pixel(tilemap,bbox_side+movingspeed,bbox_bottom) != 0
		return false //Collising
	return true
}
else
{
	if movingdir = "Up" 
		bbox_side = bbox_top;
	else 
		bbox_side = bbox_bottom;

	if tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+movingspeed) != 0 || tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+movingspeed) != 0
		return false //Collising
	return true
}
	
