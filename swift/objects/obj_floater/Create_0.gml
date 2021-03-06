/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

AGGRO_RANGE = 800;
CURR_HEALTH = 40;
MAX_HEALTH = 40;
RETREAT_RANGE = 128;
SPEED_PX_PER_FRAME = 2;

flying = true;

// Attack utilities
ATTACK_HIT_BOX = obj_floater_projectile;
ATTACK_RANGE = 192;
ATTACK_COOLDOWN_SECONDS = 2;
ATTACK_OFFSET_FORWARD = 10;
ATTACK_OFFSET_SIDE = 0;
ATTACK_SFX = sfx_enemy_ranged;

HIT_SFX = sfx_enemy_hit;
