event_inherited();
var ground = place_meeting(x,y+1,obj_wall); //checa se o lixo está no chão
if place_meeting(x,y+speed,obj_wall){ //Colisão vertical
		while !place_meeting(x,y+sign(speed),obj_wall){
			y+=sign(speed);
		}
		speed = 0;
}

if(ground){ //Interação do player com o lixo acumulado no chão
	
	if place_meeting(x+sign(obj_player.xmove), y, obj_player){
		direction = point_direction(x, y, obj_player.x, y);
		move_bounce_all(true);
		speed = 2;
		obj_player.spd = 2.5;
	}else{
		move_bounce_all(false);
		speed = 0;
		obj_player.spd = 5;
	}
}else{
	direction = main_direction;
}


		







