/// @description Insert description here
// You can write your code in this editor
if(sk==1)
	if(selected==0)
		draw_sprite_ext(sprite_index,global.char_list[num].char_skill1,x,y,1/2,1/2,0,c_gray,1)
	else
		draw_sprite_ext(sprite_index,global.char_list[num].char_skill1,x,y,1/2,1/2,0,c_white,1)	
else
	if(selected==0)
		draw_sprite_ext(sprite_index,global.char_list[num].char_skill2,x,y,1/2,1/2,0,c_gray,1)
	else
		draw_sprite_ext(sprite_index,global.char_list[num].char_skill2,x,y,1/2,1/2,0,c_white,1)

//draw_text(x,y,selected)
draw_text(x,y,num)

