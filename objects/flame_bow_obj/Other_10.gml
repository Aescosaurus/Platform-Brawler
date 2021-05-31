if( ++cur_shot >= shot_timer )
{
	audio_play_sound( arrow2_sfx,0,false )
	
	cur_shot = 0
	var player = instance_find( player_obj,0 )
	var target_dir = player.look_dir > 0 ? 0 : 180
	
	for( var i = -1; i < 2; ++i )
	{
		var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
		
		bullet.direction = target_dir + 15 * i
		bullet.image_angle = bullet.direction - 45
	}
}