/// @description Insert description here
// You can write your code in this editor
if(change==1 && !instance_exists(obj_skill_changed)){
global.char_list[global.skill_apply_target].char_skill1=global.skill_ins_clicked
instance_create_depth(room_width*2/5-room_width/16,room_height/8,-90,obj_skill_changed)
//global.skill_ins_clicked=0


}
if(change==2 && !instance_exists(obj_skill_changed)){
	global.char_list[global.skill_apply_target].char_skill2=global.skill_ins_clicked
	instance_create_depth(room_width*2/5-room_width/16,room_height/8+room_height/6,-90,obj_skill_changed)

//global.skill_ins_clicked=0
	
	
}



