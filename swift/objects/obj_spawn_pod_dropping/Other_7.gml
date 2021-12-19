/// @description Create Spawn Pod

var dummy = spawn_dummy(SPAWN_X, SPAWN_Y, CURR_ENEMY);
var pod = instance_create_layer(x,y,"Instances",obj_spawn_pod);
pod.DUMMY_ID = dummy;
instance_destroy();