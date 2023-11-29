// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fellow_id_to_seq(fellow_id){
	for(var i=0;i<4;i++)
		if(fellow_id==global.party[i].seq)
			return i;
	
}