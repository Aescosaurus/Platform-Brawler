if( !used )
{
	var player = instance_find( player_obj,0 )
	
	if( player.hp < player.max_hp )
	{
		player.hp += 1
		
		used = true
		
		spawn_particles( shield_particle_spr,15,10,22,315,70,
			40,player,player )
	}
}