event_inherited()
hp = 3

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 )

refire = random_range( 2.1,2.5 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

jump_pow = 70
jump_pow_x = 60
decay = jump_pow * 0.3

ang_height = 90
ang_variance = 35