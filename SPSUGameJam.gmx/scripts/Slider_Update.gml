if(mouse_check_button_pressed(mb_left)) {
if (collision_point(mouse_x,mouse_y,id,false,false)) {
        offset = mouse_x - x;    
    }
}
//check if the mouse button is pressed.
if(mouse_check_button(mb_left)) {
    if(offset>-1) {
        //move the slider with the mouse
        x = max(min(mouse_x - offset,xstart + wb - w),xstart);
    }
}
if(mouse_check_button_released(mb_left)) {
    offset = -1;
    
    //start sliding to side closesest
    slider_start_gogo = x;    
    slider_left = x+w/2<halfway;
    slider_gogo = true;
}
//move to the left or right
if(slider_gogo) {
    position += 5;   
    var lerpen;
    lerpen = position/10; 
    if(lerpen>1)
    {
        position = 0;
        slider_gogo = false;
        script_execute(slider_action);
    }
    else {
        if(slider_left) {
            x = lerp(slider_start_gogo,xstart,lerpen);
        }
        else {
            x = lerp(slider_start_gogo,xstart+wb-w,lerpen);
        }    
    }
}
