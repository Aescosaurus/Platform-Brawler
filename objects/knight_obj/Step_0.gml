x_vel = dir * ( dashing ? dash_speed : move_speed )

if( tilemap_get_at_pixel( tilemap,x + dir * 5,y ) > 0 )
{
	dir *= -1
	image_xscale = dir
}