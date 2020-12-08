target = noone

target_x = x
target_y = y

alarm_set( 0,random_range( 0.2,0.9 ) * 60.0 )

var vel_dist = 10.0
x_vel = random_range( -vel_dist,vel_dist )
y_vel = random_range( -vel_dist,vel_dist )

vel_update_spd = 3.1 * 24

image_index = random_range( 0,image_number )