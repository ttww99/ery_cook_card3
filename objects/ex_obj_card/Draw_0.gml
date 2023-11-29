draw_self()
draw_sprite(spr_card_image,card_num,x,y)
draw_set_color(c_black)
draw_text(x-12,y-32,string("sq : ")+string(card_sequence))
//draw_text(x,y,global.imsi_card_directing)
draw_set_color(c_white)
draw_text(100,100,instance_number(obj_card))
draw_text(100,124,string("다음 : ")+string(global.card_hand_next))


if(mouse_on_show==1){
draw_sprite_ext(sprite_index,card_num,x,y-sprite_height/2-imsi,2,2,0,c_white,1)
draw_sprite_ext(spr_card_image,card_num,x,y-sprite_height/2-imsi,2/2,2/2,0,c_white,1)
}

image_angle=(card_sequence-5)*-5