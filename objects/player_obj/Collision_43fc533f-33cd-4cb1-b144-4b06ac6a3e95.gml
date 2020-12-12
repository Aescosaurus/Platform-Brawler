invul_frames = true
alarm_set( 1,ouch_dur )

if( !updated_rpos )
{
	updated_rpos = true
	
	// Set room as visited
	var room_str = string( room_x ) + " " + string( room_y )
	if( !ds_map_exists( visited_rooms,room_str ) ) ds_map_add( visited_rooms,room_str,0 )
	ds_map_set( visited_rooms,room_str,visited_rooms[? room_str] + 1 )
	
	// Update room pos and start loc.
	var tile_size = tilemap_get_tile_width( tilemap )
	if( other.dir == 0 )
	{
		--room_y
		// y = room_height - tile_size * 2 - sprite_height
		y = room_height - tile_size * 1.5
	}
	else if( other.dir == 1 )
	{
		++room_y
		// y = 0 + tile_size + sprite_height
		y = 0 + tile_size * 1.5
	}
	else if( other.dir == 2 )
	{
		--room_x
		// x = room_width - tile_size * 2 - sprite_width
		x = room_width - tile_size * 1.5
	}
	else if( other.dir == 3 )
	{
		++room_x
		// x = 0 + tile_size + sprite_width
		x = 0 + tile_size * 1.5
	}
	
	gen_rand_room()
}