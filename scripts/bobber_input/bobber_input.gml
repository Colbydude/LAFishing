/// @description Controls for the bobber object.

// Tug towards Link.
// I dunno why the controls are this way in LA.
if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X"))) {
    obj_link.sprite_index = spr_link_tug;
    phy_speed_x = 0.25;
    phy_speed_y = 0;

    // Pull back if we're in the little hole on the right.
    if (x > 128) {
        physics_apply_force(x, y, -10, -8);
    }
    else {
        physics_apply_force(x, y, 10, -8);
    }
}

// Reel straight up.
if (can_reel) {
    if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
        can_reel = false;
        obj_link.sprite_index = spr_link_reel;
        phy_speed_x = 0;
        phy_speed_y = 0;

        physics_apply_force(x, y, 0, -10);

        alarm[0] = room_speed * 1;
    }
}