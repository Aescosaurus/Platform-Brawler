event_inherited()

item = gen_rand_item()

desc = item_list.descs[? item]
// print( desc )

buy_dist = 12

cost = irandom_range( 5,7 ) // from 7-9

if( check_global( "chal4" ) ) cost *= 2