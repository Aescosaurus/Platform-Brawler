/// @param_maxTime

var tim = instance_create_layer( -999,-999,"InvisObjectLayer",Timer )
tim.maxTime = argument0 * 24.0
return( tim )