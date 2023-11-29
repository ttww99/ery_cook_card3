/// @description Insert description here
// You can write your code in this editor


ani_x+=8
if(ani_x==160){
	//global.enemy_hp[global.enemy_seq[enemy_seq]]+=skill_trigger(skill)
	global.enemy_hp[skill_target(skill)]+=skill_trigger(skill)
	//show_message(skill_target(skill))
	//show_message(global.enemy_seq[skill_target(skill)])
	//show_message(global.enemy_hp[global.enemy_seq[skill_target(skill)]])
	with(obj_enemy){
		global.enemy_hp[global.enemy_seq[skill_target(other.skill)]]=hp
	}
//show_message(global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)
}
if(ani_x>=320+64){
		global.battle_fellow_turn--;

	for(;global.battle_fellow_turn>=0;global.battle_fellow_turn--){
		if(global.party[global.battle_fellow_turn].seq!=0)
			if(global.party[global.battle_fellow_turn].skill_active==1){
					//show_message("suc")
					//show_message(global.battle_fellow_turn)
					//show_message(global.party[global.battle_fellow_turn].seq)
					//show_message(global.party[global.battle_fellow_turn].skill_active)
					break;
				}
		 
		
		
		
		
		
	}

		if(global.battle_fellow_turn<0){
			//global.battle_turn+=1
			//obj_enemy.set_attack=0
		//	global.battle_enemy_turn+=1
			global.battle_enemy_turn=1
		}

	instance_destroy()
	
	
	
}

