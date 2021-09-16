/// @description Initialize enemy
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Alarm Enum
DISABLE_ALARM = -1;
BEHAVIOUR_ALARM = 0;
ATTACK_ALARM = 1;
WANDER_ALARM = 2;

// Constants
AGGRO_RANGE = 0;
ATTACK_RANGE = 0;
ATTACK_DELAY_SECONDS = 0;
HEALTH = 0;
PLAYER = obj_player;
RETREAT_RANGE = 0;
SPEED_PX_PER_FRAME = 0;
WANDER_RADIUS = 0;
WANDER_COOLDOWN_SECONDS = 0;

// Boolean flags
attacking = false;
canAttack = true;
wandering = false;

// Navigation
path = path_add();
alarm[BEHAVIOUR_ALARM] = 1; // Start managing bihaviour from spawn. 
wander_anchor_x = x; // Wander around spawn point
wander_anchor_y = y;
