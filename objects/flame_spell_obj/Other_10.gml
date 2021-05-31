if( ++cur_shot >= shot_timer )
{
	audio_play_sound( fireball2_sfx,0,false )
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	for( var i = 0; i < 8; ++i )
	{
		var fireball = instance_create_layer( player.x,player.y,"instances",fireball_obj )
		fireball.speed = 2.5
		fireball.direction = ( 360 / 8 ) * i
	}
}