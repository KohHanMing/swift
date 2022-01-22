event_inherited(); // Inherit Event

if obj_game.game_paused exit;

with(obj_damageable) {
	if distance_to_object(other) > 128 continue; // Skip if distance is large.
	knockback_speed = min(2/distance_to_object(other),2); // Knockback is Reciprocal to distance, with maximum of 1.
	apply_vector(id,knockback_speed,point_direction(other.x,other.y,x,y)); // Cause Knockback.
}