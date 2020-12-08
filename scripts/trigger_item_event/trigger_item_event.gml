var items_arr = argument0
var n_items = argument1
var event = argument2
var evt_data = argument3

for( var i = 0; i < n_items; ++i )
{
	items_arr[i].evt_data = evt_data
	with( items_arr[i] )
	{
		event_user( event )
	}
}