/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

//weapon pivot point is -5 from player centre
//this -5 ensures weapon centre is aligned to player
X_OFFSET_FROM_PLAYER_CENTRE = -5; 
Y_OFFSET_FROM_PLAYER_CENTRE = -14; 
RATE_OF_ATTACK = room_speed / 4; //Fires 4 times per second

SPR_WEAPON_IDLE_SIDE = spr_weapon_ranged_idle_side;
SPR_WEAPON_FIRE_SIDE = spr_weapon_ranged_fire_side;

SPR_WEAPON_IDLE_FRONT = spr_weapon_ranged_idle_front;
SPR_WEAPON_FIRE_FRONT =spr_weapon_ranged_fire_front;

SFX_WEAPON = sfx_player_ranged;

WEAPON_PROJECTILE = obj_weapon_ranged_projectile;
PROJECTILE_OFFSET_FORWARD = 20;