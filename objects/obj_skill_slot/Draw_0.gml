/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x,y,1,1,0,color,1)
if(skill_slot==1){
	draw_sprite_ext(spr_skill,global.char_list[global.skill_apply_target].char_skill1,x-sprite_xoffset+64,y,1,1,0,c_white,1)
	draw_set_halign(fa_left)
	draw_text(x,y,number_to_skill_ins(global.char_list[global.skill_apply_target].char_skill1))
}
else if(skill_slot==2)
{
	draw_sprite_ext(spr_skill,global.char_list[global.skill_apply_target].char_skill2,x-sprite_xoffset+64,y,1,1,0,c_white,1)
	draw_set_halign(fa_left)
	draw_text(x,y,number_to_skill_ins(global.char_list[global.skill_apply_target].char_skill2))
}



