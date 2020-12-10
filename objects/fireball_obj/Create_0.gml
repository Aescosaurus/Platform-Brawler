event_inherited()

var closest = noone
var dist = 99999

for( var i = 0; i < instance_number( enemy_base ); ++i )
{
	var cur_enemy = instance_find( enemy_base,i )
	var cur_len = get_len_sq( cur_enemy.x - x,cur_enemy.y - y )
	
	if( cur_len < dist )
	{
		dist = cur_len
		closest = cur_enemy
	}
}

if( closest )
{
	direction = point_direction( x,y,closest.x,closest.y )
}

speed = 5

bounces = 0