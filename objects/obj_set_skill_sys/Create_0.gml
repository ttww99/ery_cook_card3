/// @description Insert description here
// You can write your code in this editor

//category : 1-과일 
//window_set_fullscreen(1)
global.skill_apply_target=0
global.skill_current_page=1
global.skill_ins_clicked=0
global.skill_slot_clicked=0

skill_slot_click_imsi=0
skill_move=0
skill_alpha=0
skill_adapt_move=0
skill_apply_imsi=0


skill_struct=function(nu,na,c,ins,n) constructor{
	skill_num=nu
	skill_name=na
	skill_category=c
	skill_ins=ins
	skill_n=n
}
global.skill_list_num=30
global.animation_not_end=0

global.skill_list[0]=new skill_struct(0,"","","",0)
global.skill_list[1]=new skill_struct(1,"검",1,"검",3)
global.skill_list[2]=new skill_struct(2,"양손검",1,"양손검",3)
global.skill_list[3]=new skill_struct(3,"방패",1,"방패",3)
global.skill_list[4]=new skill_struct(4,"화살",1,"화살",3)
global.skill_list[5]=new skill_struct(5,"화살3",1,"화살3",0)
global.skill_list[6]=new skill_struct(6,"검2",1,"검",1)
global.skill_list[7]=new skill_struct(7,"양손검2",1,"양손검",2)
global.skill_list[8]=new skill_struct(8,"방패2",1,"방패",1)
global.skill_list[9]=new skill_struct(9,"화살2",1,"화살",0)
global.skill_list[10]=new skill_struct(10,"화살32",1,"화살3",1)

global.skill_list[11]=new skill_struct(11,"검",1,"검",2)
global.skill_list[12]=new skill_struct(12,"양손검",1,"양손검",1)
global.skill_list[13]=new skill_struct(13,"방패",1,"방패",0)
global.skill_list[14]=new skill_struct(14,"화살",1,"화살",0)
global.skill_list[15]=new skill_struct(15,"화살3",1,"화살3",0)
global.skill_list[16]=new skill_struct(16,"검2",1,"검",1)
global.skill_list[17]=new skill_struct(17,"양손검2",1,"양손검",0)
global.skill_list[18]=new skill_struct(18,"방패2",1,"방패",1)
global.skill_list[19]=new skill_struct(19,"화살2",1,"화살",0)
global.skill_list[20]=new skill_struct(20,"화살32",1,"화살3",2)

global.skill_list[21]=new skill_struct(21,"검",1,"검",1)
global.skill_list[22]=new skill_struct(22,"양손검",1,"양손검",0)
global.skill_list[23]=new skill_struct(23,"방패",1,"방패",0)
global.skill_list[24]=new skill_struct(24,"화살",1,"화살",0)
global.skill_list[25]=new skill_struct(25,"화살3",1,"화살3",0)
global.skill_list[26]=new skill_struct(26,"검2",1,"검",1)
global.skill_list[27]=new skill_struct(27,"양손검2",1,"양손검",0)
global.skill_list[28]=new skill_struct(28,"방패2",1,"방패",1)
global.skill_list[29]=new skill_struct(29,"화살2",1,"화살",0)
global.skill_list[30]=new skill_struct(30,"화살32",1,"화살3",1)


//show_message(global.skill_list[1].skill_num)
for(global.imsi=1;global.imsi<=global.skill_list_num;global.imsi++){
	a=instance_create_depth(room_width*26/32+room_width/8*(int64((global.imsi-1)/5)%2),room_height/8+((global.imsi-1)%5)*room_height/6,-90,obj_set_skill)
	with(a){
		page=int64((global.imsi-1)/10)+1
		skill_num=global.skill_list[global.imsi].skill_num
		skill_name=global.skill_list[global.imsi].skill_name
		skill_category=global.skill_list[global.imsi].skill_category
		skill_ins=global.skill_list[global.imsi].skill_ins
		skill_n=global.skill_list[global.imsi].skill_n
		skill_struct_imsi=global.skill_list[global.imsi]
	}
}

for(global.imsi=1;global.imsi<=3;global.imsi++){
	a=instance_create_depth(room_width*40/48+room_width/48*(global.imsi),room_height*7/8,-90,obj_skill_sel_page)
	with(a){
		page=global.imsi
		if(page==1)
			selected=1
	}
}

	global.skill_class_num=0
	
	//show_message(global.skill_list[1].skill_num)
global.skill_seq=ds_list_create()

ds_list_add(global.skill_seq,0)

global.char_seq_imsi=0
global.page_imsi=1

for(global.imsi=1;global.imsi<global.character_num_max;global.imsi++){
	if(global.char_list[global.imsi].char_unlocked==0){
		global.char_seq_imsi+=1
		global.page_imsi+=1//126
		a=instance_create_depth(room_width/10+256*int64((global.char_seq_imsi-1)/5),room_height/8+((global.char_seq_imsi-1)%5)*room_height/6,-100,obj_char_sd_skill)	
		with(a){
			char_spr_num=global.imsi
		}
	}
}
