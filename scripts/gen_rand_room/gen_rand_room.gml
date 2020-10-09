// Pick rand room from rooms list
var first_room = level0
var last_room = level_count

random_set_seed( player_obj.room_x * player_obj.room_y )

// for( var i = 0; i < 500; ++i )
// {
// 	print( irandom_range( 0,5 ) )
// }

room_goto( irandom_range( first_room + 1,last_room - 1 ) )