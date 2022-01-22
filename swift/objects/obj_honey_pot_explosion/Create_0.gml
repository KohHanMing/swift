/// @description Initiate player's projectile

// Inherit the parent event to initialize constants to default
event_inherited();

// Constants
DAMAGE = 10;
LIFETIME_SECONDS = 0;
P_SPEED = 0;
P_RANGE = 0;
P_MASS = 0.5;
P_PIERCING = true;

// Flash
create_following_light(id,$FF00FFFF,16);