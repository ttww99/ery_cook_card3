/// @description Insert description here
// You can write your code in this editor

//category : 1-과일 

card_struct=function(nu,na,c,ins) constructor{
	card_num=nu
	card_name=na
	card_category=c
	card_ins=ins
	card_n=0
}
global.card_list_num=0

global.card_list[0]=new card_struct(0,"","","",0)
global.card_list[1]=new card_struct(1,"사과",1,"과일다이",0)
global.card_list[2]=new card_struct(2,"바나나",1,"긴 과일",0)
global.card_list[3]=new card_struct(3,"꿀",2,"그림만으로 알 수/n없지만 꿀이다",0)
global.card_list[4]=new card_struct(4,"설탕",2,"sugar",0)
global.card_list[5]=new card_struct(5,"소금",2,"salt",0)

//show_message(global.card_list[1].card_num)
for(global.imsi=1;global.imsi<=5;global.imsi++){
	a=instance_create_depth(x-180+180*global.imsi,y+120,-90,obj_set_card)
	with(a){
		card_num=global.card_list[global.imsi].card_num
		card_name=global.card_list[global.imsi].card_name
		card_category=global.card_list[global.imsi].card_category
		card_ins=global.card_list[global.imsi].card_ins
		card_n=global.card_list[global.imsi].card_n
		card_struct_imsi=global.card_list[global.imsi]
	}
}
	global.card_class_num=0
	
	//show_message(global.card_list[1].card_num)
global.card_seq=ds_list_create()
global.card_no_seq=ds_list_create()
ds_list_add(global.card_seq,0)
ds_list_add(global.card_no_seq,0)
//for(i=1;i<=5;i++)
//	ds_list_add(global.card_seq,global.card_list[i].card_num)
imsi=0	
	