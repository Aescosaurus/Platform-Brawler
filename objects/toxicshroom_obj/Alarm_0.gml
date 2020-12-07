alarm_set( 0,refire )

var player = instance_find( player_obj,0 )
var move_dir = sign( player.x - x )

var ah_calc = ang_height + random_range( -ang_variance,ang_variance )
var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
bullet.direction = ( move_dir > 0 ? 0 + ah_calc : 180 - ah_calc )
bullet.gravity = 0.3
bullet.speed = 3