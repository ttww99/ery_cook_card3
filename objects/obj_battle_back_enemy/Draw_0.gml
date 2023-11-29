/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_battle_back_gray,0,room_width/2,room_height/2,room_width/64,room_height/64,0,c_white,1)
draw_sprite_ext(sprite_index,0,room_width/2-ani_x,0,-1*room_width*2/sprite_width,2,0,c_white,1)
draw_sprite_ext(sprite_index,0,room_width/2-ani_x,room_height,-1*room_width*2/sprite_width,2,180,c_white,1)


//아군
//draw_sprite_ext(spr_char_sd,fellow_seq,room_width/2-room_width/4,room_height/2,1/2,1/2,0,c_white,1)
draw_rectangle_color(room_width/2-room_width/4-room_width/8,room_height/2+room_height/4,room_width/2-room_width/4+room_width/8,room_height/2+room_height/4+room_height/16,c_red,c_red,c_red,c_red,0)
draw_rectangle_color(room_width/2-room_width/4-room_width/8,room_height/2+room_height/4,room_width/2-room_width/4-room_width/8+room_width/8*2*((global.char_hp[fellow_seq]/global.char_list[fellow_seq].char_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)
draw_text(room_width/2-room_width/4,room_height/2+room_height/4,global.char_hp[fellow_seq])
draw_text(room_width/2-room_width/4-room_height/16,room_height/2+room_height/4,global.char_list[fellow_seq].char_hp)
//draw_text(room_width/2-room_width/4,room_height/2+room_height/4,global.char_hp[global.imsi_with5])

//적-self
draw_sprite_ext(spr_enemy1,0,start_x-(imsi_x)*6,room_height/2,2,2,0,c_white,1)
draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4+room_width/8,room_height/2+room_height/4+room_height/16,c_red,c_red,c_red,c_red,0)
draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4-room_width/8+room_width/8*2*((global.enemy_hp[enemy_seq]/global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)
//draw_rectangle_color(room_width/2+room_width/4-room_width/8,room_height/2+room_height/4,room_width/2+room_width/4-room_width/8+room_width/8*2*((global.enemy_hp[global.enemy_seq[enemy_seq]]/global.enemy_list[global.enemy_seq[enemy_seq]].enemy_hp)),room_height/2+room_height/4+room_height/16,c_green,c_green,c_green,c_green,0)

draw_text(room_width/2+room_width/4,room_height/2+room_height/4,global.enemy_hp[enemy_seq])
//draw_text(room_width/2+room_width/4,room_height/2+room_height/4,global.enemy_hp[global.enemy_seq[fellow_seq]])



