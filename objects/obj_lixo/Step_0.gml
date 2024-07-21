
if(global.pause){
	speed = 0;
	exit;
}else{
	speed = normal_speed;
}
if place_meeting(x,y+speed,obj_wall){ //Colisão vertical
		// Se o lixo está no chão e não foi contado ainda
		while !place_meeting(x,y+sign(speed),obj_wall){
			y+=sign(speed);
		}
		speed = 0;
}

if(place_meeting(x, y+1, obj_wall)){ 
	if place_meeting(x+sign(obj_player.xmove), y, obj_player){//Interação do player com o lixo acumulado no chão
		direction = point_direction(x, y, obj_player.x, y);
		move_bounce_all(true);
		speed = 1;
		obj_player.spd = 3;
	}else{
		move_bounce_all(false);
		speed = 0;
	}
	if (!is_counted) {
        global.num_lixo_chao += 1;
        is_counted = true;
	}
}else{
	direction = main_direction;
	obj_player.spd = 5;
	 
    if (is_counted) {// Se o lixo não está mais no chão, atualizar a contagem
        global.num_lixo_chao -= 1;
        is_counted = false;
    }
}


		







