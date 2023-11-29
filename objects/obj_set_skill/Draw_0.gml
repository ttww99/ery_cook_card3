
//draw_set_font(Font1)
if(global.skill_current_page==page){

	if(global.skill_list[skill_num].skill_n!=0)
		draw_sprite(spr_skill,skill_num,x,y)
	else
		draw_sprite_ext(spr_skill,skill_num,x,y,1,1,0,c_gray,0.9)
	
	draw_set_font(font_bold)
	draw_set_halign(fa_center)
	draw_text_ext_transformed(x,y+sprite_height/4,string("X")+string(global.skill_list[skill_num].skill_n),24,24,2,2,0)
	
	if(skill_show==1){
		draw_sprite(spr_skill_selected,0,x,y)
	/*global.skill_ins_clicked==skill_num*/
		//show_message("err")
		//draw_sprite(spr_skill_selected,0,x,y)
		draw_sprite(spr_skill,skill_num,room_width*5/8,room_height/8+room_height/12)
		draw_set_halign(fa_left)
		draw_text(room_width*11/16,room_height/8+room_height/12,number_to_skill_ins(skill_num))
		
	}
	
	if(global.char_list[global.skill_apply_target].char_skill1==skill_num)
		draw_sprite(spr_skill_equiped,1,x-sprite_xoffset,y-sprite_yoffset)
	if(global.char_list[global.skill_apply_target].char_skill2==skill_num)
		draw_sprite(spr_skill_equiped,2,x-sprite_xoffset,y-sprite_yoffset)	
	


}



//draw_text(x-sprite_width/2,y-sprite_height/2,card_name)
//draw_text(x-sprite_width/2,y+sprite_height/2,card_ins)



