instance_destroy( fake_global )
instance_create_layer( -9999,-9999,"instances",fake_global )
if( !audio_is_playing( menu_mus ) ) audio_play_sound( menu_mus,1,true )