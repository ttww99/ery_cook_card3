/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_enemy1_imsi,-1,x,y,1/2,1/2,0,c_white,1)
image_speed=0.04


draw_rectangle_color(x-sprite_width/12,y+sprite_height/4/4/4*8,x+sprite_width/12,y+sprite_height/4/4/4*9,c_red,c_orange,c_orange,c_red,0)
draw_rectangle_color(x-sprite_width/12,y+sprite_height/4/4/4*8,x-sprite_width/12+sprite_width/12*2*((hp/global.enemy_list[1].enemy_hp)),y+sprite_height/4/4/4*9,c_green,c_green,c_green,c_green,0)

draw_text(x,y+sprite_height/4/4/4*11,string("seq : ")+string(seq))

draw_text(x,y+sprite_height/4/4/4*12,seq)
draw_text(x,y+sprite_height/4/4/4*9,global.enemy_hp[seq])
//draw_text(x,y+sprite_height/4/4/4*9,hp)

draw_set_font(font_enemy_attack)
draw_text_ext_transformed_color(x,y-sprite_height/4/4/4*12,enemy_turn_attack,16,16,4,4,0,c_red,c_orange,c_red,c_orange,1)
//draw_text_ext_transformed_color(x,y-sprite_height/4/4/4*64,global.imsi_with1,16,16,4,4,0,c_blue,c_blue,c_blue,c_blue,1)
draw_sprite_ext(spr_monster_attack_icon,0,x-sprite_width/4/4/4*8,y-sprite_height/4/4/4*12,2,2,0,c_white,1)


