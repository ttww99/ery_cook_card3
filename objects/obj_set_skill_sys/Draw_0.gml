/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_character,global.skill_apply_target,room_width*2/5-skill_move,room_height/2,1,1,0,c_white,1-skill_alpha)
draw_sprite_ext(spr_character,global.skill_apply_target,room_width*2/5-skill_move,room_height/2,1,1,0,c_gray,min(skill_alpha,0.8))

if(global.skill_apply_target!=0){
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////room_height*13/18-skill_adapt_move
	
	//draw_sprite_ext(spr_skill,global.char_list[global.skill_apply_target].char_skill1,room_width*2/5-room_width/16,room_height/8+room_height*3/6-skill_adapt_move,1,1,0,c_white,1)
	//draw_sprite_ext(spr_skill,global.char_list[global.skill_apply_target].char_skill2,room_width*2/5-room_width/16,room_height/8+room_height*4/6/*room_height*16/18*//*room_height*15/18+room_height/36*/-skill_adapt_move,1,1,0,c_white,1)
	//draw_set_halign(fa_left)
	//draw_text(room_width*2/5,room_height/8+room_height*3/6-skill_adapt_move,number_to_skill_ins(global.char_list[global.skill_apply_target].char_skill1))
	//draw_text(room_width*2/5,room_height/8+room_height*4/6-skill_adapt_move,number_to_skill_ins(global.char_list[global.skill_apply_target].char_skill2))
	
}

draw_text(200,200,global.skill_ins_clicked)

/*
if(global.skill_ins_clicked!=0 && distance==skill_adapt_move){
	draw_sprite_ext(spr_char_sd,global.skill_apply_target,room_width*2/5-room_width/16,room_height*10/18,1/4,1/4,0,c_white,1)
	
	for(global.imsi=1;global.imsi<=2;global.imsi++){
	a=instance_create_depth(room_width*9/16,room_height/8+(global.imsi-1)*room_height/6,-90,obj_skill_change)
	with(a)
		change=global.imsi
	}

}
*/

