alarm_set( 3,refire3 )

var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
bullet.direction = bullet_dir

bullet_dir += bullet_rot