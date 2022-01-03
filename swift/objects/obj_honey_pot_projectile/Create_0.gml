/// @description Initiate player's projectile

// Inherit the parent event to initialize constants to default
event_inherited();

// Constants
DAMAGE = 0;
LIFETIME_SECONDS = 2;
P_SPEED = 10;
P_RANGE = 100;
P_MASS = 0.5;

// Create Light
create_following_light(id,$FF00FFFF,8);