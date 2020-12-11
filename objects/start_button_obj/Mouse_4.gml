if( instance_number( player1_frame_obj ) > 0 )
{
	set_global( "player1",instance_find( player1_frame_obj,0 ).clicked )
	set_global( "chal1",instance_find( chal1_obj,0 ).clicked )
	set_global( "chal2",instance_find( chal2_obj,0 ).clicked )
	set_global( "chal3",instance_find( chal3_obj,0 ).clicked )
	set_global( "chal4",instance_find( chal4_obj,0 ).clicked )
	set_global( "chal5",instance_find( chal5_obj,0 ).clicked )
	set_global( "chal6",instance_find( chal6_obj,0 ).clicked )
}

room_goto_next()