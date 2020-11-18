var n_rooms = argument0
var n_exit = argument1
var n_shop = argument2
var n_hard = argument3

var old_seed = random_get_seed()
randomize()

// room types
// 1 = enemy
// 2 = exit
// 3 = shop
// 4 = challenge

var map = instance_find( tile_randomizer_obj,0 ).rogue_map
ds_map_clear( map )

// Generate array to determine room data.
var room_data = ds_list_create()
for( var i = 0; i < n_exit; ++i ) ds_list_add( room_data,1 )
for( var i = 0; i < n_shop; ++i ) ds_list_add( room_data,2 )
for( var i = 0; i < n_hard; ++i ) ds_list_add( room_data,3 )

// All unfilled rooms are regular enemy rooms.
for( var i = 0; i < n_rooms - n_exit - n_shop - n_hard; ++i ) ds_list_add( room_data,0 )

ds_list_shuffle( room_data )

var cur_x = 0
var cur_y = 0
for( var i = 0; i < n_rooms; ++i )
{
	if( ds_map_exists( map,xy2str( cur_x,cur_y ) ) )
	{
		--i
	}
	else
	{
		// print( string( cur_x ) + " " + string( cur_y ) )
		var room_type = room_data[| i]
		ds_map_add( map,xy2str( cur_x,cur_y ),room_type )
	}
	
	var x_move = irandom_range( -1,1 )
	var y_move = ( x_move == 0 ? irandom_range( -1,1 ) : 0 )
	
	cur_x += x_move
	cur_y += y_move
}

random_set_seed( old_seed )