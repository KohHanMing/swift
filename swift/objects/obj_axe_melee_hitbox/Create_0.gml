/// @description Initiate player's projectile

// Inherit the parent event to set kill timer
event_inherited();

// Constants
DAMAGE = 30;
LIFETIME_SECONDS = 1/10;
image_speed = (image_number/sprite_get_speed(sprite_index))/(LIFETIME_SECONDS)
P_SPEED = 0;
P_RANGE = 200;

P_PIERCING = false;
P_PIERCING_EXPIRE = false;
