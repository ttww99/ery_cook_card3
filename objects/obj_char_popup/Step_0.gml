/// @description Insert description here
// You can write your code in this editor
if(show_hero_save!=global.show_hero){
	imsi_save=global.show_hero
	if(global.show_hero!=0){
		if(point_distance(x,y,room_width*7/8,y)>8){
			direction=point_direction(x,y,room_width*7/8,y)
			distance=point_distance(x,y,room_width*7/8,y)
			speed=distance/16
			//imsi_save=global.show_hero	
		}
		else{
			x=room_width*7/8
			speed=0
			imsi_save=0
			show_hero_save=global.show_hero
		}	
	}
	else{
		if(point_distance(x,y,start_x,y)>8){
			direction=point_direction(x,y,start_x,y)
			distance=point_distance(x,y,start_x,y)
			speed=distance/16
			//imsi_save=global.show_hero	
		}
		else{
			x=start_x
			speed=0
			imsi_save=0
			show_hero_save=-1
		}	
	
	
	
	}
}
if(x<room_width*7/8){
	x=room_width*7/8
	speed=0	
}

if(x>start_x){
	x=start_x
	speed=0
}

