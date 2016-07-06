    // If the screen surface is destroyed (b/c of alt+enter for example) then:
    // Re-create the screen surface
if !surface_exists(global.screen)
{
    global.screen = surface_create(view_wview[0], view_hview[0]);
}

    // If the screen surface does exist, then:
    // Clear the screen of last step's images, 
else
{
    surface_set_target(global.screen);
    // Removing draw_clear makes this into a painting game!
    draw_clear(0);
    //Don't know why any of this stuff was here
    //draw_set_blend_mode_ext(bm_src_alpha, bm_zero);
    //draw_surface_stretched(global.screen, view_xview[0], view_yview[0], view_wview[0]*screen_scale, view_hview[0]*screen_scale);
    //draw_set_blend_mode(bm_normal);
    surface_reset_target();
}
