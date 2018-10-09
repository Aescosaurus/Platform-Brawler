/// @description move and shoot and such

var dt = GetDT()

// movement code
var xMove = CheckAxis( myDevice,gp_axislh,ord( "A" ),ord( "D" ) ) * moveSpeed * dt
var yMove = CheckAxis( myDevice,gp_axislv,ord( "W" ),ord( "S" ) ) * moveSpeed * dt

var xDir = GetMagnitude( xMove )
var yDir = GetMagnitude( yMove )

if( tilemap_get_at_pixel( tilemap,x + halfWidth * xDir,y ) <= 0 )
{
	x += xMove
}

if( tilemap_get_at_pixel( tilemap,x,y + halfHeight * yDir ) <= 0 )
{
	y += yMove
}
