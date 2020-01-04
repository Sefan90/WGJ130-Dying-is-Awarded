///Collision Correction

//Moving into a solid puts us back as if we never moved.
//This part allows us to move on slopes and fill the gaps.
if vspeed > 0 and  !scr_checkCollision("Collision","Down",vspeed)
	vspeed = 0
	gravity = 0

//First check if we need to correct for collision
if( speed != 0 and y == yprevious ){
   
   //if we are blocked then set vspeed to 0
   if( !place_free( x, y + sign( vspeed )) and scr_checkCollision("Collision","Down",vspeed)){
        vspeed = 0;
   }
    //move up first if vspeed is up
   if( vspeed < 0){
        move_contact_all( 90, -vspeed );
   }

    //move down if vspeed is down
   if( vspeed > 0 ){
        move_contact_all( 270, vspeed );
   }
}