/// @description Insert description here
// You can write your code in this editor
global.any_skill_active=1
if(global.battle_turn_pre==global.battle_turn){
	
	if(x-sprite_xoffset/2<mouse_x && x+sprite_xoffset/2>mouse_x &&
	y-sprite_yoffset/2<mouse_y && y+sprite_yoffset/2>mouse_y){
		if(selected==0){
			with(obj_char_skill){
			if(num==other.num)
				selected=0
			}
			selected=1
			
			with(obj_battle_character)
				if(seq==other.num){
					skill_active=1
					global.party[seq_imsi].skill_active=1
				}
		}else{
			with(obj_char_skill){
			if(num==other.num){
				selected=0
				//for(var i=0;i<4;i++)
				//	global.party[i].skill_active=0
				}
			}
			
			with(obj_battle_character)
				if(seq==other.num){
					skill_active=0
					global.party[seq_imsi].skill_active=0
				}
			
		}
	}


}
