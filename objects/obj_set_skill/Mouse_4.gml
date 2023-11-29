/// @description Insert description here
// You can write your code in this editor
obj_set_skill_sys.skill_click_imsi=0

if(global.skill_current_page==page && !instance_exists(obj_skill_changed) && global.skill_slot_clicked!=0){
	if(global.skill_ins_clicked!=skill_num){
		global.skill_ins_clicked=skill_num
		if(global.skill_slot_clicked==1 && global.skill_ins_clicked!=global.char_list[global.skill_apply_target].char_skill2)
			global.char_list[global.skill_apply_target].char_skill1=skill_num
		else if(global.skill_slot_clicked==2 && global.skill_ins_clicked!=global.char_list[global.skill_apply_target].char_skill1)
			global.char_list[global.skill_apply_target].char_skill2=skill_num
	}
		
	/*else{//same click
		if(global.animation_not_end==1){
			obj_set_skill_sys.skill_adapt_move=0
			global.skill_ins_clicked=0
		
			obj_set_skill_sys.skill_click_imsi=-1
			instance_destroy(obj_skill_change)
			global.animation_not_end=0
		}
	}*/
}


