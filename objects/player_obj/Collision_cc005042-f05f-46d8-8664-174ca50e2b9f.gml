if( !ouch_frames )
{
	// --hp and knockback and invul time
	
	var x_diff = other.x - x
	
	ouch_xvel = -get_magnitude( x_diff ) * knockback_x
	ouch_yvel = -knockback_y
	
	jumping = false
	grav = 0.0
	
	ouch_frames = true
	alarm_set( 1,ouch_dur )
}