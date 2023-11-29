/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_char_portrait,char_spr_num,x,y,1,1,0,c_white,1)
//draw_text(x,y,char_spr_num)
if(global.skill_apply_target==char_spr_num)
	draw_sprite(spr_skill_selected,0,x,y)
