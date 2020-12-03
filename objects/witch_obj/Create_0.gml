event_inherited()
hp = 2

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 ) - 8

refire = random_range( 2.1,2.3 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

stall_time = 0.4 * 60.0
stalling = false