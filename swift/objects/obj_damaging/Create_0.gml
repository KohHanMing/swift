/// @description Initiate constants before inheriting timer

// Declare default constants

DAMAGE = 1;
LIFETIME_SECONDS = 0.1;
P_SPEED = 50;
P_RANGE = 200;
P_MASS = 0.1;

//Pierce
P_PIERCING = false;
P_PIERCING_EXPIRE = true;
p_hit_list = ds_list_create();
p_piercing_expired = false;
expired = false;

alarm[0] = 1;

// Push Self to Silhouette Array
array_push(obj_silhouette.silhouette_array, id);