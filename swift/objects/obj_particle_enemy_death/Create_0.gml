apply_vector(id,random_range(0,1),random_range(0,360));
phy_angular_velocity = random_range(1,2);
phy_linear_damping = 5;

SCALE = random_range(0.5,1.5);
image_xscale = SCALE;
image_yscale = SCALE;

fading=false;
alarm[0] = room_speed*random_range(1,5)