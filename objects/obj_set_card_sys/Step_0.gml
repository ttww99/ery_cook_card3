/// @description Insert description here
// You can write your code in this editor
if(imsi!=global.card_class_num || global.f5==1){
	imsi=global.card_class_num
	global.f5=0
	//show_message("global card class num  change")
	global.imsi=1
	instance_destroy(obj_show_card_list)
	instance_destroy(obj_show_card_remove)
	for(global.imsi=1;global.imsi<=global.card_class_num;global.imsi++){
	
		a=instance_create_depth(room_width-sprite_get_width(obj_show_card_list)*3/4,room_height/8+128*global.imsi,-100,obj_show_card_list)
		with(a){
			show_num=ds_list_find_value(global.card_seq,global.imsi)
			card_n=global.card_list[global.imsi].card_n
		
		}
	}
}




