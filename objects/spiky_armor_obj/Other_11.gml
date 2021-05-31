if( instance_exists( evt_data ) && variable_instance_exists( evt_data,"hp" ) )
{
	audio_play_sound( special_attack1_sfx,0,false )
	
	var player = instance_find( player_obj,0 )
	spawn_particles( green_particle_spr,2,10,22,
		point_direction( player.x,player.y,evt_data.x,evt_data.y ),20,
		28,noone,player )
	
	evt_data.hp -= 5
	if( evt_data.hp < 1 )
	{
		instance_destroy( evt_data )
	}
	
	evt_data = noone
}