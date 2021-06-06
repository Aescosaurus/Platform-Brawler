alarm_set( 0,retarget )

var player = instance_find( player_obj,0 )

var x_diff = player.x - x
var y_diff = player.y - y
var len = get_len( x_diff,y_diff )
if( len > 0.0 )
{
	x_vel = x_diff / len * move_speed
	y_vel = y_diff / len * move_speed
}

var player = instance_find( player_obj,0 )
var base_ang = point_direction( x,y,player.x,player.y )
var shotgun_size = 3
var shotgun_spread = 45
for( var i = 0; i < shotgun_size; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = base_ang + ( i - shotgun_size / 2 ) * shotgun_spread
}

audio_play_sound( enemy_shoot2_sfx,0,false )