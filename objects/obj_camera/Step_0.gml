/// @desc Update
// Manage camera
//if (!instance_exists(camera_target)) exit;
//camera_width = camera_get_view_width(view_camera[0]);
//camera_height = camera_get_view_height(view_camera[0]);
//camera_scale = camera_width / view_get_wport(0);
//// Camera speed
//x = lerp(x, camera_target.x, 0.1);
//y = lerp(y, camera_target.y - 8, 0.1);
//x = round_n(x, camera_scale);
//x = round_n(x, camera_scale);
//x = clamp(x, camera_width / 2, room_width - camera_width / 2);
//y = clamp(y, camera_height / 2, room_height - camera_height / 2);
//// Camera resolution
//camera_set_view_pos(view_camera[0], x - camera_width / 2, y - camera_height / 2);
//view_set_wport(0, global.display_width);
//view_set_hport(0, global.display_height);
//// Window fallback
//if (window_has_focus()) surface_resize(application_surface, global.display_width, global.display_height);
//display_set_gui_size(global.display_width, global.display_height);
if(keyboard_check_pressed(ord("Z")))
{
  zoom++;
  
  if(zoom>max_zoom)
    zoom=1;
  
  window_set_size(ideal_width*zoom,ideal_height*zoom);
  display_set_gui_size(ideal_width,ideal_height);
  surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  alarm[0]=1;
}
