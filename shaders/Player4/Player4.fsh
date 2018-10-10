//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 col = texture2D( gm_BaseTexture,v_vTexcoord );
	
	if( col.rgb == vec3( 0,168.0 / 255.0,0 ) ) gl_FragColor = vec4( 0.0,232.0 / 255.0,216.0 / 255.0,1.0 );
	else gl_FragColor = col;
}
