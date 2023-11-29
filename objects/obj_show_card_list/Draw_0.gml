/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font1)
draw_set_color(c_black)

draw_self()
draw_text(x-sprite_width/2,y,string("카드번호 : ")+string(show_num))
draw_text(x,y-8,string("갯수 : ")+string(card_n))

//draw_text(x,y+8,string("in : ")+string(imsi))


