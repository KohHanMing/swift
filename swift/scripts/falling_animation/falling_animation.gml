function falling_animation(){
	falling_factor += 0.02; // For quadratic falling curve
	image_alpha = lerp(image_alpha,0,falling_factor);
	image_xscale = lerp(image_xscale,0,falling_factor);
	image_yscale = lerp(image_yscale,0,falling_factor);
}