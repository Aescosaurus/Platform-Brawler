hp -= other.damage

instance_destroy( other )

if( hp < 1 )
{
	instance_destroy()
}