/// @description Draw fish.
debug_draw_physics();
debug_draw_cone_of_sight();

image_xscale = (facing == 0) ? -1 : 1;

draw_self();

if (global.debug) {
    draw_set_halign(fa_center);
    draw_set_font(font_debug);
    draw_text(x, y - 10, string(state));
}