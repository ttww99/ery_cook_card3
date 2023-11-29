	

if(global.card_list[card_num].card_n==0){
	//show_message("새로 추가")
	//show_message(ds_list_find_value(global.card_seq,card_num))
	ds_list_add(global.card_seq,card_num)
	ds_list_add(global.card_no_seq,card_num)
	global.card_list[card_num].card_n+=1
	global.card_class_num+=1
	global.card_list_num+=1

	
}
else{
	if(global.card_list[card_num].card_n>2)
		show_message("동일한 카드는 덱에 3장까지만 넣을 수 있습니다.")
	else{
		global.card_list[card_num].card_n+=1
		ds_list_add(global.card_no_seq,card_num)
		global.card_list_num+=1
	}
}
