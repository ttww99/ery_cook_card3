/// @description Insert description here
// You can write your code in this editor
if(global.battle_fellow_turn==seq_imsi && !instance_exists(obj_battle_back_ani)){

//if(global.battle_fellow_turn==front_seq-1 && !instance_exists(obj_battle_back_ani)){
	global.imsi_with1=seq
	with(obj_char_skill){
		//show_message("! "+string(num)+string(" ")+string(global.imsi_with1))
		if(num==global.imsi_with1){//other.seq
			if(selected==1){
				global.imsi_with2=skill_target(num)
				a=instance_create_depth(room_width/2,0,-97,obj_battle_back_ani)
				with(a){
					fellow_seq=global.imsi_with1
					fellow_hp=global.char_hp[global.imsi_with1]
					skill=other.num
					//show_message(skill)
					enemy_seq=global.imsi_with2
					enemy_hp=global.enemy_hp[global.imsi_with2]
					//show_message(fellow_seq)
				}
				//show_message(string(other.front_seq)+string("  번쨰인 ")+string(other.seq))
				//break;
			}
		}
	}
	/*
	global.battle_fellow_turn++
	if(global.char_party_num<global.battle_fellow_turn){
		global.battle_turn+=1
		global.battle_fellow_turn=-2
	}
	*/
}
