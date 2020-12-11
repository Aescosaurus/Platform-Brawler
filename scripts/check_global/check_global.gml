var check = argument0

if( !ds_map_exists( fake_global.data,check ) ) return( false )
else return( fake_global.data[? check] )