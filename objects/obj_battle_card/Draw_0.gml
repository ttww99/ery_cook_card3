/// @description Insert description here
// You can write your code in this editor
if(global.battle_card_ingredient[0])
	draw_sprite_ext(spr_card_image,global.battle_card_ingredient[0],sprite_get_width(spr_card_image)/2+room_width/32,room_height/8,1,1,0,c_white,1)
if(global.battle_card_ingredient[1])
	draw_sprite_ext(spr_card_image,global.battle_card_ingredient[1],sprite_get_width(spr_card_image)*3/2+room_width/64+room_width/32,room_height/8,1,1,0,c_white,1)
if(global.battle_card_ingredient[2])
	draw_sprite_ext(spr_card_image,global.battle_card_ingredient[2],sprite_get_width(spr_card_image)*5/2+room_width/64*2+room_width/32,room_height/8,1,1,0,c_white,1)
if(global.battle_card_ingredient[3])
	draw_sprite_ext(spr_card_image,global.battle_card_ingredient[3],sprite_get_width(spr_card_image)*7/2+room_width/64*3+room_width/32,room_height/8,1,1,0,c_white,1)


//draw_text_ext_transformed(room_width/8+room_width/16*6,room_height/8,string("sum : ")+string(global.battle_card_ingredient_sum),10,300,4,4,0)
//draw_text_ext_transformed(room_width/8+room_width/16*6,room_height/8*2,string("formersum : ")+string(former_sum),10,300,4,4,0)
if(former_sum!=global.battle_card_ingredient_sum){
	change1=0
	change2=0
	change3=0
}
if(change1+change2==0 && global.battle_card_ingredient[0]!=0 && (global.battle_card_ingredient[1]==0 || global.battle_card_ingredient[2]==0 || global.battle_card_ingredient[3]==0)){
	//***show_message("start")
	//draw_text_ext_transformed(room_width/8+room_width/16*4,room_height/8*2,"shit",100,100,4,4,0)
	available_cook[1]=0
	for(var i=1;i<=13;i++){
		if(i!=global.battle_card_ingredient[0])
			for(var j=30;j<=46;j++){
				if(global.battle_card_ingredient_sum+global.card_list[i].card_value==global.card_list[j].card_value ||
				global.battle_card_ingredient_sum==global.card_list[j].card_value){
					//draw_text_ext_transformed(room_width/8+room_width/16*4,room_height/8*3,"shitshit",100,100,4,4,0)
					//draw_sprite_ext(spr_card_image,j-16,room_width/8+room_width/16*4,room_height/8*2,1,1,0,c_white,1)
					
					former_sum=global.battle_card_ingredient_sum
					
					
					if(available_cook[1]!=former_cook[1]){
						change1=1
						available_cook[1]=j-16
						former_cook[1]=j-16
						//***show_message(string("1 : ")+string(available_cook[1]))
					}
					if(j-16!=available_cook[1] && available_cook[2]!=former_cook[2]){
						change2=1
						//***show_message(string("1 : ")+string(available_cook[1])+string(" 2 : ")+string(available_cook[2]))
						available_cook[2]=j-16	
						former_cook[2]=j-16
						//***show_message(string("2 : ")+string(available_cook[2]))
					}
					if(j-16!=available_cook[2] && j-16!=available_cook[1] && available_cook[3]!=former_cook[3]){
						change3=1
						//show_message(string("1 : ")+string(available_cook[1])+string(" 2 : ")+string(available_cook[2]))
						available_cook[3]=j-16	
						former_cook[3]=j-16
						//show_message(string("2 : ")+string(available_cook[2]))
					}
					
				}
			}
	}
	if(change1==0){
		available_cook[1]=0
		former_cook[1]=0
		change1=1
	}
	if(change2==0){
		available_cook[2]=0
		former_cook[2]=0
		change2=1
	}
	if(change3==0){
		available_cook[3]=0
		former_cook[3]=0
		change3=1
	}
		former_sum=global.battle_card_ingredient_sum
					
}
//draw_text_ext_transformed(room_width/8+room_width/16*4,room_height/8*2,string("[1] : ")+string(available_cook[1]),10,300,4,4,0)
//draw_text_ext_transformed(room_width/8+room_width/16*4,room_height/8*3,string("[2] : ")+string(available_cook[2]),10,300,4,4,0)
draw_sprite_ext(spr_card_image,available_cook[1],room_width/4+room_width/16*4,room_height/8*1,1,0.7,0,c_white,1)
draw_sprite_ext(spr_card_image,available_cook[2],room_width/4+room_width/16*4,room_height/8*3,1,0.7,0,c_white,1)
draw_sprite_ext(spr_card_image,available_cook[3],room_width/4+room_width/16*4,room_height/8*5,1,0.7,0,c_white,1)


