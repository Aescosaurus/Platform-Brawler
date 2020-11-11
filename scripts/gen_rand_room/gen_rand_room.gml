// Pick rand room from rooms list
// var first_room = level0
// var last_room = level_count

random_set_seed( tile_randomizer_obj.seed + player_obj.room_x * player_obj.room_y * 999 )

// for( var i = 0; i < 500; ++i )
// {
// 	print( irandom_range( 0,5 ) )
// }

var rng = irandom_range( 0,array_length_1d( room_list.rooms ) - 1 )
print( tile_randomizer_obj.seed + player_obj.room_x * player_obj.room_y )

room_goto( room_list.rooms[rng] )