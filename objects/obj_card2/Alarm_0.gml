/// @description Insert description here
// You can write your code in this editor
var shorten=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
//show_message("0")
if(point_distance(x,y,shorten,
1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4)>4){
	step=1
	
	//show_message(point_distance(x,y,shorten,room_height/5*4))
//show_message(-1/8192*sqr(x-(room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11))+room_height/5*4)
	//global.imsi_card_directing+=1
	direction=point_direction(x,y,shorten,1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4)
	dis=point_distance(x,y,shorten,1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4)
	speed=max(dis/8,1)
	alarm[0]=1
}else{
	
	x=room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11
	//y=1/8192*sqr(x-room_width/2)+room_height/5*4
	y=1/8192*sqr((room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11)-room_width/2)+room_height/5*4
	//show_message(y)
	speed=0
	step=2
}



