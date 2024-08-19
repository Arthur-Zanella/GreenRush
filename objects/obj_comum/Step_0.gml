event_inherited();
if(place_meeting(x, y, obj_player)){
	instance_destroy(instance_nearest(obj_player.x, obj_player.y, obj_comum));
	obj_lixocomum.count_lixo ++;
}

