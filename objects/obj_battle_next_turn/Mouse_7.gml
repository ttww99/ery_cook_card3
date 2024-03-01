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
			//seq몇번째 캐릭터   
			//global.imsi 앞에서 몇번째
			
			show_message("seq : "+string(seq)+"  "+string(global.imsi)+" err "+string(skill_active))
			if(skill_active==1 || skill_active==0){
				//show_message("errrr")
				global.skill_front_seq=global.imsi//번째에 있는거
				//show_message(string("i : ")+string(global.imsi-1))
				//show_message(string("f_t : ")+string(global.battle_fellow_turn))
				global.battle_fellow_turn=global.imsi
				
				show_message(string("felllow_tr : ")+string(global.battle_fellow_turn))
				global.imsi=0;
				break;
			}
		}
	}
}


show_message("final battle_turn : "+string(global.battle_fellow_turn))
i=0

with(obj_char_skill){
	if(selected=1 /*|| selected==0*/)//caution
		other.i+=1;
	//	show_message(string(other.i)+string("other i"))
	
}

with(obj_battle_character){

global.battle_fellow_turn=-1
global.battle_enemy_turn=1

}

//show_message(i)
if(i==0){
	global.battle_fellow_turn=-2
	global.battle_turn+=1
	//show_message(global.battle_turn)
//	show_message(global.battle_turn_pre)
	}
	
	
