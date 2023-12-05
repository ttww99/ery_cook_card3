/// @description replace after draw
// You can write your code in this editor
//show_message("3")
//var room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
if(card_sequence==0 || card_sequence==8)
show_debug_message(string("seq : ")+string(card_sequence)+string("  3-1"))
		if(global.card_case==3){
			global.card_case=32
			with(obj_card2)
			if(card_sequence>global.card_deleted_index)
				card_sequence-=1
				global.card_hand_next-=1
		}
		
		with(obj_card2)
		if( point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
		1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9
		)>=4 && card_sequence<global.card_hand_next)
		
		{
		//show_message("1")
		if(card_sequence==0 || card_sequence==8)
		show_debug_message(string("seq : ")+string(card_sequence)+string(" 3-2"))
			direction=point_direction(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
			dis=point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21,
			1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
			//show_message(dis)
			speed=max(dis/16,1)
			if(card_sequence==0 || card_sequence==8)
			show_debug_message(string("seq : ")+string(card_sequence)+string(" dis : ")+string(dis))
			//show_debug_message()
			alarm[3]=1
		
		}else{
			speed=0
			if(card_sequence==0 || card_sequence==8)
			show_debug_message(string("seq : ")+string(card_sequence)+string("  3-3"))
				//show_message("2")
			//show_message(card_sequence)
			
			global.card_case=0			
			if(card_sequence<global.card_hand_next){
				x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21
				//y=1/8192*sqr(x-room_width/2)+room_height/10*9 //대체 왜 이런 실수를 2023.11.29
				y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9
				speed=0
				if(card_sequence==0 || card_sequence==8)
				show_debug_message(string("seq : ")+string(card_sequence)+string(" 3-4"))
				
			}


			global.card_delay=0

			//ds_list_delete(global.card_no_seq,global.card_deleted_index)


		}


