tilemap = layer_tilemap_get_id( "tiles" )

tilemap_tileset( tilemap,tile_arr[get_difficulty()] )

// var bg_tilemap = layer_tilemap_get_id( "bg_tiles" )
// tilemap_tileset( bg_tilemap,bg_arr[get_difficulty()] )
// for( var iy = 0; iy < tilemap_get_height( bg_tilemap ); ++iy )
// {
// 	for( var ix = 0; ix < tilemap_get_width( bg_tilemap ); ++ix )
// 	{
// 		tilemap_set( bg_tilemap,irandom_range( 1,11 ),ix,iy )
// 	}
// }

width = tilemap_get_width( tilemap )
height = tilemap_get_height( tilemap )
tile_width = tilemap_get_tile_width( tilemap )
tile_height = tilemap_get_tile_height( tilemap )

// Generate doors.
var player = instance_find( player_obj,0 )

// print( string( player.room_x ) + " " + string( player.room_y ) )

for( var iy = 0; iy < height; ++iy )
{
	for( var ix = 0; ix < width; ++ix )
	{
		var tile = tilemap_get( tilemap,ix,iy )
		if( tile == 4 )
		{
			var rx = player.room_x // * 2
			var ry = player.room_y // * 2
			
			var door = instance_create_layer( ix * tile_width,iy * tile_height,"instances",door_obj )
			// door.image_index = 1
			
			var door_anim_check_x = 0
			var door_anim_check_y = 0
			
			if( iy == 0 /* && noise( rx,ry - 1,seed ) < door_chance */ )
			{
				door.dir = 0
				door_anim_check_y = -1
			}
			else if( iy == height - 1 /* && noise( rx,ry + 1,seed ) < door_chance */ )
			{
				door.dir = 1
				door_anim_check_y = 1
			}
			else if( ix == 0 /* && noise( rx - 1,ry,seed ) < door_chance */ )
			{
				door.dir = 2
				door_anim_check_x = -1
			}
			else if( ix == width - 1 /* && noise( rx + 1,ry,seed ) < door_chance */ )
			{
				door.dir = 3
				door_anim_check_x = 1
			}
			else
			{
				// This shouldnt happen but handles invalidly placed doors.
				instance_destroy( door )
				tilemap_set( tilemap,choose( 1,2,3, 5,6,7, 9,10,11 ),ix,iy )
				continue
			}
			
			// Set door spr based on whats on the other side.
			var r_index = xy2str( rx + door_anim_check_x,ry + door_anim_check_y )
			if( ds_map_exists( rogue_map,r_index ) )
			{
				// print( string( ds_map_exists( rogue_map,r_index ) ) + "," + string( r_index ) + "," + string( rogue_map[? r_index] ) )
				door.image_index = rogue_map[? r_index] + 1
			}
			
			if( door.image_index < 1 )
			{
				// Make sure player can't go through closed doors.
				tilemap_set( tilemap,1,ix,iy )
			}
		}
		else if( tile == 8 )
		{
			tilemap_set( tilemap,choose( 1,2,3, 5,6,7, 9,10,11 ),ix,iy )
		}
	}
}

// Ensure there is at least 1 door.
// if( instance_number( door_obj ) < 1 )
// {
// 	++player.room_x
// 	gen_rand_room()
// 	return
// }

var room_str = xy2str( player.room_x,player.room_y )
var cur_room_type = rogue_map[? room_str]
if( !ds_map_exists( player.visited_rooms,room_str ) &&
	( cur_room_type == 0 || cur_room_type == 3 ) )
{
	if( cur_area < 3 )
	{
		if( cur_room_type == 0 && !fake_global.chal3 ) spawn_enemies( wave_size,2 )
		else spawn_enemies( wave_size * 2,3 )
	}
	else
	{
		for( var i = 0; i < ( fake_global.chal6 ? 2 : 1 ); ++i )
		{
			spawn_enemies( 1,1 )
		}
	}
}
else
{
	// var temp_enemy = instance_create_layer( 0,0,"instances",enemy_base )
	// instance_destroy( temp_enemy )
	destroy_doors()
	
	if( cur_room_type == 1 )
	{
		// exit room
		
		var cur_spawn = get_rand_spawn_pos()
		instance_create_layer( cur_spawn.x,cur_spawn.y + 4,"instances",exit_obj )
	}
	else if( cur_room_type == 2 )
	{
		// spawn shop stuff
		
		for( var i = 0; i < instance_number( enemy_spawn_obj ); ++i )
		{
			var spot = instance_find( enemy_spawn_obj,i )
			instance_create_layer( spot.x,spot.y + 2,"instances",shop_item_obj )
		}
	}
	else if( cur_room_type == 4 )
	{
		// tutorial/starting room
		
		instance_create_layer( room_width * 0.25,room_height / 2,"instances",tut1_obj )
		instance_create_layer( room_width * 0.75,room_height / 2,"instances",tut2_obj )
	}
	// else if( cur_room_type == 3 )
	// {
	// 	// challenge room
	// 	
	// 	spawn_enemies( wave_size * 2,3 )
	// }
}

randomize()