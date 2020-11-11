var dt = delta_time / 1000000

if( dt > 0.3 ) dt = 0.04

return( dt * global.time_scale )