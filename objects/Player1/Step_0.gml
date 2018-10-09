/// @description move and shoot and such

var dt = GetDT()

// Movement code.
var xMove = CheckAxis( myDevice,gp_axislh,ord( "A" ),ord( "D" ) ) * moveSpeed * dt
var yMove = 0.0
if( canJump || ( xMove != 0.0 && GetMagnitude( xMove ) != wallDir ) )
{
	if( CheckAxis( myDevice,gp_axislv,ord( "W" ),ord( "S" ) ) < 0.0 )
	{
		jumping = true
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

// Cache magnitude of test move variables.
var xDir = GetMagnitude( xMove )
var yDir = GetMagnitude( yMove )

if( xDir != 0 )
{
	image_xscale = xDir
	image_index += 0.3
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
}