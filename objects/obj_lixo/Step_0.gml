if(global.pause){
	speed = 0;
	exit;
}else{
	speed = normal_speed;
}
scr_ground();
if place_meeting(x,y+speed,obj_wall){ //Colisão vertical
		while !place_meeting(x,y+sign(speed),obj_wall){
			y+=sign(speed);
		}
		speed = 0;
}

if(place_meeting(x, y+1, obj_wall)){ //Interação do player com o lixo acumulado no chão
	obj_spawnerlixo.nosolo = true;
	if place_meeting(x, y, obj_player){
		direction = point_direction(x, y, obj_player.x, y);
		move_bounce_all(true);
		speed = 1;
		obj_player.spd = 3;
	}else{
		move_bounce_all(false);
		speed = 0;
	}
}else{
	direction = main_direction;
	obj_player.spd = 5;
}


		







