var player = instance_find( player_obj,0 )
var fireball = instance_create_layer( player.x,player.y,"instances",fireball_obj )
fireball.speed = 2.5
var enemy = get_rand_enemy()
fireball.direction = point_direction( player.x,player.y,enemy.x,enemy.y )