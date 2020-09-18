/// @description move and shoot and such

var dt = get_dt()

// -----Movement code!-----
var x_move = ( keyboard_check( ord( "D" ) ) - keyboard_check( ord( "A" ) ) ) * move_speed * dt
var y_move = 0.0
if( can_jump || ( x_move != 0.0 && get_magnitude( x_move ) != wall_dir ) )
{
	if( keyboard_check( ord( "W" ) ) )
	{
		jumping = true
		image_index = 4
	}
}

// Move up if jumping.
if( jumping )
{
	y_move -= jump_pow * dt
}

// Update gravity things.
grav += grav_acc * dt
y_move += grav * dt

if( grav > jump_pow ) image_index = 5

// Cache magnitude of test move variables.
var x_dir = get_magnitude( x_move )
var y_dir = get_magnitude( y_move )

if( x_dir != 0 )
{
	image_xscale = x_dir
	if( !jumping )
	{
		// Handle walk animation.
		image_index += 0.4
		if( image_index > 3 ) image_index = 0
	}
}

// Check if place where we're moving is free and move if so.
if( tilemap_get_at_pixel( tilemap,x + x_move + h_width * x_dir,y ) <= 0 )
{
	x += x_move
	wall_dir = 0
}
// else if( tilemap_get_at_pixel( tilemap,x + x_move / 3 + h_width * x_dir,y ) <= 0 )
// {
// 	x += x_move / 3
// 	wall_dir = 0
// }
else
{
	while( tilemap_get_at_pixel( tilemap,x + x_dir + h_width * x_dir,y ) <= 0 )
	{
		x += x_dir
		wall_dir = 0
	}
	
	grav = 0.0
	jumping = false
	can_jump = false
	wall_dir = x_dir
	image_index = 7
}

if( tilemap_get_at_pixel( tilemap,x,y + y_move + h_height * y_dir ) <= 0 )
{
	y += y_move
}
else if( y_dir > 0 )
{
	while( tilemap_get_at_pixel( tilemap,x,y + y_dir + h_height * y_dir ) <= 0 )
	{
		y += y_dir
	}
	
	grav = 0.0
	jumping = false
	can_jump = true
	if( image_index > 3 && image_index < 8 ) image_index = 6
}


var x_shot_vel = keyboard_check( vk_right ) - keyboard_check( vk_left )
var y_shot_vel = keyboard_check( vk_down ) - keyboard_check( vk_up )

if( abs( x_shot_vel ) > abs( y_shot_vel ) )
{
	x_shot_vel = get_magnitude( x_shot_vel )
	y_shot_vel = 0.0
}
else
{
	x_shot_vel = 0.0
	y_shot_vel = get_magnitude( y_shot_vel )
}

// -----Shooting code!-----
if( can_fire && ( x_shot_vel != 0.0 || y_shot_vel != 0.0 ) )
{
	can_fire = false
	alarm_set( 0,refire )
	
	if( x_dir == 0.0 && x_shot_vel != 0.0 ) image_xscale = get_magnitude( x_shot_vel )
	
	var bullet = instance_create_layer( x,y,"instances",bullet_obj )
	bullet.direction = point_direction( 0,0,x_shot_vel,y_shot_vel )
	bullet.speed = bullet_speed
	bullet.image_angle = bullet.direction
	
	if( y_shot_vel < 0.0 ) image_index = 8
	else if( y_shot_vel > 0.0 ) image_index = 9
	// else if( xShotVel < 0.0 ) image_index = 10
	// else if( xShotVel > 0.0 ) image_index = 11
	else image_index = 10
}