var dt = get_dt()

var x_move = x_vel * dt
var y_move = y_vel * dt

if( knockback )
{
	x_move += knockback_xvel * dt
	y_move += knockback_yvel * dt
	
	knockback_xvel -= knockback_xvel * dt
	knockback_yvel -= knockback_yvel * dt
}

if( freezing_dur > 0.0 )
{
	freezing_dur -= dt
	if( freezing_dur < 0.0 ) freezing_dur = 0.0
	x_move = 0.0
	y_move = 0.0
}

grav += grav_acc * dt
y_move += grav * dt

var x_dir = sign( x_move )
var y_dir = sign( y_move )

airborne = true

if( tilemap_get_at_pixel( tilemap,x + x_move + h_width * x_dir,y ) <= 0 )
{
	x += x_move
}
else
{
	while( tilemap_get_at_pixel( tilemap,x + x_dir + h_width * x_dir,y ) <= 0 )
	{
		x += x_dir
	}
	
	grav = 0.0
}

if( tilemap_get_at_pixel( tilemap,x,y + y_move + h_height * y_dir ) <= 0 )
{
	y += y_move
}
else if( y_dir > 0 )
{
	while( tilemap_get_at_pixel( tilemap,x,y + y_dir + h_height * y_dir ) <= 0 )
	{
		y += y_dir
	}
	
	grav = 0.0
	airborne = false
}