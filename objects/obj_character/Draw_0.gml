/// @description Insert description here
// You can write your code in this editor

//draw_sprite(spr_character,seq,x,y)
if(int64((char_spr_num-1)/3)+1==global.page_current){
	draw_sprite_ext(spr_character,char_spr_num,x,y,1/4,1/4,0,c_white,1)


draw_text(x,y-16,page)
draw_text(x,y,char_spr_num)

if(global.character_select!=-1){
	draw_sprite_ext(spr_char_portrait,global.character_select,mouse_x,mouse_y,1,1,0,c_white,0.7)
}	

draw_text(mouse_x+96,mouse_y,global.character_select)
}

