/// @description move and shoot and such

var dt = get_dt()

if( won ) dt = 0.0

// -----Movement code!-----
var x_move = ( keyboard_check( ord( "D" ) ) - keyboard_check( ord( "A" ) ) ) * move_speed * dt
// if( check_global( "green_orb" ) ) x_move *= 1.25
var green_mult = check_global( "green_orb" )
for( var i = 0; i < green_mult; ++i ) x_move *= 1.25
var y_move = 0.0

if( x_move != 0.0 ) look_dir = sign( x_move )

if( can_jump || ( x_move != 0.0 && sign( x_move ) != wall_dir ) )
{
	if( keyboard_check( ord( "W" ) ) && !ouch_frames )
	{
		if( !jumping )
		{
			if( can_jump ) audio_play_sound( jump_sfx,0,false )
			else audio_play_sound( wall_jump_sfx,0,false )
			
		}
		jumping = true
		image_index = 4
	}
}

// Move up if jumping.
if( jumping && !ouch_frames )
{
	// y_move -= jump_pow * dt * ( check_global( "blue_orb" ) ? 1.25 : 1.0 )
	var jump_scale = 1.0
	var blue_mult = check_global( "blue_orb" )
	for( var i = 0; i < blue_mult; ++i ) jump_scale *= 1.25
	y_move -= jump_pow * dt * jump_scale
}

// Update gravity things.
grav += grav_acc * dt
y_move += grav * dt

// Dynamic jump if you have a certain item.
if( jumping && !keyboard_check( ord( "W" ) ) && check_global( "jump_control" ) &&
	y_move < 0.0 )
{
	grav = 0.0
	jumping = false
	can_jump = false
}

if( grav > jump_pow ) image_index = 5

if( ouch_frames )
{
	x_move = ouch_xvel * dt
	y_move += ouch_yvel * dt
}

// Cache magnitude of test move variables.
var x_dir = sign( x_move )
var y_dir = sign( y_move )

if( x_dir != 0 )
{
	image_xscale = x_dir
	if( !jumping )
	{
		// Handle walk animation.
		image_index += 10.0 * dt
		if( image_index >= 3 ) image_index = 0
	}
}

// Check if place where we're moving is free and move if so.
// if( tilemap_get_at_pixel( tilemap,x + x_move + h_width * x_dir,y ) <= 0 )
if( player_check_tile_corners( tilemap,x + x_move/* + h_width * x_dir*/,y ) )
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
	while( player_check_tile_corners( tilemap,x + x_dir/* + h_width * x_dir*/,y ) )
	{
		x += x_dir
		wall_dir = 0
	}
	
	if( sign( wall_dir ) != sign( x_dir ) ) audio_play_sound( wall_stick_sfx,0,false )
	
	grav = 0.0
	jumping = false
	can_jump = false
	wall_dir = x_dir
	ouch_frames = false
	image_index = 7
}

if( player_check_tile_corners( tilemap,x,y + y_move/* + h_height * y_dir*/ ) )
{
	y += y_move
	// footstep_timer = 0.0
}
else if( y_dir > 0 )
{
	while( player_check_tile_corners( tilemap,x,y + y_dir/* + h_height * y_dir*/ ) )
	{
		y += y_dir
	}
	
	if( grav > grav_acc * 10.0 * dt ) audio_play_sound( land_sfx,0,false )
	
	grav = 0.0
	jumping = false
	can_jump = true
	ouch_frames = false
	if( image_index > 3 && image_index < 8 ) image_index = 6
	
	if( abs( x_move ) > 0.0 ) footstep_timer += dt
	if( footstep_timer >= footstep_interval )
	{
		footstep_timer = 0.0
		audio_play_sound( cur_foot == 0 ? footstep1_sfx : footstep2_sfx,0,false )
		cur_foot = ( cur_foot == 0 ? 1 : 0 )
	}
}


x_shot_vel = keyboard_check( vk_right ) - keyboard_check( vk_left )
y_shot_vel = keyboard_check( vk_down ) - keyboard_check( vk_up )

if( x_shot_vel != 0.0 ) look_dir = sign( x_shot_vel )

if( abs( x_shot_vel ) > abs( y_shot_vel ) )
{
	x_shot_vel = sign( x_shot_vel )
	y_shot_vel = 0.0
}
else
{
	x_shot_vel = 0.0
	y_shot_vel = sign( y_shot_vel )
}

// -----Shooting code!-----
if( can_fire && ( x_shot_vel != 0.0 || y_shot_vel != 0.0 ) )
{
	can_fire = false
	// alarm_set( 0,refire * ( check_global( "yellow_orb" ) ? 0.75 : 1.0 ) )
	var shot_reset_mult = 1.0
	var yellow_orb_mult = check_global( "yellow_orb" )
	for( var i = 0; i < yellow_orb_mult; ++i ) shot_reset_mult *= 0.75
	alarm_set( 0,refire * shot_reset_mult )
	
	if( x_dir == 0.0 && x_shot_vel != 0.0 ) image_xscale = sign( x_shot_vel )
	
	var bullet = instance_create_layer( x,y,"instances",player_projectile )
	bullet.direction = point_direction( 0,0,x_shot_vel,y_shot_vel )
	bullet.speed = bullet_speed
	bullet.image_angle = bullet.direction + proj_dir_add
	
	if( y_shot_vel < 0.0 ) image_index = 8
	else if( y_shot_vel > 0.0 ) image_index = 9
	// else if( xShotVel < 0.0 ) image_index = 10
	// else if( xShotVel > 0.0 ) image_index = 11
	else image_index = 10
	
	trigger_item_event( items,item_count,0,1 )
}

if( ouch_frames )
{
	image_index = 11
}