/// @description Initiate player's projectile

// Inherit the parent event to initialize constants to default
event_inherited();

// Constants
DAMAGE = 3;
LIFETIME_SECONDS = 2;
P_SPEED = 20;
P_RANGE = 400;
P_MASS = 0.5;

// Create Light
create_following_light(id,$FFFFFF00,8);