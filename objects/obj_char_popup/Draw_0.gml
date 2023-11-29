/// @description Insert description here
// You can write your code in this editor
draw_self()
if(imsi_save!=0){
	draw_sprite_ext(spr_char_sd,imsi_save,x-sprite_xoffset*5/8,y-sprite_yoffset/2,1/4,1/4,0,c_white,1)
	draw_text(x-sprite_xoffset/4,y-sprite_yoffset/2,string("이름 : ")+string(global.char_list[imsi_save].char_name))
	draw_text(x-sprite_xoffset/4,y-sprite_yoffset/2+32,string("배경 설명 : ")+string(global.char_list[imsi_save].char_ins))

	draw_sprite_ext(spr_skill,global.char_list[imsi_save].char_skill1,x-sprite_xoffset*5/8,room_height*7/9,1,1,0,c_white,1)
	draw_sprite_ext(spr_skill,global.char_list[imsi_save].char_skill2,x-sprite_xoffset*5/8,room_height*8/9+room_height/36,1,1,0,c_white,1)
	
	draw_text(x-sprite_xoffset*4/8,room_height*7/9,number_to_skill_ins(global.char_list[imsi_save].char_skill1))
	draw_text(x-sprite_xoffset*4/8,room_height*8/9+room_height/36,number_to_skill_ins(global.char_list[imsi_save].char_skill2))
}
else{
	draw_sprite_ext(spr_char_sd,show_hero_save,x-sprite_xoffset*5/8,y-sprite_yoffset/2,1/4,1/4,0,c_white,1)
	draw_text(x-sprite_xoffset/4,y-sprite_yoffset/2,string("이름 : ")+string(global.char_list[global.show_hero].char_name))
	draw_text(x-sprite_xoffset/4,y-sprite_yoffset/2+32,string("배경 설명 : ")+string(global.char_list[global.show_hero].char_ins))
	
	if(show_hero_save!=-1){
	draw_sprite_ext(spr_skill,global.char_list[show_hero_save].char_skill1,x-sprite_xoffset*5/8,room_height*7/9,1,1,0,c_white,1)
	draw_sprite_ext(spr_skill,global.char_list[show_hero_save].char_skill2,x-sprite_xoffset*5/8,room_height*8/9+room_height/36,1,1,0,c_white,1)
	
	draw_text(x-sprite_xoffset*4/8,room_height*7/9,number_to_skill_ins(global.char_list[show_hero_save].char_skill1))
	draw_text(x-sprite_xoffset*4/8,room_height*8/9+room_height/36,number_to_skill_ins(global.char_list[show_hero_save].char_skill2))
	}
}


/*
draw_text(130,880,imsi_save)
draw_text(130,910,show_hero_save)
draw_text(130,940,global.show_hero)

draw_text(100,880,place_meeting(mouse_x,mouse_y,obj_char_select_ori_sq))
draw_text(100,910,place_meeting(mouse_x,mouse_y,obj_char_select_sq))
draw_text(100,940,place_meeting(mouse_x,mouse_y,obj_spr_sel_page))
draw_text(100,970,string("x : ")+string(mouse_x)+string("   y: ")+string(mouse_y))
*/


