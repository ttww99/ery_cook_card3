/// @description Insert description here
// You can write your code in this editor
ani_x=0
fellow_seq=0
//fellow_hp=0

enemy_seq=0


skill=0

with(obj_battle_character){
	if(front_seq==global.imsi_with1)
		global.imsi_with5=seq
}

a=instance_create_depth(room_width/2-room_width/4,room_height/2,-98,obj_enlarge_sd)
with(a){
	seq=global.imsi_with2//global.imsi_with5
	//show_message(other.fellow_seq)
}

//show_message(global.battle_fellow_turn)
imsi_x=0
imsi_xx=0
start_x=room_width/2+room_width/4
alarm[0]=1
