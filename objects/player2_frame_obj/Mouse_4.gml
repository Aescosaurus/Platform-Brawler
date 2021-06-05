if( unlocked )
{
	clicked = true
	
	image_index = 1
	
	var frame1 = instance_find( player1_frame_obj,0 )
	
	frame1.clicked = false
	frame1.image_index = 0
	
	audio_play_sound( button_click_sfx,0,false )
}
else audio_play_sound( button_no_sfx,0,false )