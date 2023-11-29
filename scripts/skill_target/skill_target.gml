// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skill_target(a){
	//show_message(string(a)+string(" 스킬 발동"))
	switch(a){
		case 0://스킬 발동x	
			break;
		case 1:
			return 1;
		case 2:
			return 2;
		case 3:
			return 3;
		case 4:
			return 4;
		default:
			return 0;
			break;
		
		
		
	}
}