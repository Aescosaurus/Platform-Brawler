event_inherited()
hp = 40

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 19,25 )

retarget = 2.0 * room_speed
alarm_set( 0,retarget )

refire = 4.2 * room_speed
alarm_set( 1,refire )

refire2 = 5.0 * room_speed
alarm_set( 2,refire2 )

refire3 = 2.0 * room_speed
alarm_set( 3,refire3 )

bullet_dir = 0.0
bullet_rot = 360 / random_range( 6,20 )