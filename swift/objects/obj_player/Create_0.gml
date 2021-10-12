/// @description Insert description here
// You can write your code in this editor

//Inherit parent event
event_inherited();
HEALTH = 100;

//Constants
ACCELERATION_PX_PER_FRAME = 2.5;
MAX_SPEED_PX_PER_FRAME = 5;
DASH_ACCELERATION_INCREASE = 0.5;
DASH_TIME = room_speed/5; // Dash lasts 1/5 of a second

phy_fixed_rotation = true;

CURR_HEALTH = 10;
MAX_HEALTH = 10;

//Variables
moving = false;
dashing = false;
w_key_pressed = false;
a_key_pressed = false;
s_key_pressed = false;
d_key_pressed = false;
state = "normal";
res_x = 0; // respawn coordinate after falling into hole
res_y = 0; // respawn coordinate after falling into hole