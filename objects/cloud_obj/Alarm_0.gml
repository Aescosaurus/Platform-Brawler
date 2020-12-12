alarm_set( 0,retarget )

var target = instance_find( enemy_spawn_obj,
	irandom_range( 0,instance_number( enemy_spawn_obj ) - 1 ) )

var x_diff = target.x - x
var y_diff = target.y - y
var len = get_len( x_diff,y_diff )
if( len > 0.0 )
{
	x_vel = x_diff / len * move_speed
	y_vel = y_diff / len * move_speed
}