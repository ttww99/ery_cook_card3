/// @description Insert description here
// You can write your code in this editor

//global.battle_turn+=1
global.battle_turn_pre+=1
global.battle_fellow_turn=-1

for(global.imsi=3;global.imsi>=0;global.imsi--){
	with(obj_battle_character){
		//show_message(string("aaaa : ")+string(seq)+string("   ")+string(global.party[global.imsi]))
		//show_message(global.imsi-1)
		if(seq==global.party[global.imsi].seq){
			
			if(skill_active==1){
				global.skill_front_seq=global.imsi//번째에 있는거
				//show_message(string("i : ")+string(global.imsi-1))
				//show_message(string("f_t : ")+string(global.battle_fellow_turn))
				global.battle_fellow_turn=global.imsi
				//show_message(string("felllow_tr : ")+string(global.battle_fellow_turn))
				global.imsi=0;
				break;
			}
		}
	}
}


i=0
with(obj_char_skill){
	if(selected=1)
		other.i+=1;
	
}
//show_message(i)
if(i==0){
	global.battle_fellow_turn=-2
	global.battle_turn+=1
	//show_message(global.battle_turn)
//	show_message(global.battle_turn_pre)
	}
	
	
