/// @description Insert description here
// You can write your code in this editor
if(mouse_x<=x+sprite_xoffset/4 && mouse_x>=x-sprite_xoffset/4 &&
mouse_y<=y+sprite_yoffset/4 && mouse_y>=y-sprite_yoffset/4
&& global.character_select==-1
&& int64((char_spr_num-1)/3)+1==global.page_current
){
	global.show_hero=char_spr_num
	double_click+=1
	alarm[0]=20
	if(double_click>=2)
		global.character_select=char_spr_num
}
//global.show_hero=0
//show_message(global.character_select)



