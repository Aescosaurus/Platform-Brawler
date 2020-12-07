x_vel = dir * move_speed

if( tilemap_get_at_pixel( tilemap,x + dir * ( abs( sprite_width / 2 ) + 1 ),y ) > 0 )
{
	dir *= -1
	image_xscale = dir
}

if( tilemap_get_at_pixel( tilemap,x + dir * ( abs( sprite_width / 2 ) + 1 ),y + sprite_height ) <= 0 )
{
	x_vel = sign( dir ) * jump_pow_x
	y_vel = -jump_pow
}

var dt = get_dt()

x_vel -= sign( x_vel ) * decay * dt
y_vel -= sign( y_vel ) * decay * dt
