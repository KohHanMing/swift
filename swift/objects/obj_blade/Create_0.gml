/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

//Weapon pivot point differs from player centre. Offset accordingly
Y_OFFSET_FROM_PLAYER_CENTRE = -14; 
RATE_OF_ATTACK = room_speed //Attacks 1 time per second
ROTATION_OFFSET = 45;

//Weapon presets 
SPR_WEAPON_IDLE_SIDE = spr_blade_idle; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_FIRE_SIDE = spr_blade_fire; //MUST INITIALISE IN CHILD WEAPON

SPR_WEAPON_IDLE_FRONT = spr_blade_idle; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_FIRE_FRONT = spr_blade_fire; //MUST INITIALISE IN CHILD WEAPON

//Projectile presets
WEAPON_PROJECTILE = obj_blade_melee_hitbox; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 20;