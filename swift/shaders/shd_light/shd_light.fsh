varying vec2 pos;

uniform vec2 u_pos;
uniform vec3 u_color;

uniform float u_size; // Light Size

void main() {
	vec2 dis = pos - u_pos;
	float strength = 2./(sqrt(dis.x*dis.x + dis.y*dis.y + u_size*u_size) - u_size);
    gl_FragColor = vec4(strength*u_color,1.);
}
