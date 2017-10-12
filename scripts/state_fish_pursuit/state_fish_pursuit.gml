image_speed = 0.5;
sprite_index = spr_mouth_open;

// Move towards bobber depending on which way it is.
if (x < obj_bobber.x) {
    if (point_distance(x, y, obj_bobber.x - 16, obj_bobber.y - 8) > 1) {
        physics_move_towards_point(obj_bobber.x - 16, obj_bobber.y - 8, 1);
    }
    else {
        phy_speed_x = 0;
        phy_speed_y = 0;
    }
}
else {
    if (point_distance(x, y, obj_bobber.x + 16, obj_bobber.y - 8) > 1) {
        physics_move_towards_point(obj_bobber.x + 16, obj_bobber.y - 8, 1);
    }
    else {
        phy_speed_x = 0;
        phy_speed_y = 0;
    }
}

if (point_distance(x, y, obj_bobber.x + 16, obj_bobber.y - 8) < 2) {
    state = state_fish_biting;
    obj_bobber.state = state_bobber_bit;
}

if (!point_in_cone_of_sight(obj_bobber.x, obj_bobber.y) && obj_bobber.pursuer == self) {
    state = state_fish_returning;
    obj_bobber.pursuer = null;
}