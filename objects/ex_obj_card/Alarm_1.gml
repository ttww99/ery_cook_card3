/// @description Insert description here
// You can write your code in this editor

if(card_sequence>global.card_deleted_index && card_sequence<=global.card_hand_next){
	
	//show_message("alarm1")
	if(point_distance(x,y,room_width/21+room_width/11*(card_sequence-1),room_height/4*3)>4){
			//show_message(string(card_sequence)+string("  : ")+string(global.card_hand_next))
			direction=point_direction(x,y,room_width/21+room_width/11*(card_sequence-1),room_height/4*3)
			dis=point_distance(x,y,room_width/11*(card_sequence-1),room_height/4*3)
			speed=4
			alarm[1]=1

	}else{
		x=room_width/21+room_width/11*(card_sequence-1)
		y=room_height/4*3
	speed=0
	card_sequence-=1	
	global.card_re_place=1
	//show_message(global.card_re_place)
	}

}


