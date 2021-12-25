varying vec2 pos;
varying vec4 col;

uniform vec2 u_pos;

uniform float u_size; // Light Size

void main() {
	vec2 dis = pos - u_pos;
	float strength = min(1.,u_size/(sqrt(dis.x*dis.x + dis.y*dis.y + u_size*u_size) - u_size));
    gl_FragColor = col*vec4(vec3(strength),1.);
}
