/// @description Insert description here
// You can write your code in this editor
if(card_sequence<global.card_hand_next){
global.card_deleted_index=card_sequence
global.card_hand-=1
	global.card_hand_next-=1

/*
with(obj_card)
	for(global.imsi=0;global.imsi<global.card_list_num;global.imsi++)
	if(global.imsi==card_num && card_sequence>=global.card_hand_next){
		show_message(string("err1")+ string(card_sequence)+string(" ")+string(card_num))	
		card_sequence-=1
		show_message(string("err2")+ string(card_sequence)+string(" ")+string(card_num))	
	}
*/


instance_destroy()
}


