x_vel = dir * move_speed

if( tilemap_get_at_pixel( tilemap,x + dir * 7,y ) > 0 )
{
	dir *= -1
	image_xscale = dir
}

var player = instance_find( player_obj,0 )
if( abs( player.x - x ) < retarget_dist && abs( player.y - y ) < y_tolerance )
{
	dir = sign( player.x - x )
	image_xscale = dir
}