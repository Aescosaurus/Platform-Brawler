if( instance_number( enemy_base ) <= 1 )
{
	destroy_doors()
	
	instance_destroy( en_bullet_base )
	
	var player = instance_find( player_obj,0 )
	var room_str = xy2str( player.room_x,player.room_y )
	var cur_room_type = tile_randomizer_obj.rogue_map[? room_str]
	if( cur_room_type == 0 || cur_room_type == 3 )
	{
		instance_create_layer( x + random_range( -10,10 ),
			y + random_range( -10,10 ),
			"instances",coin_obj )
	}
	
	if( cur_room_type == 3 )
	{
		instance_create_layer( x,y,"instances",gen_rand_item() )
	}
	else if( random_range( 0.0,1.0 ) < 0.08 )
	{
		instance_create_layer( x,y,"instances",gen_rand_item() )
	}
}