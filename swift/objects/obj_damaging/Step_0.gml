/// @description Manual Breakable Check

// Manual Breakable Collision Check
	var _inst = instance_place(x, y, obj_breakable);
	if _inst != noone {
		manual_breakable_collision(_inst);
	}
