if(count_lixo > 0){
	if(place_meeting(x, y, obj_player)){
		count += count_lixo;
		total += count;
		if(count>= 2){
			count -= 2;
		}
		count_lixo = 0;
	}
}
obj_player.spd = clamp(5 - count_lixo, 1, 5); 







