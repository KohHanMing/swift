/// @description Initiate slime projectile
// You can write your code in this editor

// Constants
DAMAGE = 1;
LIFETIME_SECONDS = 2;
P_SPEED = 5;
P_RANGE = 200;

// Inherit the parent event to set kill timer
event_inherited();

// Store its original location
spawnX = x;
spawnY = y;
