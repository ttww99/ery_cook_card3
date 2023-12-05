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
global.card_list[1]=new card_struct(1,"고기",1,"식욕을 자극하는 붉은빛의 육류",0)
global.card_list[2]=new card_struct(2,"생선",1,"바다의 활기를 자신의 몸에 듬뿍 담은 생선류",0)
global.card_list[3]=new card_struct(3,"밥",2,"땅속에서 농부의 땀과 정성으로 자라난 자연의 산물",0)
global.card_list[4]=new card_struct(4,"스프",2,"한숟갈로 식욕을 자극하고, 두숟갈로 마음을 사로잡다",0)
global.card_list[5]=new card_struct(5,"옥수수",2,"금빛으로 빛나는 작은 알들이 하나씩 커지고 그 결과는 원대하다",0)
global.card_list[5]=new card_struct(6,"감자",2,"겉은 둥글둥글하지만, 속은 악마 같은 매력으로 가득하여 끝없는 변신을 가능케 한다",0)
global.card_list[5]=new card_struct(7,"과일",2,"",0)
global.card_list[5]=new card_struct(8,"밀가루",2,"salt",0)
global.card_list[5]=new card_struct(9,"면",2,"salt",0)
global.card_list[5]=new card_struct(10,"빵",2,"salt",0)
global.card_list[5]=new card_struct(11,"채소",2,"salt",0)
global.card_list[5]=new card_struct(12,"해산물",2,"salt",0)
global.card_list[5]=new card_struct(13,"부재료",2,"salt",0)
global.card_list[5]=new card_struct(14,"",2,"",0)

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
	