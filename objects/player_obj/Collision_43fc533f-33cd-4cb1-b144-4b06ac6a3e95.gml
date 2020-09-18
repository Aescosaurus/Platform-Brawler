if( !updated_rpos )
{
	updated_rpos = true
	
	if( other.dir == 0 ) --room_y
	else if( other.dir == 1 ) ++room_y
	else if( other.dir == 2 ) --room_x
	else if( other.dir == 3 ) ++room_x
	
	gen_rand_room()
}