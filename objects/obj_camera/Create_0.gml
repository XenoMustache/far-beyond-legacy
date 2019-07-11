/// @desc Initialize Camera
// Initialize views and camera
view_enabled = true;
view_set_visible(0, true);
view_default_width = global.display_width;
view_default_height = global.display_height;
camera_target = id;
// Manage game window
window_scale = 1;
window_set_size(view_default_width * window_scale, view_default_height * window_scale);
display_set_gui_size(view_default_width, view_default_height);
alarm[0] = 1;