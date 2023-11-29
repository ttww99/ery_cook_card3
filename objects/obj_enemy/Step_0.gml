/// @description Insert description here
// You can write your code in this editor

if(set_attack!=global.battle_turn){//attack_type
	randomize()
	attack_type=irandom(2)+1
	set_attack=global.battle_turn
	switch(enemy_no){
		case 1:
			switch(attack_type){
				case 1:
				enemy_turn_attack=3
				break;
				
				case 2:
				enemy_turn_attack=4
				break;
				
				case 3:
				enemy_turn_attack=6
				break;	
			}
		break;	
	}
}

global.imsi_with3=enemy_turn_attack
global.imsi_with4=seq

if(global.battle_fellow_turn<0){
	//show_debug_message(string("err")+string(global.battle_enemy_turn==seq))
if(global.battle_enemy_turn==seq && !instance_exists(obj_battle_back_enemy)){
	//show_debug_message("errrrrrrrrrrrrrrrrrr")
	global.imsi_with1=enemy_skill_target()//1//몇번째//뒤에서부터 0123
	//show_message(global.imsi_with1)
		//if(seq=global.imsi_with1){//other.seq

				global.imsi_with2=global.imsi_with1//1//attack_target(num)
				a=instance_create_depth(room_width/2,0,-97,obj_battle_back_enemy)
				with(a){
					fellow_seq=global.imsi_with2
					fellow_hp=global.char_hp[global.imsi_with2]//적이 보는 아군의 hp

					enemy_attack_damage=global.imsi_with3
					//show_message(string("enemy seq : ")+string(global.imsi_with4))
					enemy_seq=other.seq
					enemy_hp=global.enemy_hp[global.imsi_with1]//아군이 보는 적의 hp
				}
		}//
}
//show_debug_message(string(global.battle_enemy_turn)+string(" : ")+string(instance_exists(obj_battle_back_enemy))+string(" : ")+string(seq))
