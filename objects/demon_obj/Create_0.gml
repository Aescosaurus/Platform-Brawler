event_inherited()
hp = 20

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 22,26 )

refire = random_range( 0.4,0.6 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

refire2 = random_range( 0.9,1.2 ) * room_speed
alarm_set( 1,refire2 )

jump_pow = 70
jump_pow_x = 60
decay = jump_pow * 0.3

ang_height = 90
ang_variance = 35