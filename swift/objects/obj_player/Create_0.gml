/// @description Initialize Player
// You can write your code in this editor

// Inherit parent event
event_inherited();

// Create Weapon Object
instance_create_layer(x, y, "Instances", obj_game.equipped_melee_weapon);

// Constants
ACCELERATION_PX_PER_FRAME = 2.5;
MAX_SPEED_PX_PER_FRAME = 4;
DASH_ACCELERATION_INCREASE = 0.4;
DASH_TIME = room_speed/5; // Dash lasts 1/5 of a second

DASH_UNIT = 100;
DASH_RECHARGE_RATE = DASH_UNIT / (room_speed * 0.75); //Recharges every 1/2 second
CURR_DASH = DASH_UNIT * 3;
MAX_DASH = DASH_UNIT * 3;

CURR_HEALTH = 100;
MAX_HEALTH = 100;
FALL_DAMAGE = 20;

ENERGY_INCREMENT = 1;
ENERGY_RECHARGE_RATE = room_speed * 1.5
CURR_ENERGY = 10;
MAX_ENERGY = 10;
alarm[2] = ENERGY_RECHARGE_RATE; //Start recharging infinitely

// Variables
moving = false;
dashing = false;
w_key_pressed = false;
a_key_pressed = false;
s_key_pressed = false;
d_key_pressed = false;
state = "normal"

// Hole
res_x = 0; // Respawn coordinate after falling into hole
res_y = 0; // Respawn coordinate after falling into hole