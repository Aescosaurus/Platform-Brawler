if( tilemap_get_at_pixel( tilemap,x,y ) > 0 )
{
	var fireball_bounce = check_global( "fireball_bounce" )
	if( fireball_bounce < 1 )
	{
		instance_destroy()
	}
	else
	{
		if( bounces >= fireball_bounce )
		{
			instance_destroy()
		}
		else
		{
			bounces += 1
			direction += 180
		}
	}
}