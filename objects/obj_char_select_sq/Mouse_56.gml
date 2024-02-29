/// @description Insert description here
// You can write your code in this editor

if(global.drag==1){

var a=instance_nearest(mouse_x,mouse_y,obj_char_select_sq)
if( a!=-4 ){
	if(a.seq!=global.chr_change_before){
		var b=global.party[a.seq].seq
		global.party[a.seq].seq=global.party[global.chr_change_before].seq
		global.party[global.chr_change_before].seq=b
		
		//global.show_hero=0
		}
	}
}

global.drag=0
drag_region=0
global.chr_change_before=0