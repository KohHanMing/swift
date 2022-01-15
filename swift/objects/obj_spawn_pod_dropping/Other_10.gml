/// @description Pod Landed

landed = true;

image_speed = 1; // Begin Dropping Animation
y = TARGET_Y; // Re-Align Pod

add_camera_shake(3, 1/4);

audio_play_sound_at(sfx_spawnpod_impact,x,y,0,global.falloff_ref_dist,global.falloff_max_dist,1,false,99);