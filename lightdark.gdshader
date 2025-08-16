shader_type canvas_item;

uniform float brightness;

void fragment() {
	vec4 input_color = texture(TEXTURE, UV);
	input_color.rgba *= brightness;
	COLOR = input_color;
}

