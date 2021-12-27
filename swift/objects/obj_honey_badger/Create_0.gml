// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

ATTACK_COOLDOWN = room_speed/4; // Fires 4 times per second

// Energy usage
ENERGY_COST = 1;

SPR_WEAPON_IDLE_SIDE = spr_honey_badger_idle_side;
SPR_WEAPON_FIRE_SIDE = spr_honey_badger_fire_side;

SPR_WEAPON_IDLE_FRONT = spr_honey_badger_idle_front;
SPR_WEAPON_FIRE_FRONT =spr_honey_badger_fire_front;

SPR_WEAPON_IDLE_BACK= spr_honey_badger_idle_back;
SPR_WEAPON_FIRE_BACK = spr_honey_badger_fire_back;

WEAPON_PROJECTILE = obj_honey_badger_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;

powering_down = false;