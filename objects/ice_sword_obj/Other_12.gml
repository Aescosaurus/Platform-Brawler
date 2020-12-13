if( ++cur_shot >= shot_timer && instance_exists( evt_data ) )
{
	cur_shot = 0
	
	// frozen_enemy = evt_data
	// alarm_set( 0,freeze_duration )
	
	evt_data.freezing_dur += freeze_duration
	
	spawn_particles( particle_spr,5,10,22,315,70,
		random_range( 30,45 ),noone,evt_data )
}