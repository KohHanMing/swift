 // Spawn point 1
spawn[0,0] = 671;
spawn[0,1] = 191;
// Spawn point 2
spawn[1,0] = 510;
spawn[1,1] = 350;
// Spawn point 3
spawn[2,0] = 410;
spawn[2,1] = 450;
// Spawn point 4
spawn[3,0] = 350;
spawn[3,1] = 350;
// Spawn point 5
spawn[4,0] = 817;
spawn[4,1] = 175;
// Spawn point 6
spawn[5,0] = 1169;
spawn[5,1] = 175;
// Spawn point 7
spawn[6,0] = 817;
spawn[6,1] = 625;
// Spawn point 8
spawn[7,0] = 1169;
spawn[7,1] = 625;

// Wave 1
ds_list_add(waves, [0, obj_swarmer, 0, 0]);

// Wave 2
ds_list_add(waves, [1, obj_swarmer, 1, 0]);
ds_list_add(waves, [1, obj_swarmer, 2, 0]);
ds_list_add(waves, [1, obj_swarmer, 3, 0]);
ds_list_add(waves, [1, obj_swarmer, 3, 2 * room_speed]);

// Wave 3
ds_list_add(waves, [2, obj_swarmer, 4, 0]);
ds_list_add(waves, [2, obj_swarmer, 5, 0]);
ds_list_add(waves, [2, obj_swarmer, 6, 0]);
ds_list_add(waves, [2, obj_swarmer, 7, 0]);
