/// @description Insert description here
// You can write your code in this editor
//show_message("dsad "+string(global.battle_turn)+"  "+string(global.battle_turn_pre))
if((global.battle_fellow_turn+global.battle_enemy_turn<=-1&&global.battle_enemy_turn==0) && mouse_on_show==1 && mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 &&
mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12){
	ddrag=1
	if(card_sequence<global.card_hand_next){
		global.card_delay=1
		global.card_deleted_index=card_sequence
		
		ddrag=1
	}else
	ddrag=0

}





/*
show_debug_message(global.double_click_prevent)
if(	mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 &&
mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12){
	global.double_click_prevent+=1
	ddrag=1
	if(global.double_click_prevent==1 && global.card_delay==0 && card_sequence<global.card_hand_next){
		
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
*/ //효과 없음 확인 
