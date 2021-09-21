/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

//weapon pivot point is -5 from player centre
//this -5 ensures weapon centre is aligned to player
X_OFFSET_FROM_PLAYER_CENTRE = -5; 
RATE_OF_ATTACK = room_speed / 4; //Fires 4 times per second

SPR_WEAPON_LEFT_IDLE = spr_weapon_ranged_left_idle;
SPR_WEAPON_LEFT_FIRE = spr_weapon_ranged_left_fire;
SPR_WEAPON_RIGHT_IDLE = spr_weapon_ranged_right_idle;
SPR_WEAPON_RIGHT_FIRE = spr_weapon_ranged_right_fire;