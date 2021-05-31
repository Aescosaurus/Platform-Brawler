if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	audio_play_sound( arrow2_sfx,0,false )
	
	var player = instance_find( player_obj,0 )
	var n_shots = 8
	for( var i = 0; i < n_shots; ++i )
	{
		var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
		bullet.direction = ( 360 / n_shots ) * i
		bullet.image_angle = bullet.direction - 45
	}
}