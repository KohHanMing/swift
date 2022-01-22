/// @description Initialize enemy
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Alarm Enum
DISABLE_ALARM = -1;
BEHAVIOUR_ALARM = 0;
ATTACK_ALARM = 1;
WANDER_ALARM = 2;
IDLE_SFX_ALARM = 4;

// Event Enum
END_FALL = 1;

// Constants
AGGRO_RANGE = 0;
CURR_HEALTH = 0;
MAX_HEALTH = 0;
FALL_TIME = room_speed;
PLAYER = obj_player;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 0;
WANDER_RADIUS = 0;
WANDER_COOLDOWN_SECONDS = 0;
DEATH_SFX = sfx_enemy_death;


// Attack utilities
// Attack state enums
ATTACK_CAN_ATTACK = 0;
ATTACK_WINDING_UP = 1;
ATTACK_FOLLOW_THROUGH = 2;
ATTACK_ON_COOLDOWN = 3;

ATTACK_RANGE = 0;
ATTACK_WINDUP_SECONDS = 0;
ATTACK_FOLLOW_THROUGH_SECONDS = 0;
ATTACK_COOLDOWN_SECONDS = 0;
ATTACK_OFFSET_FORWARD = 0;
ATTACK_OFFSET_SIDE = 0;
ATTACK_SFX = -1;

attack_state = ATTACK_CAN_ATTACK;
attack_distance = 0;
attack_direction = 0;

// Sprite center
sprite_center = find_sprite_center(id)
sprite_x = sprite_center[0]
sprite_y = sprite_center[1]

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
falling_time = 0;

phy_fixed_rotation = true;

curr_idle_sfx = -1;
