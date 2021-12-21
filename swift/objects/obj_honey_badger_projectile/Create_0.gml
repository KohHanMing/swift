/// @description Initiate player's projectile

// Inherit the parent event to initialize constants to default
event_inherited();

// Constants
DAMAGE = 1;
LIFETIME_SECONDS = 2;
P_SPEED = 10;
P_RANGE = 200;
P_MASS = 0.5;

// Create Light
create_following_light(id,$FF00FF00,32);