///@function wall_collision(_object)
///@param {index} _object

//this function must be run after all other movement code have been resolved
//obj_wall should be the parent class of all other wall types
function wall_collision (_object) {
	hspd = _object.speed*cos(_object.direction*pi/180);
	vspd = _object.speed*sin(_object.direction*pi/180);
	collided = false;
	
	//horizontal direction resolution
	if (place_meeting(_object.x+hspd, _object.y, obj_wall)) {
		while (!place_meeting(_object.x+sign(hspd), _object.y, obj_wall)) {
			_object.x += sign(hspd);
		}
		hspd = 0;
		collided = true;
	}
	
	//vertical direction resolution
	 if (place_meeting(_object.x, _object.y-vspd, obj_wall)) {
		 while (!place_meeting(_object.x, _object.y-sign(vspd), obj_wall)) {
			 _object.y -= sign(vspd);
		 }
		 vspd = 0;
		 collided = true;
	 }
	 
	 //diagonal only direction resolution (rare corner to corner case)
	 if (!collided and place_meeting(_object.x+hspd, _object.y-vspd, obj_wall)) {
		 while (!place_meeting(_object.x+sign(hspd), _object.y-sign(vspd), obj_wall)) {
			 _object.x += sign(hspd);
			 _object.y -= sign(vspd);
		 }
		 hspd = 0;
		 vspd = 0;
		 collided = true;
	 }
	 
	 //recalculate object speed and direction if collided with wall
	 if (collided) {
		 friction = 0.5;
		 _object.speed = sqrt(sqr(hspd) + sqr(vspd));
		 _object.direction = arctan2(vspd, hspd)*180/pi;
	 }
	 return collided; //can be used to trigger on collision effects e.g. for projectiles
}