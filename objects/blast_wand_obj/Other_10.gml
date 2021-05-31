if( ++cur_shot >= shot_timer )
{
	audio_play_sound( fireball2_sfx,0,false )
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var fireball = instance_create_layer( player.x,player.y,"instances",fire_bomb_obj )
	fireball.speed = 1.8
	
	fireball.direction = player.x_shot_vel > 0 ? 0 : 180
	if( player.y_shot_vel != 0 ) fireball.direction = player.y_shot_vel > 0 ? 270 : 90
}