/// @description card draw
// You can write your code in this editor
show_debug_message("2")
var shorten=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21

with(obj_card2)
if(card_sequence==global.card_hand_next){
	if(point_distance(x,y,shorten,
	1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)>4){
		direction=point_direction(x,y,shorten,1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
		dis=point_distance(x,y,shorten,1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9)
		speed=dis/8
		alarm[2]=1
	}else{
		x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/21
		//y=1/8192*sqr(x-room_width/2)+room_height/5*4		
		y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/10*9
		speed=0
		step=2
		global.card_hand_next+=1
		//global.card_delay=0
		global.card_hand+=1
		alarm[1]=1
	}

}





