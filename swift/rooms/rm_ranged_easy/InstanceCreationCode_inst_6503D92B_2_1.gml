// Spawn point 1
spawn[0,0] = 640;
spawn[0,1] = 160;
// Spawn point 2
spawn[1,0] = 416;
spawn[1,1] = 480;
// Spawn point 3
spawn[2,0] = 864;
spawn[2,1] = 480;
// Spawn point 4
spawn[3,0] = 416;
spawn[3,1] = 288;
// Spawn point 5
spawn[4,0] = 864;
spawn[4,1] = 288;

// Wave 1
ds_list_add(waves, [0, obj_basic_ranged, 0, 0]);

// Wave 2
ds_list_add(waves, [1, obj_basic_ranged, 1, 2 * room_speed]);
ds_list_add(waves, [1, obj_basic_ranged, 2, 2 * room_speed]);
ds_list_add(waves, [1, obj_basic_ranged, 3, 4 * room_speed]);
ds_list_add(waves, [1, obj_basic_ranged, 4, 4 * room_speed]);
