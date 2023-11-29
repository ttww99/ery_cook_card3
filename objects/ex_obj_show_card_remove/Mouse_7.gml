/// @description Insert description here
// You can write your code in this editor

if(ds_list_find_value(global.card_list_num,ds_list_find_index(global.card_list,show_num))>1)
	ds_list_replace(global.card_list_num,
	ds_list_find_index(global.card_list,show_num),
	ds_list_find_value(global.card_list_num,ds_list_find_index(global.card_list,show_num))-1	
	)
else{//1
	imsi=ds_list_find_index(global.card_list,show_num)
	ds_list_delete(global.card_list,imsi)
	ds_list_delete(global.card_list_num,imsi)
	
	global.imsi=show_num
	show_message(global.imsi)
	with(obj_show_card_list){
		if(global.imsi==show_num)
			instance_destroy()
		
	}
	
	show_message(global.card_class_num)
	global.card_class_num-=1
	
	instance_destroy(self)
	
	
}

depth=-101

	