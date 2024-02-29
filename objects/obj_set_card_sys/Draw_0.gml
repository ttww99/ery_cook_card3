/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_text(x-240,y+128,string("number of : ")+string(global.card_list_num))
draw_text(x-240,y+128+64,string("global.card_seq : "))
for(var i=0;i<=global.card_class_num;i++){

	draw_text(x,y+128+64*i,ds_list_find_value(global.card_seq,i))
	draw_text(x+32,y+128+64*i,global.card_list[ds_list_find_value(global.card_seq,i)].card_n)	
	//draw_text(x+64,y+128+64*i,global.card_list[i].card_n)//ds_list_find_value(global.card_seq,i))
	
	
}
draw_text(278,915,global.card_class_num)



	draw_text(64,192,"no : ")
for(var i=0;i<=global.card_list_num;i++)
	draw_text(100+24*i,192,ds_list_find_value(global.card_no_seq,i))


