/// @description Insert description here
// You can write your code in this editor
moving = false;
curr_dir = dir;

if (keyboard_check(ord("A")) and !keyboard_check(ord("D"))) {
	moving = true;
	if (curr_dir != 180) {
		if (dir < 180) {
			dir += turn_spd;
		} else if (dir > 180) {
			dir -= turn_spd;
		}
	}
}

if (keyboard_check(ord("D")) and !keyboard_check(ord("A"))) {
	moving = true;
	if (curr_dir != 0) {
		if (dir > 0 and dir < 180) {
			dir -= turn_spd;
		} else if (dir >= 180) {
			dir += turn_spd;
		}
	}
}

if (keyboard_check(ord("W")) and !keyboard_check(ord("S"))) {
	moving = true;
	if (curr_dir != 90) {
		if (dir > 90 and dir < 270) {
			dir -= turn_spd;
		} else if (dir < 90 or dir >= 270) {
			dir += turn_spd;
		}
	}
}

if (keyboard_check(ord("S")) and !keyboard_check(ord("W"))) {
	moving = true;
	if (curr_dir != 270) {
		if (dir < 270 and dir >= 90) {
			dir += turn_spd;
		} else if (dir > 270 or dir < 90) {
			dir -= turn_spd;
		}
	}
}

if (dir < 0) {
	dir += 360
}
dir %= 360

dashing = keyboard_check_pressed(vk_space);

if (moving) {
	if (dashing) {
		hspd = DASH_SPEED_PER_PX*cos(dir*pi/180);
		vspd = -DASH_SPEED_PER_PX*sin(dir*pi/180);
	} else {
		hspd = MOVEMENT_SPEED_PER_PX*cos(dir*pi/180);
		vspd = -MOVEMENT_SPEED_PER_PX*sin(dir*pi/180);
	}
} else {
	hspd = 0
	vspd = 0
}

x += hspd;
y += vspd;