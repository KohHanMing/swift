/// @description Set HEALTH of the Damageable, initialize damage_tint_time

// Inherit Event
event_inherited();

//Initialization, all Damageables must set their HEALTH in Create
CURR_HEALTH = 0;
MAX_HEALTH = 0;

damage_tint_time = 0;
damage_tint_scale = 0;

//Play this sfx on getting hit
//-1 if object has no hit sfx
HIT_SFX = -1;
curr_idle_sfx = -1;

// Push Self to Silhouette Array
add_to_silhouette_array(id);