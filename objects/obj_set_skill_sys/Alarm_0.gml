/// @description Insert description here
// You can write your code in this editor
	if(skill_move<=room_width/5){
		skill_move+=16
		alarm[0]=1	

	}
	
	if(skill_alpha<=1){//ill move-longest animation
		skill_alpha+=0.02
		alarm[0]=1

	}else
		global.animation_not_end=1
	

