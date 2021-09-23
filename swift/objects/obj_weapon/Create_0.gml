/// @description Insert description here
// You can write your code in this editor

//Weapon pivot point differs from player centre. Offset accordingly
X_OFFSET_FROM_PLAYER_CENTRE = 0; 
Y_OFFSET_FROM_PLAYER_CENTRE = 0; 
RATE_OF_ATTACK = room_speed //Attacks 1 time per second

//Weapon presets 
SPR_WEAPON_LEFT_IDLE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_LEFT_FIRE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_RIGHT_IDLE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_RIGHT_FIRE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON

//Projectile presets
WEAPON_PROJECTILE = obj_projectile; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 0; //Forward is Positive
PROJECTILE_OFFSET_SIDE = 0; //Right is Positive

firing = false;


