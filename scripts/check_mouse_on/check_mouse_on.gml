// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_mouse_on(ooo){
	if(ooo.x-ooo.sprite_xoffset<mouse_x && ooo.x+ooo.sprite_xoffset>mouse_x &&
	ooo.y-ooo.sprite_yoffset<mouse_y && ooo.y+ooo.sprite_yoffset>mouse_y){
	return 1
	
	
	}else
	 return 0
}