/// @description Insert description here
// You can write your code in this editor
//show_message(string("card_sequence : ")+string(card_sequence))
if(ddrag==1){
if(des==0 && mouse_y<=room_height/9*5 && 
global.double_click_prevent==1 && global.card_delay==1){
//	show_message(string("syc : ")+string(card_sequence))
	
	global.card_hand-=1
	global.card_case=3
	//global.card_delay=0
	global.double_click_prevent=0

			des=1
	ddrag=0
	
	alarm[4]=1
}
else{
	//show_message(string("card_sequence : ")+string(card_sequence))
	/*
	show_message("else")
	show_message(ddrag)
	show_message(mouse_y<=room_height/9*5)
	show_message(global.double_click_prevent==1)
	show_message(global.card_delay==1)
	*/
ddrag=0
		x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
		y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4
		global.card_delay=0
		global.double_click_prevent=0
		//global.card_deleted_index=-1

	/*
	if(des==0 && card_sequence<global.card_hand_next){
		show_message("errrrrrrrr1")
		ddrag=0
		x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
		y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4
		global.card_delay=0
	}else{
		show_message("errrrrrrrr2")
		if(card_sequence<global.card_hand_next){
			ddrag=0
			des=0
		}
	}*/
	}
}
//show_message("loop")
	//global.card_delay=0
	//global.double_click_prevent=0
	//ddrag=0
	