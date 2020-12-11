if( evt_data.airborne )
{
	var player = instance_find( player_obj,0 )
	
	spawn_particles( particle_spr,3,22,30,
		point_direction( player.x,player.y,evt_data.x,evt_data.y ),16,
		20,noone,player )
}