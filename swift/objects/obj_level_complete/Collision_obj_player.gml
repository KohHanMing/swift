/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sfx_portal,99,false);

if (has_tutorial) {
	go_to_next_tutorial();
} else {
	go_to_next_level();
}
