/// @description Insert description here
// You can write your code in this editor
if(seq!=0){
draw_sprite_ext(sprite_index,seq,x,y,1/4,1/4,0,c_white,1)


//draw_hp
draw_rectangle_color(x-sprite_width/12,y+sprite_height/4/4/4*8,x+sprite_width/12,y+sprite_height/4/4/4*9,c_red,c_orange,c_orange,c_red,0)
draw_rectangle_color(x-sprite_width/12,y+sprite_height/4/4/4*8,x-sprite_width/12+sprite_width/12*2*((global.char_hp[seq]/global.char_list[seq].char_hp)),y+sprite_height/4/4/4*9,c_green,c_green,c_green,c_green,0)
//draw_rectangle_color(x-sprite_width/12,y+sprite_height/4/4/4*8,x-sprite_width/12+sprite_width/12*2*((hp/global.char_list[seq].char_hp)),y+sprite_height/4/4/4*9,c_green,c_green,c_green,c_green,0)
//draw_text(x,y+sprite_height/4/4/4/2*17,string(hp)+string(" /  ")+string(global.char_list[seq].char_hp))
draw_text(x,y+sprite_height/4/4/4/2*17,string(global.char_hp[seq])+string(" /  ")+string(global.char_list[seq].char_hp))


draw_text(x,y-sprite_height/4/4/4/2*14,"seq_imsi : "+string(seq_imsi))
draw_text(x,y-sprite_height/4/4/4/2*16,string("front_seq : ")+string(front_seq))
}
//draw_text(x,y-sprite_height/4/4/4/2*16,seq)
//draw_text(x,y-sprite_height/4/4/4/2*18,skill_active)
