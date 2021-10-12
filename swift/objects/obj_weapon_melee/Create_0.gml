/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

//Weapon pivot point differs from player centre. Offset accordingly
Y_OFFSET_FROM_PLAYER_CENTRE = -14; 
RATE_OF_ATTACK = room_speed //Attacks 1 time per second

//Weapon presets 
SPR_WEAPON_LEFT_IDLE = spr_weapon_melee_idle; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_LEFT_FIRE = spr_weapon_melee_fire; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_RIGHT_IDLE = spr_weapon_melee_idle; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_RIGHT_FIRE = spr_weapon_melee_fire; //MUST INITIALISE IN CHILD WEAPON
SFX_WEAPON = sfx_melee_default;

//Projectile presets
WEAPON_PROJECTILE = obj_weapon_melee_projectile; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 20;