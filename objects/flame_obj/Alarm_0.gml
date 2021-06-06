alarm_set( 0,refire )

var cur_bullet_count = random_range( 2,3 )
for( var i = 0; i < cur_bullet_count; ++i )
{
	var move_dir = choose( -1,1 )
	var ah_calc = ang_height + random_range( -ang_variance,ang_variance )
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = ( move_dir > 0 ? 0 + ah_calc : 180 - ah_calc )
	bullet.gravity = 0.3
	bullet.speed = 2.5
}

audio_play_sound( enemy_shoot1_sfx,0,false )

audio_play_sound( enemy_jump_sfx,0,false )