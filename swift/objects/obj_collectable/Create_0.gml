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
has_finished_spawning = false;
SPAWN_DURATION = room_speed * 2
alarm[0] = SPAWN_DURATION// 0.5 sec to spawn
speed = 10;
direction = irandom_range(0, 359);