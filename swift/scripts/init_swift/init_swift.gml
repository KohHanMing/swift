// Runs when the app is first started.

function init_swift(){
	cursor_sprite = spr_crosshair; // Initialize Crosshair
	instance_create_layer(0,0,"Instances",obj_soundtrack_manager); // Create Soundtrack Manager
}