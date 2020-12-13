for( var i = 0; i < 5; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	// bullet.direction = point_direction( x,y,player.x,player.y )
	
	bullet.direction = 45 * i
}

stalling = false

alarm_set( 0,refire )