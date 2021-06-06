freezing = true
audio_play_sound( freeze2_sfx,0,false )

// alarm_set( 0,freeze_duration )

for( var i = 0; i < instance_number( enemy_base ); ++i )
{
	var cur_enemy = instance_find( enemy_base,i )
	cur_enemy.freezing_dur += freeze_duration
	
	spawn_particles( particle_spr,5,10,22,315,70,
		random_range( 30,45 ),noone,cur_enemy )
}