if( unlocked )
{
	clicked = !clicked
	
	image_index = clicked ? 1 : 0

	audio_play_sound( button_click_sfx,0,false )
}
else
{
	audio_play_sound( button_no_sfx,0,false )
}