if( instance_exists( target ) )
{
	var dt = get_dt()
	
	x += x_vel * dt
	y += y_vel * dt
	
	var x_diff = target.x - x
	var y_diff = target.y - y
	var len = get_len( x_diff,y_diff )
	if( len != 0.0 )
	{
		x_vel += x_diff / len * vel_update_spd * dt
		y_vel += y_diff / len * vel_update_spd * dt
	}
}