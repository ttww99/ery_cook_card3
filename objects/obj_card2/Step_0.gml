/// @description Insert description here
// You can write your code in this editor
if(step==1){
	step=2
	alarm[0]=1
	
	
}


if(global.battle_turn_draw!=global.battle_turn && global.card_delay==0){
	global.card_delay=1
		global.battle_turn_draw=global.battle_turn		

	alarm[2]=1

	
}
if(global.card_case==3 && global.card_delay==0 && des==0){
	global.card_delay=1
//show_message("3")
	alarm[3]=1
	
}


if(card_sequence<global.card_hand_next)//카드 확대
	if(mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 && 
	mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12){
		//show_debug_message("err")
		mouse_on_show=1
		depth=-96
		if(imsi<32){
			imsi+=2
		}
	}
else{
	mouse_on_show=0
	depth=-95+card_sequence//v3 added
	imsi=0
}

if(ddrag==1){
	x=mouse_x
	y=mouse_y
	
}

/*
if(card_hand_detect!=global.card_hand && global.card_delay==0){//다시 자리 배치
	//show_message("errrr1")
	//alarm[1]=1
	card_hand_detect=global.card_hand

}

if(global.card_re_place==1 && global.card_delay==0){
	show_message("errrr2")
	global.card_re_place=0	
	//show_message("err")
	
	with(obj_card){
		if(card_sequence>=global.card_hand_next){
			card_sequence-=1
			show_message(string("err check : ")+string(card_sequence))
		}
	}//왜 아래껄로는 안되는거지??
	//if(card_sequence>=global.card_hand_next-1)
	//	card_sequence-=1
}
*/
