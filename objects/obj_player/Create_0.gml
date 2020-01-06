player_speed = 1
player_gravity = 0.1
player_jumpspeed = 3
alive = true
spriteList[0] = spr_player
spriteList[1] = spr_playerdead
startx = x
starty = y

global.playerstartx = startx
global.playerstarty = starty

//input
key_up = ord("W")
key_left = ord("A")
//key_down = ord("S")
key_right = ord("D")

color = make_colour_hsv(random(255), 255, random(255));