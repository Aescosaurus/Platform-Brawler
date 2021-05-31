audio_play_sound( arrow2_sfx,0,false )
for( var i = 0; i < instance_number( enemy_base ); ++i )
{
	var player = instance_find( player_obj,0 )
	var cur_enemy = instance_find( enemy_base,i )
	
	var target_dir = point_direction( player.x,player.y,cur_enemy.x,cur_enemy.y )
	
	var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
	bullet.direction = target_dir
	bullet.image_angle = bullet.direction - 45
}