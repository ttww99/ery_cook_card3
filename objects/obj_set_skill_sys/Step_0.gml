/// @description Insert description here
// You can write your code in this editor

if(global.skill_slot_clicked!=0 && skill_slot_click_imsi==0){
	skill_slot_click_imsi=1		
	alarm[0]=1
	
}

if(global.skill_ins_clicked==0 && skill_move!=0){
	skill_move=0	
	skill_alpha=0
	skill_click_imsi=0
}
	
if(global.skill_apply_target!=skill_apply_imsi){
	skill_apply_imsi=global.skill_apply_target	
	skill_adapt_move=0
	global.animation_not_end=0
	
}

if(global.skill_apply_target!=0 && !instance_exists(obj_skill_slot)){
	for(global.imsi=1;global.imsi<=2;global.imsi++){
		a=instance_create_depth(room_width*2/5,room_height/8+room_height/6*(2+global.imsi),-90,obj_skill_slot)
		with(a)
			skill_slot=global.imsi	
	}
}
	
	