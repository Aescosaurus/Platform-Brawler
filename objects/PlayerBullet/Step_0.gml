/// @description move based on vel

var dt = GetDT()

x += xVel * dt
y += yVel * dt

if( deathTimer.curTime > deathTimer.maxTime ) instance_destroy( id,false )