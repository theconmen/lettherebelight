shader_type canvas_item;


void fragment() {
	vec4 input_color = texture(TEXTURE, UV);
	COLOR.a = 0.2;
}

