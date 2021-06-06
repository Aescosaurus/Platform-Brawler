event_inherited()

var n_shots = 8
for( var i = 0; i < n_shots; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = ( 360 / n_shots ) * i
}

audio_play_sound( enemy_shoot2_sfx,0,false )