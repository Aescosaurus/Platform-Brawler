event_inherited()
hp = 3

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 ) - 8

refire = random_range( 2.5,3.0 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

shotgun_size = 3
shotgun_spread = 15