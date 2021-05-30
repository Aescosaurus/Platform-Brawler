var player = instance_find( player_obj,0 )
can_click = get_len_sq( player.x - x,player.y - y ) < sqr( msg_dist )

if( can_click && keyboard_check( ord( "E" ) ) )
{
	// goto next area
	
	with( tile_randomizer_obj )
	{
		audio_stop_sound( mus_arr[cur_area] )
		cur_area += 1
		audio_play_sound( mus_arr[cur_area],1,true )
		gen_rogue_map( room_count,exit_count,shop_count,hard_count )
	}
	
	var player = instance_find( player_obj,0 )
	player.room_x = 0
	player.room_y = 0
	player.visited_rooms = ds_map_create()
	player.x = 128
	player.y = 104
	player.hp = player.max_hp
	
	gen_rand_room()
}