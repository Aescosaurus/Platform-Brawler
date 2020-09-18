for( var iy = 0; iy < height; ++iy )
{
	for( var ix = 0; ix < width; ++ix )
	{
		var tile = tilemap_get( tilemap,ix,iy )
		if( tile == 4 )
		{
			var rx = player_obj.room_x * 2
			var ry = player_obj.room_y * 2
			
			print( string( rx ) + " " + string( ry ) )
			
			// delete all leftover tiles with id of 4 at end of room
			// doors are decoration on top of tile walls
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

if( instance_number( door_obj ) < 1 )
{
	gen_rand_room()
}

randomize()