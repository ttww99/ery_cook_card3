/// @description Insert description here
// You can write your code in this editor

ds_list_clear(global.card_seq)
ds_list_clear(global.card_no_seq)

delete card_struct
for(i=0;i<10;i++)
	delete global.card_list[i]
