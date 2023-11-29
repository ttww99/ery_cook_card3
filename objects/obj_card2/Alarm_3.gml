/// @description replace after draw
// You can write your code in this editor
//show_message("3")
//var room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11

		if(global.card_case==3){
			global.card_case=32
			with(obj_card2)
			if(card_sequence>global.card_deleted_index)
				card_sequence-=1
				global.card_hand_next-=1
		}
		
		with(obj_card2)
		if( point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11,
		1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4
		)>=4 && card_sequence<global.card_hand_next){
		//show_message(card_sequence)
			direction=point_direction(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4)
			dis=point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4)
			speed=max(dis/8,1)

			alarm[3]=1
		
		}else{
			speed=0
			//show_message(card_sequence)
			global.card_case=0			
			if(card_sequence<global.card_hand_next){
				x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
				y=1/8192*sqr(x-room_width/2)+room_height/5*4
				speed=0
			}


			global.card_delay=0

			//ds_list_delete(global.card_no_seq,global.card_deleted_index)


		}


