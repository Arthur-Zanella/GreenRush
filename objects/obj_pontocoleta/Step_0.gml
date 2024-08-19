if(count_pilha > 0){
	if(place_meeting(x, y, obj_player)){
		count += count_pilha;
		total += count;
		if(count>= 2){
			count -= 2;
			global.powerup = true;
			//alarm[0] = room_speed;
			//alarm[1] = room_speed*30;
		}
		count_pilha = 0;
	}
}


//if(global.powerup)scr_powerup();
