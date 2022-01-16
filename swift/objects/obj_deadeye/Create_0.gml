// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

ATTACK_COOLDOWN = 2 * room_speed; // Fires 1/2 time per second

// Energy usage
ENERGY_COST = 5;

SPR_WEAPON_IDLE_SIDE = spr_deadeye_idle_side;
SPR_WEAPON_FIRE_SIDE = spr_honey_badger_fire_side;

SPR_WEAPON_IDLE_FRONT = spr_honey_badger_idle_front;
SPR_WEAPON_FIRE_FRONT =spr_honey_badger_fire_front;

SPR_WEAPON_IDLE_BACK= spr_honey_badger_idle_back;
SPR_WEAPON_FIRE_BACK = spr_honey_badger_fire_back;

SPR_WEAPON_CROSSHAIR = spr_deadeye_crosshair;

WEAPON_PROJECTILE = obj_deadeye_projectile;
PROJECTILE_OFFSET_FORWARD = 30;
PROJECTILE_OFFSET_SIDE = 0;

powering_down = false;