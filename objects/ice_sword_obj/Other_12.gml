if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	frozen_enemy = evt_data
	alarm_set( 0,freeze_duration )
	
	frozen_enemy.frozen = true
	
	spawn_particles( particle_spr,5,10,22,0,360,
		random_range( 30,45 ),noone,frozen_enemy )
}