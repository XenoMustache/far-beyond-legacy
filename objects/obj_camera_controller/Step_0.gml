if (instance_exists(obj_player_ship)) {
	x = obj_player_ship.x;
	y = obj_player_ship.y;
} else {
	x = x;
	y = y;
}

var zoom_speed = .1;
view_zoom+=keyboard_check(vk_up)*zoom_speed;
view_zoom-=keyboard_check(vk_down)*zoom_speed;

view_zoom=clamp(view_zoom,1,view_max_zoom);

__view_set( e__VW.WView, 0, obj_camera.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, obj_camera.ideal_height/view_zoom );

//Center on player
__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2-10 );
__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2-10 );

//clamp to room
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0,room_width-__view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0,room_height-__view_get( e__VW.HView, 0 )) );