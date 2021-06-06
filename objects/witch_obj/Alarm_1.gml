for( var i = 0; i < 5; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	// bullet.direction = point_direction( x,y,player.x,player.y )
	
	bullet.direction = 45 * i
}
	
audio_play_sound( enemy_shoot2_sfx,0,false )

stalling = false

alarm_set( 0,refire )