event_inherited()
hp = 35

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 15,18 )

retarget = 2.5 * room_speed
alarm_set( 0,retarget )

refire = 1.2 * room_speed
alarm_set( 1,refire )

refire2 = 5.0 * room_speed
alarm_set( 2,refire2 )