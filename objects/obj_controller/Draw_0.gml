/// @description Draw points.
draw_set_font(global.number_font);
draw_set_halign(fa_right);

draw_text(104, 136, string(global.points));

if (global.debug && instance_exists(obj_bobber_physics)) {
    draw_set_halign(fa_left);
    draw_set_font(font_debug);
    draw_text(5, 5, string(obj_bobber_physics.state));
}