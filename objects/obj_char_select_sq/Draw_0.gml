/// @description Insert description here
// You can write your code in this editor
draw_self()
if(full==1)
	if(drag_region==1)
		draw_sprite_ext(spr_char_portrait,global.party[seq].seq,x,y,1,1,0,c_white,0.5)
	else
		draw_sprite(spr_char_portrait,global.party[seq].seq,x,y)
		
		
if(drag_region==1){
	draw_sprite_ext(spr_char_portrait,global.party[seq].seq,mouse_x,mouse_y,1,1,0,c_white,0.7)
	draw_text(mouse_x+64,mouse_y,instance_nearest(mouse_x,mouse_y,obj_char_select_sq))
}

