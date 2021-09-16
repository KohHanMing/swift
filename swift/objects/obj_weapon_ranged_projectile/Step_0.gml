distance_moved += sqrt(phy_speed_x*phy_speed_x + phy_speed_y*phy_speed_y)
lifetime += 1;

if distance_moved >= P_RANGE instance_destroy();
if lifetime >= P_LIFETIME instance_destroy();

phy_speed_x *= P_ACCELERATION;
phy_speed_y *= P_ACCELERATION;