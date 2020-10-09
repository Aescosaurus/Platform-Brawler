// x_vel = dir * move_speed

// dir = sign( player.x - x )
// image_xscale = dir

var dt = get_dt()

x_vel -= sign( x_vel ) * decay * dt
y_vel -= sign( y_vel ) * decay * dt