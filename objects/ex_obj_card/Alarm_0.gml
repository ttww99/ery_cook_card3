/// @description Insert description here
// You can write your code in this editor

if(card_sequence<=global.imsi_card_directing&&point_distance(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)>4){
step=1
//show_message(room_width/21+room_width/21*card_sequence)
global.imsi_card_directing+=1
direction=point_direction(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)
dis=point_distance(x,y,room_width/21+room_width/11*card_sequence,room_height/4*3)
speed=max(8,dis/30)
alarm[0]=1
}else{
	x=room_width/21+room_width/11*card_sequence
	y=room_height/4*3
speed=0
step=2
}



