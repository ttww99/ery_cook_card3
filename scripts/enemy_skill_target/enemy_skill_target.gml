// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_skill_target(){
 a=0
	do{
		randomize()
		a=irandom(3)
			
			//show_message(string(global.party[0].seq)+string(" ")+string(global.party[1].seq)+string(" ")+string(global.party[2].seq)+string("")+string(global.party[3].seq)+string(" - ")+string(a))
	}until(global.party[a].seq!=0)
	return global.party[a].seq;
	
}