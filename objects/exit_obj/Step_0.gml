var player = instance_find( player_obj,0 )
can_click = get_len_sq( player.x - x,player.y - y ) < sqr( msg_dist )

if( can_click && keyboard_check( ord( "E" ) ) )
{
	// goto next area
	
	++tile_randomizer_obj.cur_area
	
	var player = instance_find( player_obj,0 )
	player.room_x = 0
	player.room_y = 0
	player.visited_rooms = ds_map_create()
	player.x = 128
	player.y = 104
	
	gen_rand_room()
}