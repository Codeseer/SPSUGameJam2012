switch (state) {
    case power1:
        laser_key = key_btn1;
        break;
    case power2:
        laser_key = key_btn2;
        break;
    case power3:
        laser_key = key_btn3;
        break;
}

laser_timer = 0;

if (range[1]) {
    laser_size = 10;
} else {
    laser_size = 3;
}
