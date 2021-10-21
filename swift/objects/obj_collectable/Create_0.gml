/// @description Insert description here
// You can write your code in this editor

is_collectable = false; //CONDITION NEEDS TO BE INITALISED IN CHILD

//Determines how far from player item is before
//Starting to move to player
COLLECTION_RANGE = 64;

//When the item is close enough to player it 
//is considered collected and item will be deleted
DELETION_RANGE = 16;

//Spawn animation
has_finished_spawning = false; //spawn conditions under manual_collision_check
is_time_up = false;
SPAWN_DURATION = room_speed / 4
LIFETIME = room_speed * 3 //3 second before despawn
VECTOR_DIRECTION = irandom_range(0, 359);
VECTOR_SPEED = 5;

alarm[0] = SPAWN_DURATION// 0.5 sec to spawn
alarm[1] = LIFETIME;
direction = VECTOR_DIRECTION;
phy_set_vector(id, VECTOR_SPEED, VECTOR_DIRECTION);