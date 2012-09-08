if(Check_Button_Pressed()) {
    button_started = true;
    sprite_index = button_sprite_1;
}
else if(Check_Button() && button_started)
{    
    sprite_index = button_sprite_2;
}
else if(Check_Button_Released())
{
    if (button_started) {
        script_execute(button_action);
    }
}
else
{    
    sprite_index = button_sprite_1;
}
if(mouse_check_button_released(mb_left)) {    
    button_started = false;
}
