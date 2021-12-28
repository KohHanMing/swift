// Spawn point 1
spawn[0,0] = 640;
spawn[0,1] = 192;
// Spawn point 2
spawn[1,0] = 768;
spawn[1,1] = 224;
// Spawn point 3
spawn[2,0] = 768;
spawn[2,1] = 480;
// Spawn point 4
spawn[3,0] = 512;
spawn[3,1] = 480;
// Spawn point 5
spawn[4,0] = 512;
spawn[4,1] = 224;

// Wave 1
ds_list_add(waves, [0, obj_floater, 0, 0]);

// Wave 2
ds_list_add(waves, [1, obj_floater, 1, 2 * room_speed]);
ds_list_add(waves, [1, obj_floater, 2, 2 * room_speed]);
ds_list_add(waves, [1, obj_floater, 3, 4 * room_speed]);
ds_list_add(waves, [1, obj_floater, 4, 4 * room_speed]);
