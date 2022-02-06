/// @description Forcibly Remove Powering Down Sprite

// This is necessary because FPS is fractional when scaled.
if powering_down {
	powering_down = false;
	sprite_action = "idle";
}
