/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

AGGRO_RANGE = 250;
ATTACK_DELAY_SECONDS = 2;
ATTACK_HIT_BOX = obj_basic_melee_hitbox;
ATTACK_RANGE = 50;
CURR_HEALTH = 2;
MAX_HEALTH = 2;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 5;
WANDER_RADIUS = 50;
WANDER_COOLDOWN_SECONDS = 3;

sector_number = irandom_range(0,7);

ATTACK_SFX = sfx_enemy_melee;
HIT_SFX = sfx_enemy_hit;