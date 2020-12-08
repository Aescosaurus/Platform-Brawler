if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	freezing = true
	
	alarm_set( 0,freeze_duration )
	
	for( var i = 0; i < instance_number( enemy_base ); ++i )
	{
		var cur_enemy = instance_find( enemy_base,i )
		
		with( cur_enemy )
		{
			spawn_particles( particle_spr,0,10,22,315,70,
				random_range( 5,11 ),noone )
		}
	}
}