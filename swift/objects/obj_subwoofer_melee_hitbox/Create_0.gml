/// @description Initiate player's projectile

// Inherit the parent event to set kill timer
event_inherited();

// Constants
DAMAGE = 1;
LIFETIME_SECONDS = 1;
image_speed = (image_number/sprite_get_speed(sprite_index))/(LIFETIME_SECONDS)
P_SPEED = 0;
P_ROTATES = false;

P_PIERCING = true;
KNOCKBACK_RANGE = 128;

// Skip Silhouette
remove_from_silhouette_array(id);