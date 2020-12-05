if( !teleporting )
{
	x_vel = dir * move_speed
	
	if( tilemap_get_at_pixel( tilemap,x + dir * ( abs( sprite_width / 2 ) + 1 ),y ) > 0 )
	{
		dir *= -1
		image_xscale = dir
	}
}
else x_vel = 0.0