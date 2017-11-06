// Bind the fish to the bobber.
if (obj_bobber_physics.state != States.BobberBit) {
    obj_bobber_physics.state = States.BobberBit;
}

phy_position_x = obj_bobber_physics.phy_position_x;
phy_position_y = obj_bobber_physics.phy_position_y - 8;

image_speed = 0.5;

if (obj_bobber_physics.phy_speed_x >= 0) {
    sprite_index = spr_bite_right;
}
else {
    sprite_index = spr_bite_left;
}