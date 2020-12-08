if( instance_exists( evt_data ) )
{
	evt_data.hp -= 5
	if( evt_data.hp < 1 )
	{
		instance_destroy( evt_data )
	}
	
	evt_data = noone
}