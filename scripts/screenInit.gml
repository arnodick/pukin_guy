    // Creates a surface that the whole screen will be drawn on
global.screen = surface_create(view_wview[0], view_hview[0]);

    // If the screen surface can't be created because surfaces are not supported by the graphics card, then:
    // Destroy the oScreen object, reverting to the viewport method
if global.screen = -1
{
    instance_destroy();
}

    // Unused for some reason now?
    // screen_scale = 4;
