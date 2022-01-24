/// @description Initiate slime projectile

// Inherit the parent event to initialize constants to default
event_inherited();

// Constants
DAMAGE = 5;
LIFETIME_SECONDS = 2;
P_SPEED = 5;
P_RANGE = 200;

// Create Light
create_following_light(id,$FF6666FF,16);
