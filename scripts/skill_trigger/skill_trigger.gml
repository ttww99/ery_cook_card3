// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skill_trigger(a){
	//show_message(string(a)+string(" 스킬 발동"))
	switch(a){
		case 0://스킬 발동x	
			break;
		case 1:
			with(obj_enemy){
				if(seq==1)
					hp-=2
			}
			return -2;
			//break;
		case 2:
			with(obj_enemy){
				if(seq==2)
					hp-=4
			}
			return -4;
			//break;
		case 3:
			with(obj_enemy){
				if(seq==3)
					hp-=8
			}
			return -8;
			//break;
		case 4:
			with(obj_enemy){
				if(seq==4)
					hp-=16
			}
			return -16
			//break;
		default:
			show_message("skill_error")
			return 0;
			break;
		
		
		
	}
}