animation_index += animation_speed;
if (animation_speed > 0) {
    if (animation_index >= animation_length) {
        animation_index -= animation_length;
    }
} else {
    if (animation_index < 0) {
        animation_index += animation_length;   
    }
}
