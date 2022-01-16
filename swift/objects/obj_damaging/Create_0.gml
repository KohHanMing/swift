/// @description Initiate constants before inheriting timer

// Inherit Event
event_inherited();

// Event Enum
COLLISION = 0;

// Declare default constants

DAMAGE = 1;
LIFETIME_SECONDS = 0.1;
P_SPEED = 50;
P_RANGE = 200;
P_MASS = 0.1;
P_ROTATES = true;

// Pierce
P_PIERCING = false;
P_PIERCING_EXPIRE = true;
p_hit_list = ds_list_create();
p_piercing_expired = false;
expired = false;

// Push Self to Silhouette Array
add_to_silhouette_array(id);
