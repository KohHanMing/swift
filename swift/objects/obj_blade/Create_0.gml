/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited();

//Weapon pivot point differs from player centre. Offset accordingly
Y_OFFSET_FROM_PLAYER_CENTRE = -14; 
ATTACK_COOLDOWN = room_speed //Attacks 1 time per second
ROTATION_OFFSET = 45;

//Weapon presets 
SPR_WEAPON_IDLE = spr_blade_idle;
SPR_WEAPON_FIRE = spr_blade_fire;

SFX_WEAPON = sfx_melee_default;

//Projectile presets
WEAPON_PROJECTILE = obj_weapon_melee_melee_hitbox; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 20;