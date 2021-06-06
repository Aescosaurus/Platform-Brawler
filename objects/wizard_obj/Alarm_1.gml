alarm_set( 1,refire )

var player = instance_find( player_obj,0 )
var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
bullet.direction = point_direction( x,y,player.x,player.y )

audio_play_sound( enemy_shoot1_sfx,0,false )