/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_battle_back_gray,0,room_width/2,room_height/2,room_width/64,room_height/64,0,c_white,1)
draw_sprite_ext(sprite_index,0,ani_x,0,room_width*2/sprite_width,2,0,c_white,1)
draw_sprite_ext(sprite_index,0,ani_x,room_height,room_width*2/sprite_width,2,180,c_white,1)

//draw_sprite_ext(spr_char_sd,fellow_seq,room_width/2-room_width/4,room_height/2,1/2,1/2,0,c_white,1)
draw_rectangle_color(room_width/2-room_width/4-room_width/8,room_height/2+room_height/4,room_width/2-room_width/4+room_width/8,room_height/2+room_height/4+room_height/16,c_red,c_red,c_red,c_red,0)
draw_rectangle_color(room_width/2-room_width/4-room_width/8,room_height/2+room_height/4,room_width/2-room_width/4-room_width/8+room_width/8*2*((global.char_hp[fellow_seq]/global.char_list[fellow_seq].char_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)
/*
draw_text(room_width/2-room_width/4,room_height/2+room_height/4,fellow_seq)
draw_text(room_width/2-room_width/4+32,room_height/2+room_height/4,global.party[fellow_seq].seq)
*/
draw_text(room_width/2-room_width/4+64,room_height/2+room_height/4,global.char_hp[fellow_seq])
//draw_text(room_width/2-room_width/4,room_height/2+room_height/4,global.char_hp[global.party[fellow_seq].seq])

//draw_sprite_ext(spr_enemy1,enemy_seq,room_width/2+room_width/4,room_height/2,2,2,0,c_white,1)
draw_sprite_ext(spr_enemy1,skill_target(skill),room_width/2+room_width/4,room_height/2,2,2,0,c_white,1)
draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4+room_width/8,room_height/2+room_height/4+room_height/16,c_red,c_red,c_red,c_red,0)
//draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4-room_width/8+room_width/8*2*((global.enemy_hp[global.enemy_seq[skill_target(skill)]]/global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)
draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4-room_width/8+room_width/8*2*((global.enemy_hp[skill_target(skill)]/global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)

//draw_text(room_width/2+room_width/4,room_height/2+room_height/4,global.enemy_hp[global.enemy_seq[enemy_seq]])
draw_text(room_width/2+room_width/4,room_height/2+room_height/4,global.enemy_hp[skill_target(skill)])

//draw_rectangle_color(room_width/2,room_height/2,room_width/2,room_height/2+sprite_height/4/4/4*9,c_red,c_orange,c_orange,c_red,0)
//draw_rectangle_color(room_width/2,room_height/2,room_width/2+sprite_width/12*2*((hp/global.char_list[seq].char_hp)),y+sprite_height/4/4/4*9,c_red,c_green,c_green,c_red,0)
/*
show_message(enemy_seq)
show_message(global.enemy_seq[enemy_seq])
show_message(global.enemy_hp[global.enemy_seq[enemy_seq]])
show_message(global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)
show_message(global.enemy_hp[global.enemy_seq[enemy_seq]]/global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)
*/



