/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_32)
draw_set_color(c_white)
//draw_text(100,120,string("page_cuuyu : ")+string(global.page_current))


draw_text(mouse_x+64,mouse_y,instance_place(mouse_x,mouse_y,obj_char_select_sq))
draw_text(mouse_x+64,mouse_y+32,place_meeting(mouse_x,mouse_y,obj_char_select_sq))


