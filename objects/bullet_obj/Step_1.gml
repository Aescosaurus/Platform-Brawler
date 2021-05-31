if( tilemap_get_at_pixel( tilemap,x,y ) > 0 )
{
	audio_play_sound( wall_hit_reg_sfx,0,false )
	instance_destroy()
}