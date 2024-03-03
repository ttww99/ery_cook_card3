draw_set_color(c_black)
draw_set_font(font_32)
//draw_text(x,y-160,ddrag)
//draw_text(x,y-128,card_sequence)
draw_set_font(Font1)

//***draw_text(x,y-200,card_num)

if(global.card_deleted_index=card_sequence)
	draw_text(mouse_x+128,mouse_y,string("global.delete : ")+string(global.card_deleted_index))

//show_message(lengthdir_x(4,100))
if(card_sequence<global.card_hand_next)
	image_angle=((global.card_hand-1)/2-card_sequence)*5
if(des==0){
	//draw_self()
	draw_sprite_ext(sprite_index,0,x,y,1/4,1/4,image_angle,c_white,1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_sprite_ext(spr_card_image,card_num,x-sprite_height/4/6*sin(image_angle/90),y-sprite_height/4/6*sin(image_angle/90),1/2,1/2,image_angle,c_white,image_alpha) 
	
		
	draw_text_ext_transformed(x-lengthdir_x((sprite_height/2-sprite_height/64)/6,image_angle+90)/6,y+sprite_height*3/192,
	global.card_list[card_num].card_name,24,24,1,1,image_angle)
	
	draw_text_ext_transformed(x-lengthdir_x((sprite_height/2-sprite_height/13),image_angle+90)/6,y+sprite_height*14/192,//48
	number_to_ingerdients_class(global.card_list[card_num].card_value),24,24,1,1,image_angle)
}


////draw_text(x-12,y-160,image_angle)
////draw_text(x-12,y-144,string("seq : ")+string(card_sequence))//string(lengthdir_x(sprite_height/8,image_angle+90)))
//draw_text(x-12,y+32,string("dis : ")+string(point_distance(x,y,room_width/2-((global.card_hand-1)/2-card_sequence)*room_width/11,room_height/5*4)))
//draw_text(x,y,global.imsi_card_directing)
draw_set_color(c_white)
////draw_text(100,124,string("다음 : ")+string(global.card_hand_next))


if(card_sequence<global.card_hand_next && mouse_on_show==1 && ddrag==0 && des==0){//확대
	draw_set_color(c_black)
	draw_sprite_ext(sprite_index,card_num,x,y-sprite_height/6-imsi,1/2,1/2,0,c_white,1)
	
	draw_text(x,y-sprite_height/2/6-imsi-sprite_height/3/6,//+sprite_height/6,
	global.card_list[card_num].card_name)
	
	draw_text(x,y-sprite_height/2/6-imsi-sprite_height/3/6+sprite_height*2/8/6,
	number_to_ingerdients_class(global.card_list[card_num].card_value))
	
	draw_set_color(c_white)
	/*draw_text(x,y-sprite_height/2-imsi-sprite_height/4+sprite_height*7/8,
	global.card_list[card_num].card_ins)
	*/
	//show_message(global.card_list[card_num].card_ins)
	

	draw_text_ext_transformed_color(x,y-sprite_height/48-imsi,
	global.card_list[card_num].card_ins,24,24,1,1,0,c_white,c_white,c_white,c_white,1)

	
	draw_sprite_ext(spr_card_image,card_num,x,y-sprite_height*9/32-imsi,2/2,2/2,0,c_white,1)
}

if(des==1){
	draw_sprite_ext(sprite_index,card_num,x,y,1/2,1/2,0,c_white,image_alpha)
	draw_sprite_ext(spr_card_image,card_num,x,y-sprite_height/12,2/2,2/2,0,c_white,image_alpha)
}	



if(ddrag==1){
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,card_num,x,y,1/4,1/4,image_angle,flashColor,min(1-image_alpha,max(min(0.7,1-(y-room_height/5*2)/(room_height*(1-5/9)) ))) )
	//draw_sprite_ext(spr_card_image,card_num,x,y,1,1,image_angle,flashColor,1-(y-room_height/9*5)/(room_height*(3/5/*4/5*/-5/9)))
	shader_reset()

	draw_line_width_color(room_width/5,room_height/9*5,room_width/5*4,room_height/9*5,4,c_red,c_blue)
 
}

//***draw_text(x,y-100,image_angle)