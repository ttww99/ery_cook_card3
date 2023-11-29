/// @description Insert description here
// You can write your code in this editor

if(global.card_list[show_num].card_n>1){
	global.card_list[show_num].card_n-=1
	ds_list_delete(global.card_no_seq,ds_list_find_index(global.card_seq,show_num))
}
else{//1
	
	global.card_list[show_num].card_n=0
	//show_message(ds_list_find_index(global.card_seq,show_num))
	ds_list_delete(global.card_no_seq,ds_list_find_index(global.card_seq,show_num))
	ds_list_delete(global.card_seq,ds_list_find_index(global.card_seq,show_num))
	global.card_class_num-=1
		
	instance_destroy(self)
	
	
}
	global.card_list_num-=1	
depth=-101
	//show_message("err")
