///standard platform movement

//controls for movement
if alive
{
	if keyboard_check(key_right) and scr_checkCollision("Collision","Right",1)
		x += player_speed 
	if keyboard_check(key_left) and scr_checkCollision("Collision","Left",-1)
		x -= player_speed 

	//check if on ground
	if(place_free( x, y+1 ) and scr_checkCollision("Collision","Down",1)){
	    gravity = player_gravity; //set gravity - we are in the air!
	} else {
	    gravity = 0; //no need for gravity on ground

	    //we are on ground so we can check if we need to jump
	    if( keyboard_check_pressed(key_up) or keyboard_check_pressed(vk_space)){
	        vspeed = -player_jumpspeed;
	    }
	}
	
	if !scr_checkCollision("Collision","Right",1) or !scr_checkCollision("Collision","Left",-1)
	or !scr_checkCollision("Collision","Down",1) or !scr_checkCollision("Collision","Up",-1)
	or keyboard_check_pressed(ord("Q"))
	{
		alive = !alive
		global.playerdeaths += 1
		instance_create_layer(startx, starty,"Instances", obj_player)
		instance_create_layer(x, y,"Instances", obj_playerdead)
		instance_destroy();
	}
	
	if keyboard_check_pressed(ord("R"))
		instance_destroy(obj_playerdead);
}