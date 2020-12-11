event_inherited()

if( fake_global.player_cloak )
{
	var player = instance_find( player_obj,0 )
	
	spawn_particles( particle_spr,10,
		2,5,0,random_range( 0,360 ),1,
		player,player )
}