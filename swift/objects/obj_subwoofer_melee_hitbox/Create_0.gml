/// @description Initiate player's projectile

// Inherit the parent event to set kill timer
event_inherited();

// Constants
DAMAGE = 10;
LIFETIME_SECONDS = 1;
image_speed = (image_number/sprite_get_speed(sprite_index))/(LIFETIME_SECONDS)
P_SPEED = 0;
P_ROTATES = false;

P_PIERCING = true;
KNOCKBACK_RANGE = 128;

add_camera_shake(2,LIFETIME_SECONDS);

// Skip Silhouette
remove_from_silhouette_array(id);
