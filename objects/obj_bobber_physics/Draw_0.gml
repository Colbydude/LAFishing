debug_draw_physics();

// Being pulled up.
if (phy_speed_y < 0 && phy_speed_x < 0.25) {
    draw_sprite(sprite_index, 2, x, y);
}
// Being pulled towards Link.
else if (phy_speed_y < 0 && phy_speed_x > 0.25) {
    draw_sprite(sprite_index, 1, x, y);
}
// Falling / Default.
else {
    draw_sprite(sprite_index, 0, x, y);
}
