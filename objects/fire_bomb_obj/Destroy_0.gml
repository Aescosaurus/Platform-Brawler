event_inherited()

var n_shots = 6
for( var i = 0; i < n_shots; ++i )
{
	var fireball = instance_create_layer( x,y,"instances",fireball_obj )
	fireball.speed = 2.5
	fireball.direction = ( 360 / n_shots ) * i
}

audio_play_sound( fireball_hit_sfx,0,false )