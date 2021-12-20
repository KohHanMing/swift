/// @description Initiate slime melee hitbox

// Inherit the parent event to set kill timer
event_inherited();

// Constants
DAMAGE = 10;
LIFETIME_SECONDS = 1/5;
P_PIERCING = true;

image_speed = (image_number/sprite_get_speed(sprite_index))/(LIFETIME_SECONDS)