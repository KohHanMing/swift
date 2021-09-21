/// @description Insert description here
// You can write your code in this editor

//Constants
ACCELERATION_PX_PER_FRAME = 4;
MAX_SPEED_PX_PER_FRAME = 8;
DASH_SPEED_INCREASE = 20;
phy_fixed_rotation = true;

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