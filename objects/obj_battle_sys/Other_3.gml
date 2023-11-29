/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

ds_list_clear(global.card_seq)
ds_list_clear(global.card_no_seq)

delete card_struct
for(i=0;i<=30;i++){
	delete global.card_list[i]
	delete global.char_list[i]
	
	delete global.enemy_list[i]
}

	delete card_struct
	delete char_struct

	delete enemy_struct
	