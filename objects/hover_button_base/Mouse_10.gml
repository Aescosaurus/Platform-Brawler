hover = true
if( unlocked )
{
	audio_play_sound( button_hover_sfx,0,false )
	// image_index = clicked ? 0 : 1
	if( !clicked ) image_index = 1
}