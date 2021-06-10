alarm_set( 0,refire )

var player = instance_find( player_obj,0 )
var base_ang = point_direction( x,y,player.x,player.y )
for( var i = 0; i < shotgun_size; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = base_ang + ( i - shotgun_size / 2 ) * shotgun_spread
}

audio_play_sound( enemy_shoot1_sfx,0,false )