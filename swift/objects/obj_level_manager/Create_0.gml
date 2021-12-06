 /// @description Insert description here
// You can write your code in this editor

level_sequence_list = ds_list_create();
current_level = 0;

//DONT FORGET TO ADD THE LEVEL_COMPLETE OBJECT IN THE LEVEL
current_level_complete = pointer_null; 

//ALWAYS AT THE START OF THE LIST
ds_list_add(level_sequence_list, rm_init);

//Insert or rearrange levels in the following code block

// ------------- BLOCK STARTS ------------------

ds_list_add(level_sequence_list, rm_tutorial_3_enemy);
ds_list_add(level_sequence_list, rm_melee_easy);
ds_list_add(level_sequence_list, rm_ranged_easy);
ds_list_add(level_sequence_list, rm_melee_basic);
ds_list_add(level_sequence_list, rm_ranged_basic);
ds_list_add(level_sequence_list, rm_2types_slimes);

// ------------- BLOCK ENDS ------------------

//ALWAYS AT THE END OF THE LIST
ds_list_add(level_sequence_list, rm_win);
