alarm_set( 3,refire3 )

for( var i = 0; i < 5; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	
	bullet.direction = 180 + 20 * i
}

y_vel = -jump_pow
alarm_set( 4,jump_dur )