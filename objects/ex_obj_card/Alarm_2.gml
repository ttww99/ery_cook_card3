/// @description card draw
// You can write your code in this editor

//show_message(string("next : ")+string(global.card_hand_next))
//show_message(card_sequence==global.card_hand_next)
//show_message(point_distance(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3))
with(obj_card)
if(card_sequence==global.card_hand_next){
	if(point_distance(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)>4){
		//show_message(string(card_sequence)+string(" : ")+string(global.card_hand_next))
		direction=point_direction(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)
		dis=point_distance(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)
		speed=max(8,dis/30)
		alarm[2]=1
	}else{
		x=room_width/21+room_width/11*card_sequence
		y=room_height/4*3		
		speed=0
		step=2
		//global.card_hand+=1
		//global.card_re_place=1
		global.card_hand_next+=1
	}

}





