if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	audio_play_sound( fireball2_sfx,0,false )
	
	var player = instance_find( player_obj,0 )
	var fireball = instance_create_layer( player.x,player.y,"instances",fire_bomb_obj )
	fireball.speed = 1.8
	
	var enemy = get_rand_enemy()
	fireball.direction = point_direction( player.x,player.y,enemy.x,enemy.y )
}