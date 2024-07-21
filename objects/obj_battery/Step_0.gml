event_inherited();
if(place_meeting(x, y, obj_player)){
	instance_destroy(instance_nearest(obj_player.x, obj_player.y, obj_battery));
	obj_pontocoleta.count_pilha ++;
}





