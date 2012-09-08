if(mouse_check_button(mb_left)) {
    if(collision_point(mouse_x,mouse_y,id,false,false))
    {
        return true;
    }
}
return false;
