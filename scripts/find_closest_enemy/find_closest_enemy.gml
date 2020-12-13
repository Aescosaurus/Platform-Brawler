var tx = argument0
var ty = argument1

var dist = 9999999
var closest = noone

for( var i = 0; i < instance_number( enemy_base ); ++i )
{
	var cur_enemy = instance_find( enemy_base,i )
	
	var cur_len = get_len_sq( cur_enemy.x - tx,cur_enemy.y - ty )
	
	if( cur_len < dist )
	{
		dist = cur_len
		closest = cur_enemy
	}
}

return( closest )