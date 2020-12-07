event_inherited()
hp = 3

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 ) - 8

refire = random_range( 1.1,1.5 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

ang_height = 45
ang_variance = 5