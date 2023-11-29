/// @description Insert description here
// You can write your code in this editor


ani_x+=8
if(ani_x==160){
	//global.enemy_hp[global.enemy_seq[enemy_seq]]+=skill_trigger(skill)
	//show_message(enemy_attack_damage)
	
	//show_message(string("check : ")+string(global.char_hp[global.party[enemy_seq].seq]))
	
	//show_message(string("seq : ")+string(fellow_id_to_seq(global.imsi_with2)))
	//show_message(string("hp : ")+string(global.char_hp[global.imsi_with2]))

	global.char_hp[global.imsi_with2]-=enemy_attack_damage
	//global.char_hp[global.party[enemy_seq-1].seq]-=enemy_attack_damage
	
	//show_message(string("enemy seq : ")+string(enemy_seq))
	
	/*with(obj_battle_character){
		if(front_seq==other.enemy_seq){
			hp-=other.enemy_attack_damage
		}
	}*/
	
//show_message(global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)
}
if(ani_x>=320+64)	{

		if(global.battle_enemy_turn>=4){
			global.battle_enemy_turn=0
			global.battle_turn+=1
		}
		else{
			global.battle_enemy_turn++;
			//enemy_seq++
		}
instance_destroy()	
}

