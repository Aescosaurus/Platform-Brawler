if( evt_data.frozen )
{
	var player = instance_find( player_obj,0 )
	spawn_particles( particle_spr,2,10,22,
		point_direction( player.x,player.y,evt_data.x,evt_data.y ),20,
		28,noone,player )
}