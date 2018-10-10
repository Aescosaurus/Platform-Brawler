/// @description move and shoot and such

var dt = GetDT()

// -----Movement code!-----
var xMove = CheckAxis( myDevice,gp_axislh,ord( "A" ),ord( "D" ) ) * moveSpeed * dt
var yMove = 0.0
if( canJump || ( xMove != 0.0 && GetMagnitude( xMove ) != wallDir ) )
{
	if( CheckAxis( myDevice,gp_axislv,ord( "W" ),ord( "S" ) ) < 0.0 )
	{
		jumping = true
		image_index = 4
	}
}

// Move up if jumping.
if( jumping )
{
	yMove -= jumpPower * dt
}

// Update gravity things.
grav += gravAcc * dt
yMove += grav * dt

if( grav > jumpPower ) image_index = 5

// Cache magnitude of test move variables.
var xDir = GetMagnitude( xMove )
var yDir = GetMagnitude( yMove )

if( xDir != 0 )
{
	image_xscale = xDir
	// Handle walk animation.
	image_index += 0.4
	if( image_index > 3 ) image_index = 0
}

// Check if place where we're moving is free and move if so.
if( tilemap_get_at_pixel( tilemap,x + xMove + halfWidth * xDir,y ) <= 0 )
{
	x += xMove
	wallDir = 0
}
else if( tilemap_get_at_pixel( tilemap,x + xMove / 3 + halfWidth * xDir,y ) <= 0 )
{
	x += xMove / 3
	wallDir = 0
}
else
{
	grav = 0.0
	jumping = false
	canJump = false
	wallDir = xDir
	image_index = 7
}

if( tilemap_get_at_pixel( tilemap,x,y + yMove + halfHeight * yDir ) <= 0 )
{
	y += yMove
}
else if( yDir > 0 )
{
	grav = 0.0
	jumping = false
	canJump = true
	if( image_index > 3 ) image_index = 6
}


var xShotVel = CheckAxis( myDevice,gp_axisrh,vk_left,vk_right )
var yShotVel = CheckAxis( myDevice,gp_axisrv,vk_up,vk_down )

if( abs( xShotVel ) > abs( yShotVel ) )
{
	xShotVel = GetMagnitude( xShotVel )
	yShotVel = 0.0
}
else
{
	xShotVel = 0.0
	yShotVel = GetMagnitude( yShotVel )
}

// -----Shooting code!-----
if( shotTimer.curTime > shotTimer.maxTime &&
	( xShotVel != 0.0 || yShotVel != 0.0 ) )
{
	shotTimer.curTime = 0.0
	
	var bullet = instance_create_layer( x,y,"MainLayer",PlayerBullet )
	bullet.playerTeam = myDevice
	bullet.xVel = xShotVel * bulletMoveSpeed
	bullet.yVel = yShotVel * bulletMoveSpeed
	
	if( xShotVel > 0.0 ) bullet.image_angle = 0
	else if( xShotVel < 0.0 ) bullet.image_angle = 180
	else if( yShotVel > 0.0 ) bullet.image_angle = 270
	else if( yShotVel < 0.0 ) bullet.image_angle = 90
}