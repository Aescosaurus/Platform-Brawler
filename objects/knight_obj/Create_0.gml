event_inherited()

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 8,12 )

dash_speed = random_range( 40,50 )
dash_time = random_range( 0.4,0.7 ) * 60.0
dashing = false

refire = random_range( 1.4,2.4 ) * 60.0
alarm_set( 0,refire )

angle_tolerance = 50