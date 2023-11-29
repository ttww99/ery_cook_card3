/// @description Insert description here
// You can write your code in this editor


if(global.card_list_num>=10)
	room_goto(room_map1)
else
	show_message("덱에 최소 10장 이상의 카드를 선택해야 합니다.")