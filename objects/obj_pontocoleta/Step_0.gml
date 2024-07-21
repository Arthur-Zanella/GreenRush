if(count_pilha > 0){
	if(place_meeting(x, y, obj_player)){
		count += count_pilha;
		total += count;
		if(count>= 2){
			count -= 2;
		}
		count_pilha = 0;
	}
}



