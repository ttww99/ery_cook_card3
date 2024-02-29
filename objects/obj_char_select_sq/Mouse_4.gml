/// @description Insert description here
// You can write your code in this editor

if(global.drag==0){
	if(double_click==0)
		double_click=1
	//else
	//	double_click=2
	alarm[0]=30
	if(double_click>=1 && full==1){
		global.drag=1
		drag_region=1
		
		if(global.party[seq].seq!=0){
			global.show_hero=global.char_list[global.party[seq].seq].char_no
			//	show_message(string(""   )+string(global.party[seq]))
		}
		global.chr_change_before=seq
	}
}

///////////////////////////////////

if(global.character_select!=-1){//obj character클릭 후
	//show_message(global.character_select)
	var chr_check=0
	for(var i=0;i<global.party_max;i++)
		if(global.party[i].seq==global.character_select)
			chr_check+=1
	if(chr_check==0){//중복 없음
		/*if(full==1){//클릭한데가 빈집 아님
			var check=0
		
			for(global.imsi=0;global.imsi<global.party_max;global.imsi++)
				if(global.party[global.imsi]!=-1)
					check+=1
			//show_message(string("몇개 차있음 : ")+string(check))		
				
			if(check==4){
				global.party[seq]=global.character_select
			}	
			else{//다 차 있는게 아님  
				for(global.imsi=global.party_max-1;global.party[global.imsi-1]==-1 &&global.imsi>0;	global.imsi--){
					}
			global.party[global.imsi]=global.character_select	
			}				
		}
		else{
			global.party[seq]=global.character_select	
		}*/
		global.party[seq].seq=global.character_select	
		global.show_hero=0
		global.char_party_num+=1
	}else
		show_message("중복된 영웅은 파티에 합류할 수 없습니다.")
}
	global.character_select=-1

