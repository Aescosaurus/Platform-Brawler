x_vel = dir * move_speed

if( tilemap_get_at_pixel( tilemap,x + dir * ( abs( sprite_width / 2 ) + 1 ),y + sprite_height ) <= 0 ||
	tilemap_get_at_pixel( tilemap,x + dir * ( abs( sprite_width / 2 ) + 1 ),y ) > 0 )
{
	dir *= -1
	image_xscale = dir
}