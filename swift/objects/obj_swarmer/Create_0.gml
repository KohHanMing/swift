/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

AGGRO_RANGE = 800;
CURR_HEALTH = 40;
MAX_HEALTH = 40;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 5;

// Attack utilities
ATTACK_HIT_BOX = obj_swarmer_hitbox;
ATTACK_RANGE = 48;
ATTACK_WINDUP_SECONDS = 0.833;
ATTACK_FOLLOW_THROUGH_SECONDS = 0.167;
ATTACK_COOLDOWN_SECONDS = 2;
ATTACK_OFFSET_FORWARD = 0;
ATTACK_OFFSET_SIDE = 0;
ATTACK_SFX = sfx_enemy_melee;

HIT_SFX = sfx_enemy_hit;

sector_number = irandom_range(0,7);
