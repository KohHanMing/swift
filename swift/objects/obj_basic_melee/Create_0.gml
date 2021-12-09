/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

AGGRO_RANGE = 250;
CURR_HEALTH = 2;
MAX_HEALTH = 2;
FALL_DAMAGE = MAX_HEALTH;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 5;
WANDER_RADIUS = 50;
WANDER_COOLDOWN_SECONDS = 3;

// Attack utilities
ATTACK_HIT_BOX = obj_basic_melee_hitbox;
ATTACK_RANGE = 50;
ATTACK_WINDUP_SECONDS = 0.833;
ATTACK_FOLLOW_THROUGH_SECONDS = 0.167;
ATTACK_COOLDOWN_SECONDS = 2;
ATTACK_OFFSET_FORWARD = 0;
ATTACK_OFFSET_SIDE = 0;
ATTACK_SFX = -1;

sector_number = irandom_range(0,7);

ATTACK_SFX = sfx_enemy_melee;
HIT_SFX = sfx_enemy_hit;