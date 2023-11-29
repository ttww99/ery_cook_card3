/// @description before destory
// You can write your code in this editor
//show_message("show_methe moeny")
//with(obj_card2)
//if(global.card_deleted_index==card_sequence)
if( point_distance(x,y,room_width/2,room_height/2>=4) && des==1){

	direction=point_direction(x,y,room_width/2,room_height/2)
	dis=point_distance(x,y,room_width/2,room_height/2)
	speed=max(dis/8,1)
}else
	{
	x=room_width/2
	y=room_height/2
	speed=0

}

if(image_alpha>0){
	image_alpha-=0.02
	alarm[4]=1
}
else{
	ddrag=0
	instance_destroy()
	global.card_delay=0
}
