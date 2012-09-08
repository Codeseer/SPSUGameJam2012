var press, release;

press = false;
release = false;

if (Get_Input_Pressed(key_left)) {
    lateral_max = -lateral_cap;
    press = true;
}

if (Get_Input_Pressed(key_right)) {
    lateral_max = lateral_cap;
    press = false;
}

if (Get_Input_Released(key_left) && Get_Input(key_right)) {
    lateral_max = lateral_cap;
    release = true;
}

if (Get_Input_Released(key_right) && Get_Input(key_left)) {
    lateral_max = -lateral_cap;
    release = true;
}

if (Get_Input(key_left) || Get_Input(key_right)) {
    lateral_pressed = true;
} else {
    lateral_pressed = false;
}

if (!press && !release && lateral_pressed) {
    if (Get_Input(key_left)) {
        lateral_max = -lateral_cap;
    } else if (Get_Input(key_right)) {
        lateral_max = lateral_cap;
    }
}
