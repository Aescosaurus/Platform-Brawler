var enemy_count = argument0
var pick_variety = argument1

var enemies = gen_enemies( enemy_count,pick_variety )
for( var i = 0; i < array_length_1d( enemies ); ++i )
{
	var cur_spawn = get_rand_spawn_pos()
	var enemy = instance_create_layer( cur_spawn.x,cur_spawn.y,"instances",enemies[i] )
	
	if( fake_global.chal2 )
	{
		enemy.hp *= 2
	}
}