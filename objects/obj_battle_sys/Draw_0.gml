/// @description Insert description here
// You can write your code in this editor



draw_text(100,140,string("손패 : ")+string(global.card_hand))
for(i=1;i<=global.card_list_num;i++)
	draw_text(100+24*i,192,ds_list_find_value(global.card_no_seq,i))
draw_text(100,120,string(global.double_click_prevent))

for(i=0;i<4;i++)
	draw_text(400+32*i,100,global.party[i].skill_active)
	
	for(i=0;i<4;i++)
	draw_text(400+32*i,80,global.party[i].seq)
	
	
draw_text(800,100,string("enemy turn : ")+string(global.battle_enemy_turn))