/// @description Initialize Variables

// Inherit Event
event_inherited();

// Event Enum
COLLECT_ITEM = 0;

is_collectable = false; // CONDITION NEEDS TO BE INITALISED IN CHILD

// Determines how far from player item is before
// Starting to move to player
COLLECTION_RANGE = 64;

// When the item is close enough to player it 
// is considered collected and item will be deleted
DELETION_RANGE = 16;

// Spawn Animation
has_finished_spawning = false; // Spawn conditions under manual_collision_check
// Despawned?
is_time_up = false;

SPAWN_DURATION = room_speed / 2
DESPAWN_DURATION = room_speed / 8
WARNING_TIME = room_speed // Start flashing 1 second before despawn
LIFETIME = room_speed * 3 // 3 second before despawn
VECTOR_DIRECTION = irandom_range(0, 359);
VECTOR_SPEED = 2.5;

// Initialize Alarms
alarm[0] = SPAWN_DURATION
alarm[1] = LIFETIME;
direction = VECTOR_DIRECTION;
phy_set_vector(id, VECTOR_SPEED, VECTOR_DIRECTION);

// Make this object not rotatable
phy_rotation = 0;
phy_fixed_rotation = true;

// Push Self to Silhouette Array
add_to_silhouette_array(id);