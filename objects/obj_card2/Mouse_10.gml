/// @description Insert description here
// You can write your code in this editor

/*
if(	mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 &&
mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12){
	b=instance_nearest(mouse_x,mouse_y,obj_card2)
	

		b.mouse_on_show=1
		b.depth=-96
		if(b.imsi<32){
			b.imsi+=2
		}
}
*/

if(	mouse_x>=x-sprite_width/12 && mouse_x<=x+sprite_width/12 &&
mouse_y >= y-sprite_height/12 && mouse_y<= y+sprite_height/12 && mouse_on_show==0){
	
	instance_nearest(mouse_x,mouse_y,obj_card2)
	

		mouse_on_show=1
		depth=-96
		if(imsi<32){
			imsi+=2
		}
}

