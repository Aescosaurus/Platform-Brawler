event_inherited()

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 ) - 8

refire = random_range( 1.0,2.0 ) * 60.0
alarm_set( 0,refire )

attack_range = 64