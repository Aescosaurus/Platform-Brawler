event_inherited()
hp = 2

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 8,12 )

refire = random_range( 1.4,2.4 ) * 60.0
alarm_set( 0,refire )