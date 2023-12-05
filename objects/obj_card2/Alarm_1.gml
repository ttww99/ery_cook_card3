/// @description after alarm2
// You can write your code in this editor
show_debug_message("1")
var shorten=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21
//show_message("1")
		with(obj_card2)
		if(card_sequence<global.card_hand_next)
		
		if(point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
		1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)>4){

			direction=point_direction(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
			dis=point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
			speed=dis/8

			alarm[1]=1
		
		}else{
			//with(obj_card2)
			if(card_sequence<global.card_hand_next){
				x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21
				//y=1/8192*sqr(x-room_width/2)+room_height/5*4
				y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9
			}
			speed=0
			global.card_delay=0
			//ds_list_delete(global.card_no_seq,global.card_deleted_index)

		}

// /기존11 -> 21 카드사이의 거리