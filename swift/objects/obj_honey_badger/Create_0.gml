/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

X_OFFSET_FROM_PLAYER_CENTRE = 0; 
Y_OFFSET_FROM_PLAYER_CENTRE = -15; 
RATE_OF_ATTACK = room_speed / 4; //Fires 4 times per second

SPR_WEAPON_LEFT_IDLE = spr_honey_badger_idle;
SPR_WEAPON_LEFT_FIRE = spr_honey_badger_fire;
SPR_WEAPON_RIGHT_IDLE = spr_honey_badger_idle;
SPR_WEAPON_RIGHT_FIRE = spr_honey_badger_fire;

WEAPON_PROJECTILE = obj_honey_badger_projectile;
PROJECTILE_OFFSET_FORWARD = 20;