alarm_set( 1,refire )

var player = instance_find( player_obj,0 )
var base_ang = point_direction( x,y,player.x,player.y )
var shotgun_size = 9
var shotgun_spread = 25
for( var i = 0; i < shotgun_size; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = base_ang + ( i - shotgun_size / 2 ) * shotgun_spread
}