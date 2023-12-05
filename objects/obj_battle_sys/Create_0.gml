/// @description Insert description here
// You can write your code in this editor
//window_set_fullscreen(1)

global.battle_fellow_turn=-1//아군 1234 턴
global.battle_enemy_turn=0

global.battle_turn=0
global.battle_turn_draw=0
global.battle_turn_pre=0

global.card_deleted_index=0

global.card_hand=0//초기 손퍂 수
global.card_hand_max=10
global.card_hand_next=0

global.enemy_seq[1]=0
global.enemy_seq[2]=0
global.enemy_seq[3]=0
global.enemy_seq[4]=0

global.front_seq_imsi=0
global.skill_front_seq=0

global.battle_card_ingredient[1]=0
global.battle_card_ingredient[2]=0
global.battle_card_ingredient[3]=0
global.battle_card_ingredient[4]=0
global.battle_card_ingredient_sum=0


for(global.imsi=0;global.imsi<global.party_max;global.imsi++){//아군 캐릭터 새성
	a=instance_create_depth(room_width*13/32-(global.imsi)*180,room_height/2,-100,obj_battle_character)
	with(a){
		depth=-90
			seq=global.party[global.party_max-global.imsi-1].seq//global.imsi
			hp=global.char_list[seq].char_hp
			seq_imsi=3-global.imsi
			if(seq!=0){
				front_seq=global.front_seq_imsi+1
				global.front_seq_imsi++
			}
	}
}
//show_message(global.card_list_num)


	ds_list_delete(global.card_no_seq,0)
	randomize()
	ds_list_shuffle(global.card_no_seq)
//0을 제일 앞에 주기위한 발악	
	imsi=ds_list_find_value(global.card_no_seq,0)
	ds_list_replace(global.card_no_seq,0,imsi)
	ds_list_add(global.card_no_seq,imsi)
////
for(global.imsi=0;global.imsi<global.card_list_num;global.imsi++){//카드 생성

	a=instance_create_depth(room_width-100,room_height/2,-100,obj_card2)
	with(a){
		depth=-95+global.imsi
		card_num=ds_list_find_value(global.card_no_seq,global.imsi+1)
		card_sequence=global.imsi
		//image_angle=(card_sequence-5)*-5

		if(global.imsi<global.card_hand_max){
			step=1
					global.card_hand_next+=1
					//global.card_hand+=1
		}
		global.card_hand=global.card_hand_max
	}
	
	
	
}

global.front_seq_imsi=0
if(global.battle_paze[1]+global.battle_paze[2]+global.battle_paze[3]+global.battle_paze[4]!=0){//적 생성
	for(global.imsi=4;global.imsi>0;global.imsi--){
		a=instance_create_depth(room_width*31/32-(global.imsi)*180,room_height/2,-85,obj_enemy)	
		with(a){
			enemy_no=global.battle_paze[global.imsi]
			hp=global.enemy_list[enemy_no].enemy_hp
			attack=global.enemy_list[enemy_no].enemy_atk
			if(global.battle_paze[5-global.imsi]!=0){
				seq=global.front_seq_imsi+1
				global.enemy_hp[seq]=hp
				global.enemy_seq[seq]=enemy_no
				global.front_seq_imsi++
			}
		}	
	}
}

