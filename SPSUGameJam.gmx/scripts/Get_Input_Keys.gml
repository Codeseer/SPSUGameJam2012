var input, k1, k2;
input = argument0;

switch (input) {
    case key_btn1:
        k1 = key_btn1; k2 = key_btn1_alt;
        break;
    case key_btn2:
        k1 = key_btn2; k2 = key_btn2_alt;
        break;
    case key_btn3:
        k1 = key_btn3; k2 = key_btn3_alt;
        break;
    case key_btn4:
        k1 = key_btn4; k2 = key_btn4_alt;
        break;
    case key_jump:
        k1 = key_jump; k2 = key_jump_alt;
        break;
    case key_left:
        k1 = key_left; k2 = key_left_alt;
        break;
    case key_right:
        k1 = key_right; k2 = key_right_alt;
        break;
    case key_up:
        k1 = key_up; k2 = key_up_alt;
        break;
    case key_down:
        k1 = key_down; k2 = key_down_alt;
        break;
    default:
        k1 = input; k2 = input;
        break;
}

if (argument1) {
    return k1;
} else {
    return k2;
}
