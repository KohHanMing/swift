is_level_complete = true;

// Spawn point 1
spawn[0,0] = 542;
spawn[0,1] = 575;
// Spawn point 2
spawn[1,0] = 703;
spawn[1,1] = 287;
// Spawn point 3
spawn[2,0] = 400;
spawn[2,1] = 205;
// Spawn point 4
spawn[3,0] = 400;
spawn[3,1] = 655;
// Spawn point 5
spawn[4,0] = 848;
spawn[4,1] = 655;
// Spawn point 6
spawn[5,0] = 848;
spawn[5,1] = 205;

// Wave 1
ds_list_add(waves, [0, obj_ranged_slime, 0, 0]);
ds_list_add(waves, [0, obj_ranged_slime, 1, 0]);
ds_list_add(waves, [0, obj_ranged_slime, 0, 2 * room_speed]);
ds_list_add(waves, [0, obj_ranged_slime, 1, 2 * room_speed]);

// Wave 2
ds_list_add(waves, [1, obj_ranged_slime, 4, 0]);
ds_list_add(waves, [1, obj_ranged_slime, 5, 0]);
ds_list_add(waves, [1, obj_ranged_slime, 4, 1 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 5, 1 * room_speed]);

ds_list_add(waves, [1, obj_ranged_slime, 2, 5 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 2, 5 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 3, 10 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 3, 10 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 4, 15 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 4, 15 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 5, 20 * room_speed]);
ds_list_add(waves, [1, obj_ranged_slime, 5, 20 * room_speed]);
