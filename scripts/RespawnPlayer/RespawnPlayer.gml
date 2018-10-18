/// @param_id

var thePlayer = argument0

var longestLen = 0
var farthestSpawner = instance_find( Respawner,0 )

for( var i = 0; i < instance_number( Respawner ); ++i )
{
	var curRespawner = instance_find( Respawner,i )
	var addedLens = 0
	
	for( var j = 0; j < instance_number( Player ); ++j )
	{
		var pl = instance_find( Player,j )
		var xDiff = pl.x - curRespawner.x
		var yDiff = pl.y - curRespawner.y
		var tempLen = GetLength( xDiff,yDiff )
		
		addedLens += tempLen
		
		// if( tempLen < longestLen )
		// {
		// 	longestLen = tempLen
		// 	farthestSpawner = curRespawner
		// }
	}
	
	if( addedLens > longestLen )
	{
		longestLen = addedLens
		farthestSpawner = curRespawner
	}
}

thePlayer.x = farthestSpawner.x
thePlayer.y = farthestSpawner.y
thePlayer.hp = 3

// TODO: Make some kind of pop or explosion animation play for a second where player respawns.