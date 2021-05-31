if( ++cur_shot >= shot_timer )
{
	audio_play_sound( special_attack1_sfx,0,false )
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	instance_create_layer( player.x,player.y,"instances",sword_lob_obj )
}