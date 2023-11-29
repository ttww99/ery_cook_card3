/// @description Insert description here
// You can write your code in this editor
global.party_max=4
global.character_num_max=10
global.character_page_max=3//1page-3 character shown
global.char_seq_imsi=0
global.page_imsi=1
global.page_current=0
global.page_max=1
global.character_select=-1
global.char_party_num=1//현재 파티에 몇명
char_party_num=1

char_struct=function(no,name,level,hp,atk,sk1,sk2,lock,ins) constructor{
	char_no=no
	char_name=name
	char_lv=level
	char_exp=0
	char_hp=hp
	char_atk=atk
	char_skill1=sk1
	char_skill2=sk2
	char_unlocked=lock
	char_ins=ins
}

global.char_list[0]=new char_struct(0,"zero",1,50,10,0,0,0,"통칭 제로. 아무도 그의이름을 모르며 중2병이다")
global.char_list[1]=new char_struct(1,"1anna",1,41,8,1,2,0,"가람이가")
global.char_list[2]=new char_struct(2,"2",1,52,10,1,3,0,"2알레프")
global.char_list[3]=new char_struct(3,"3anna",1,43,8,4,5,0,"비앙카였나")
global.char_list[4]=new char_struct(4,"4",1,50,10,6,7,0,"서기 란")
global.char_list[5]=new char_struct(5,"5",1,50,10,8,9,0,"미래 기사")
global.char_list[6]=new char_struct(6,"6",1,50,10,10,11,0,"상어 캬오오오")
global.char_list[7]=new char_struct(7,"7",1,50,10,12,13,0,"ㅡㅏ99")
global.char_list[8]=new char_struct(8,"8",1,50,10,14,0,0,"사슴")
global.char_list[9]=new char_struct(9,"9",1,50,10,15,16,0,"불")

party_struct=function(s) constructor{
	seq=s
	skill_active=0
}
global.party[0]=new party_struct(1)
global.party[1]=new party_struct(0)
global.party[2]=new party_struct(0)
global.party[3]=new party_struct(0)

for(var i=0;i<=9;i++){
	global.char_hp[i]=global.char_list[i].char_hp
	global.enemy_hp[i]=0
}

#region //enemy_strct
enemy_struct=function(no,name,level,hp,atk,lock,ins) constructor{
	enemy_no=no
	enemy_name=name
	enemy_lv=level
	enemy_hp=hp
	enemy_atk=atk
	enemy_unlocked=lock
	enemy_ins=ins
}

global.enemy_list[0]=new enemy_struct(0,"",0,0,0,0,"")
global.enemy_list[1]=new enemy_struct(1,"아누비스",2,40,3,0,"머리는 뱀이었나 몸이 사잔가")

#endregion

for(global.imsi=0;global.imsi<global.party_max;global.imsi++){
	a=instance_create_depth(room_width/10-32+room_width/8*(global.imsi),room_height/6,-100,obj_char_select_sq)
	with(a)
		seq=global.imsi
}

for(global.imsi=0;global.imsi<global.character_page_max;global.imsi++){//
	a=instance_create_depth(room_width/10+room_width/6*(global.imsi),room_height*3/5,-100,obj_char_select_ori_sq)
	with(a)
		char_num=global.imsi
}

for(global.imsi=1;global.imsi<global.character_num_max;global.imsi++){
	if(global.char_list[global.imsi].char_unlocked==0){
		global.char_seq_imsi+=1
		global.page_imsi+=1
		a=instance_create_depth(room_width/10+room_width/6*((global.char_seq_imsi-1)%3),room_height*3/5,-100,obj_character)	
		with(a){
			char_spr_num=global.imsi
			page=int64((global.page_imsi-2)/3)+1
		}
	}
}

global.page_max=int64(global.char_seq_imsi/2)
global.im=0
for(global.im=1;global.im<=3;global.im++){
	b=instance_create_depth(room_width/8+room_width/14*global.im,room_height*4/5,-100,obj_spr_sel_page)
	with(b){
		page=global.im
	}
}
	
