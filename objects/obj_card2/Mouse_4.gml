/// @description Insert description here
// You can write your code in this editor

if(	mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 &&
mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12){
	global.double_click_prevent+=1
	ddrag=1
	if(global.double_click_prevent>=1 && global.card_delay==0 && card_sequence<global.card_hand_next){
		
		global.card_delay=1
		global.card_deleted_index=card_sequence
		
		ddrag=1
	}

else{
		global.double_click_prevent=0
		//show_message("double")	
		//global.card_deleted_index=-1
	}
}
