// Inherit from parent
event_inherited();

WEAPON_NAME = "Honey Pot";

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

ATTACK_COOLDOWN = room_speed; // Fires 1 times per second

// Energy usage
ENERGY_COST = 2;

SPR_WEAPON_IDLE_SIDE = spr_honey_pot_idle_side;
SPR_WEAPON_FIRE_SIDE = spr_honey_badger_fire_side;

SPR_WEAPON_IDLE_FRONT = spr_honey_badger_idle_front;
SPR_WEAPON_FIRE_FRONT =spr_honey_badger_fire_front;

SPR_WEAPON_IDLE_BACK= spr_honey_badger_idle_back;
SPR_WEAPON_FIRE_BACK = spr_honey_badger_fire_back;

SPR_WEAPON_CROSSHAIR = spr_honey_pot_crosshair;
SPR_WEAPON_DISPLAY = spr_honey_pot_idle_side;

WEAPON_PROJECTILE = obj_honey_pot_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;

powering_down = false;