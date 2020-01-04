
if global.playerstartx < x+32 and global.playerstartx > x-32
and global.playerstarty < y+48 and global.playerstarty > y-48
	instance_destroy();

if(place_free( x, y+1 ) and scr_checkCollision("Collision","Down",1))
	y += 1
