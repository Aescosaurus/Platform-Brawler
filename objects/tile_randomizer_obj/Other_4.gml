tilemap = layer_tilemap_get_id( "tiles" )
width = tilemap_get_width( tilemap )
height = tilemap_get_height( tilemap )
tile_width = tilemap_get_tile_width( tilemap )
tile_height = tilemap_get_tile_height( tilemap )

// Generate doors.
var player = instance_find( player_obj,0 )
for( var iy = 0; iy < height; ++iy )
{
	for( var ix = 0; ix < width; ++ix )
	{
		var tile = tilemap_get( tilemap,ix,iy )
		if( tile == 4 )
		{
			var rx = player.room_x * 2
			var ry = player.room_y * 2
			
			var door = instance_create_layer( ix * tile_width,iy * tile_height,"instances",door_obj )
			door.image_index = 1
			
			if( iy == 0 && noise( rx,ry - 1,seed ) < door_chance )
			{
				door.dir = 0
			}
			else if( iy == height - 1 && noise( rx,ry + 1,seed ) < door_chance )
			{
				door.dir = 1
			}
			else if( ix == 0 && noise( rx - 1,ry,seed ) < door_chance )
			{
				door.dir = 2
			}
			else if( ix == width - 1 && noise( rx + 1,ry,seed ) < door_chance )
			{
				door.dir = 3
			}
			else
			{
				instance_destroy( door )
				tilemap_set( tilemap,choose( 1,2,3, 5,6,7, 9,10,11 ),ix,iy )
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
// 	gen_rand_room()
// 	return
// }

var room_str = string( player.room_x ) + " " + string( player.room_y )
if( !ds_map_exists( player.visited_rooms,room_str ) )
{
	var enemy_count = 5
	var enemies = gen_enemies( enemy_count )
	var spawn_count = instance_number( enemy_spawn_obj )
	for( var i = 0; i < array_length_1d( enemies ); ++i )
	{
		var cur_spawn = instance_find( enemy_spawn_obj,random_range( 0,spawn_count - 1 ) )
		instance_create_layer( cur_spawn.x,cur_spawn.y,"instances",enemies[i] )
	}
}
else
{
	// Destroy doors.
	var temp_enemy = instance_create_layer( 0,0,"instances",enemy_base )
	instance_destroy( temp_enemy )
}

randomize()