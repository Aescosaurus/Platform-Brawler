x_vel = dir * move_speed

if( tilemap_get_at_pixel( tilemap,x + dir * 5,y ) > 0 )
{
	dir *= -1
	image_xscale = dir
}