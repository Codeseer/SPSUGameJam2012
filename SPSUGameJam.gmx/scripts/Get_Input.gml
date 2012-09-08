var k1, k2;

k1 = Get_Input_Keys(argument0, true);
k2 = Get_Input_Keys(argument0, false);

if (os_browser != browser_not_a_browser || os_type != os_windows) // in a browser, or on a platform that isn't windows
    return keyboard_check(k1) || keyboard_check(k2);
else {
    if (!global.use_joystick) {
        return keyboard_check(k1) || keyboard_check(k2);
    } else {
        return Get_Input_Joypad(argument0);
    }
}
