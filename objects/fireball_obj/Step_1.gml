if( tilemap_get_at_pixel( tilemap,x,y ) > 0 )
{
	if( ( !variable_global_exists( "fireball_bounce" ) ) )
	{
		instance_destroy()
	}
	else
	{
		if( bounces >= global.fireball_bounce )
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