var player = instance_find( player_obj,0 )
var fireball = instance_create_layer( player.x,player.y,"instances",fire_bomb_obj )
fireball.speed = 1.8

var enemy = instance_find( enemy_base,
	irandom_range( 0,instance_number( enemy_base ) - 1 ) )
fireball.direction = point_direction( player.x,player.y,enemy.x,enemy.y )