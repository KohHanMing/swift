/// @description Initiate player's projectile

// Inherit the parent event to set kill timer
event_inherited();

// Constants
DAMAGE = 1;
LIFETIME_SECONDS = 1/3;
P_SPEED = 0;
P_RANGE = 200;

OFFSET_X = -1;
OFFSET_Y = -1;


show_debug_message("X actual: " + string(OFFSET_X));
show_debug_message("Y actual: " + string(OFFSET_Y));
show_debug_message("instance " + string(id));
