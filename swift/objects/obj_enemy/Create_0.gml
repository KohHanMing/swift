/// @description Initialize enemy
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Alarm Enum
DISABLE_ALARM = -1;
MOVEMENT_ALARM = 0;
ATTACK_ALARM = 1;

FALLING_ALARM = 3;
IDLE_SFX_ALARM = 4;

// Constants
AGGRO_RANGE = 0;
CURR_HEALTH = 0;
MAX_HEALTH = 0;
FALL_DAMAGE = 0;
PLAYER = obj_player;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 0;
DEATH_SFX = sfx_enemy_death;


// Attack utilities
// Attack state enums
ATTACK_CAN_ATTACK = 0;
ATTACK_WINDING_UP = 1;
ATTACK_FOLLOW_THROUGH = 2;
ATTACK_ON_COOLDOWN = 3;

attack_state = ATTACK_CAN_ATTACK;
ATTACK_RANGE = 0;
ATTACK_WINDUP_SECONDS = 0;
ATTACK_FOLLOW_THROUGH_SECONDS = 0;
ATTACK_COOLDOWN_SECONDS = 0;
ATTACK_OFFSET_FORWARD = 0;
ATTACK_OFFSET_SIDE = 0;
ATTACK_SFX = -1;
attack_distance = 0;
attack_direction = 0;

// Sprite center
sprite_center = find_sprite_center(id)
sprite_x = sprite_center[0]
sprite_y = sprite_center[1]

// Boolean flags
flying = false;
has_line_of_sight = false;

// Blockers, to be used for status effects
can_attack = true;
can_move = true;

// Navigation
path = path_add();
dist_to_player = 0;
dir_to_player = 0;
res_x = 0; // Falling respawn point
res_y = 0;

phy_fixed_rotation = true;

curr_idle_sfx = -1;

alarm[MOVEMENT_ALARM] = 1; // Start managing behaviour from spawn. 
BEHAVIOUR_UPDATE_SECONDS = room_speed / 4;
