// @description Pod Landed

landed = true;

image_speed = 1; // Begin Dropping Animation
y = TARGET_Y; // Re-Align Pod

obj_camera.shaking = true;
obj_camera.alarm[0] = room_speed/4;

audio_play_sound_at(sfx_spawnpod_impact,x,y,0,falloff_ref_dist,falloff_max_dist,1,false,99);