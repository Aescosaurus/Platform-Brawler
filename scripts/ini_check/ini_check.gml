var data = argument0

ini_open( working_directory + "Save.ini" )

var result = ini_read_real( "achieve",data,0 )

ini_close()

return( result )