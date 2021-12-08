/// @description Insert description here
// You can write your code in this editor

//Weapon pivot point differs from player centre. Offset accordingly
X_OFFSET_FROM_PLAYER_CENTRE = 0; 
Y_OFFSET_FROM_PLAYER_CENTRE = 0; 
ATTACK_COOLDOWN = room_speed //Attacks 1 time per second

//Energy usage
ENERGY_COST = 0; // Default is 0

//Weapon presets 
SPR_WEAPON_IDLE_SIDE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_FIRE_SIDE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SFX_WEAPON = -1;

//Projectile presets
WEAPON_PROJECTILE = obj_player_projectile; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 0; //Forward is Positive
PROJECTILE_OFFSET_SIDE = 0; //Right is Positive

firing = false;

weapon_angle = point_direction(x, y, mouse_x, mouse_y);

