event_inherited()
hp = 2

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 14,25 )

invis_timer = random_range( 1.7,3.0 ) * 60.0
invis_duration = random_range( 2.0,2.8 ) * 60.0
invis = false

retarget_dist = 25
y_tolerance = 9

alarm_set( 0,random_range( 0,invis_timer ) )