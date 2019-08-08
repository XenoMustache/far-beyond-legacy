/// @desc Initialize Camera
// Initialize views and camera
//view_enabled = true;
//view_set_visible(0, true);
//view_default_width = global.display_width;
//view_default_height = global.display_height;
//view_set_wport(0, global.display_width);
//view_set_hport(0, global.display_height);
//camera_target = registry.player_spawn;
//// Manage game window
//window_scale = 1;
//window_set_size(view_default_width * window_scale, view_default_height * window_scale);
//display_set_gui_size(view_default_width, view_default_height);
//alarm[0] = 1;
/// @description Display Properties
ideal_width=0;
ideal_height=256*2;
zoom=1;
max_zoom=1;
display_width=display_get_width();
display_height=display_get_height();

aspect_ratio=display_width/display_height;

ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height=display_height/d;
}

//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
//Calculate Max Zoom
max_zoom=floor(display_width/ideal_width);  
  
for(var i=2; i<=room_last; i++)
{
  if(room_exists(i))
  {
    room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
    room_set_view_enabled(i,true);
  }
}

window_set_size(ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  
alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.
room_goto(room_next(room));