if(global.card_list[card_num].card_n==0){
	show_message("덱에 카드가 더 이상 존재하지 않습니다.")
}
else{
	if(global.card_list[card_num].card_n>1){
		global.card_list[card_num].card_n-=1
		global.card_list_num-=1
		ds_list_delete(global.card_no_seq,ds_list_find_value(global.card_no_seq,card_num))
	}
	else{//==1
		global.card_list[card_num].card_n-=1
		ds_list_delete(global.card_seq,ds_list_find_index(global.card_seq,card_num))
		global.card_class_num-=1
		global.card_list_num-=1
		ds_list_delete(global.card_no_seq,ds_list_find_value(global.card_no_seq,card_num))
	}
	
}





