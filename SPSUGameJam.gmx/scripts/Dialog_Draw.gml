draw_set_font(Dialog);
lines = (floor(string_length(text)/25)+1)
box_height = 16*lines;
box_width = min(string_width(text),150);
draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(x-5,y-5,x+box_width+5,y+box_height+5,false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text_ext(x,y,text,16,150);
