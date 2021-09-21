/// @description Insert description here
// You can write your code in this editor

//Weapon pivot point differs from player centre. Offset accordingly
X_OFFSET_FROM_PLAYER_CENTRE = 0; 
Y_OFFSET_FROM_PLAYER_CENTRE = 0; 
RATE_OF_ATTACK = room_speed //Attacks 1 time per second

//Weapon presets
SPR_WEAPON_LEFT_IDLE = spr_weapon_default;
SPR_WEAPON_LEFT_FIRE = spr_weapon_default;
SPR_WEAPON_RIGHT_IDLE = spr_weapon_default;
SPR_WEAPON_RIGHT_FIRE = spr_weapon_default;

//Projectile presets
WEAPON_PROJECTILE = obj_weapon_ranged_projectile;
PROJECTILE_OFFSET_FORWARD = 20; //Forward is Positive
PROJECTILE_OFFSET_SIDE = 0; //Right is Positive

firing = false;


