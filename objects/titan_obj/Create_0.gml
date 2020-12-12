event_inherited()
hp = 50

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 17,22 )

refire = 5.0 * room_speed
alarm_set( 1,refire )

refire2 = 2.8 * room_speed
alarm_set( 2,refire2 )

refire3 = 6.0 * room_speed
alarm_set( 3,refire3 )
jump_pow = 60.0
jump_dur = 0.4 * room_speed