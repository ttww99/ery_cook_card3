/// @description Insert description here
// You can write your code in this editor

//category : 1-과일 

card_struct=function(nu,na,v,ins,cn) constructor{
	card_num=nu
	card_name=na
	card_value=v

	card_ins=ins
	card_n=cn
}
global.card_list_num=0
///////////////////////////////////////[7][8]
//var value_list=[0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096]
var value_list=[0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096]
//var value_list=[0,-53,-47,-43,-41,-37,-31,-29,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181]
//var value_list=[0,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181]
//var value_list=[0,3,5,7,11,13,17,19,23,29,31,37,41,100]
global.card_list[0]=new card_struct(0,"",0,"",0)
global.card_list[1]=new card_struct(1,"고기",value_list[1]/*3*/,"식욕을 자극하는 붉은빛의 육류",0)
global.card_list[2]=new card_struct(2,"생선",value_list[2]/*5*/,"바다의 활기를 자신의 몸에 듬뿍 담은 생선류",0)
global.card_list[3]=new card_struct(3,"밥",value_list[3]/*7*/,"땅속에서 농부의 땀과 정성으로 자라난 자연의 산물",0)
global.card_list[4]=new card_struct(4,"스프",value_list[4]/*11*/,"한숟갈로 식욕을 자극하고, 두숟갈로 마음을 사로잡다",0)
global.card_list[5]=new card_struct(5,"옥수수",value_list[5]/*13*/,"금빛으로 빛나는 작은 알들이 하나씩 커지고 그 결과는 원대하다",0)
global.card_list[6]=new card_struct(6,"감자",value_list[6]/*17*/,"겉은 둥글둥글하지만, 속은 악마 같은 매력으로 가득하여 끝없는 변신을 가능케 한다",0)
global.card_list[7]=new card_struct(7,"과일",value_list[7]/*19*/,"노력은 나무의 과실에 비유되곤한다. 과일은 나루믱 노역의 결실이다.",0)
global.card_list[8]=new card_struct(8,"밀가루",value_list[8]/*23*/,"밀을 갈아 밀가루로",0)
global.card_list[9]=new card_struct(9,"면",value_list[9]/*29*/,"밀을 면으로",0)
global.card_list[10]=new card_struct(10,"빵",value_list[10]/*31*/,"밀을 빵으로",0)
global.card_list[11]=new card_struct(11,"채소",value_list[11]/*37*/,"막없음",0)
global.card_list[12]=new card_struct(12,"해산물",value_list[12]/*41*/,"바다의 맛있는것들",0)
global.card_list[13]=new card_struct(13,"부재료",value_list[13]/*100*/,"기름,치즈, 우유, 버터, 생크림",0)

global.card_list[30]=new card_struct(30,"초밥",value_list[2]+value_list[3]/*12*/,"",0)
global.card_list[31]=new card_struct(31,"리조또",value_list[3]+value_list[4]/*18*/,"",0)
global.card_list[32]=new card_struct(32,"피쉬앤칩스",value_list[2]+value_list[6]/*22*/,"",0)
global.card_list[33]=new card_struct(33,"옥수수스프",value_list[4]+value_list[5]/*24*/,"",0)
global.card_list[34]=new card_struct(34,"미트파이",value_list[1]+value_list[8]/*26*/,"",0)
global.card_list[35]=new card_struct(35,"우육면",value_list[1]+value_list[9]/*32*/,"",0)
global.card_list[36]=new card_struct(36,"핫도그빵",value_list[1]+value_list[10]/*34*/,"",0)
global.card_list[37]=new card_struct(37,"빠네스프",value_list[4]+value_list[10]/*42*/,"",0)
global.card_list[38]=new card_struct(38,"옥수수 샐러드",value_list[5]+value_list[11]/*50*/,"",0)
global.card_list[39]=new card_struct(39,"과일 샐러드",value_list[7]+value_list[11]/*56*/,"",0)
global.card_list[40]=new card_struct(40,"케밥",value_list[1]+value_list[8]+value_list[11]/*63*/,"",0)
global.card_list[41]=new card_struct(41,"스파게티",value_list[9]+value_list[11]/*66*/,"",0)//13
global.card_list[42]=new card_struct(42,"햄버거",value_list[1]+value_list[10]+value_list[11]/*71*/,"",0)
global.card_list[43]=new card_struct(43,"김밥",value_list[3]+value_list[11]+value_list[12]/*85*/,"",0)
global.card_list[44]=new card_struct(44,"콘치즈",value_list[5]+value_list[13]/*113*/,"",0)
global.card_list[45]=new card_struct(45,"감자튀김",value_list[6]+value_list[13]/*117*/,"",0)
global.card_list[46]=new card_struct(46,"도넛",value_list[8]+value_list[13]/*123*/,"",0)

//show_message(global.card_list[1].card_num)
for(global.imsi=1;global.imsi<=5;global.imsi++){
	a=instance_create_depth(x-180+180*global.imsi,y+120,-90,obj_set_card)
	with(a){
		card_num=global.card_list[global.imsi].card_num
		card_name=global.card_list[global.imsi].card_name
		card_value=global.card_list[global.imsi].card_value
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
	