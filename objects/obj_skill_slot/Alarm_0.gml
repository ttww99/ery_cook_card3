/// @description Insert description here
// You can write your code in this editor
	if(/*(distance_to_point(x,room_height/8+room_height/6*(skill_slot-1)))>1 ||*/ y>=room_height/8+room_height/6*(skill_slot-1)){

		y-=max((distance_to_point(x,room_height/8+room_height/6*(skill_slot-1)))/2,4)
		alarm[0]=1	

	}else
		y=room_height/8+room_height/6*(skill_slot-1)