/// @description Initialize enemy
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Alarm Enum
DISABLE_ALARM = -1;
BEHAVIOUR_ALARM = 0;
ATTACK_ALARM = 1;
WANDER_ALARM = 2;
FALLING_ALARM = 3;
IDLE_SFX_ALARM = 4;

// Constants
AGGRO_RANGE = 0;
ATTACK_RANGE = 0;
ATTACK_DELAY_SECONDS = 0;
ATTACK_OFFSET_FORWARD = 0;
ATTACK_OFFSET_SIDE = 0;
CURR_HEALTH = 0;
MAX_HEALTH = 0;
PLAYER = obj_player;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 0;
WANDER_RADIUS = 0;
WANDER_COOLDOWN_SECONDS = 0;
DEATH_SFX = sfx_enemy_death;
ATTACK_SFX = -1;

// Sprite center
sprite_x = find_sprite_center(id)[0]
sprite_y = find_sprite_center(id)[1]

// Boolean flags
canAttack = true;
wandering = false;
flying = false;
has_line_of_sight = false;

// Navigation
path = path_add();
alarm[BEHAVIOUR_ALARM] = 1; // Start managing bihaviour from spawn. 
wander_anchor_x = sprite_x; // Wander around spawn point
wander_anchor_y = sprite_y;
node_index = 1;
dist_to_player = 0;
dir_to_player = 0;
res_x = 0;
res_y = 0;

phy_fixed_rotation = true;

curr_idle_sfx = -1;
