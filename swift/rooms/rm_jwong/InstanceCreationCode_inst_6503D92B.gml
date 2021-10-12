// Spawn point 1
spawn[0,0] = 415;
spawn[0,1] = 224;
// Spawn point 2
spawn[1,0] = 736;
spawn[1,1] = 224;
// Spawn point 3
spawn[2,0] = 415;
spawn[2,1] = 545;
// Spawn point 4
spawn[3,0] = 736;
spawn[3,1] = 545;
// Spawn point 5
spawn[4,0] = 576;
spawn[4,1] = 382;

// Wave 1
ds_list_add(waves, [0, obj_melee_slime, 1, 0]);
ds_list_add(waves, [0, obj_melee_slime, 1, room_speed]);
ds_list_add(waves, [0, obj_melee_slime, 3, 0]);
ds_list_add(waves, [0, obj_melee_slime, 3, room_speed]);

// Wave 2
ds_list_add(waves, [1, obj_melee_slime, 4, 1 * room_speed]);
ds_list_add(waves, [1, obj_melee_slime, 4, 2 * room_speed]);
ds_list_add(waves, [1, obj_melee_slime, 4, 3 * room_speed]);
ds_list_add(waves, [1, obj_melee_slime, 4, 4 * room_speed]);
ds_list_add(waves, [1, obj_melee_slime, 4, 5 * room_speed]);

// Wave 3
ds_list_add(waves, [2, obj_melee_slime, 0, 1 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 1, 2 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 2, 3 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 3, 4 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 0, 5 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 1, 6 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 2, 7 * room_speed]);
ds_list_add(waves, [2, obj_melee_slime, 3, 8 * room_speed]);
