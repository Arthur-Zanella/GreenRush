
//Controle do recipiente
recipiente_input();

//Troca a cor do recipiente e muda seu estado
switch(state){
	case states.AZUL:
		sprite_index = spr_pap;
		if(place_meeting(x, y-1, obj_papel)){
			instance_destroy(instance_nearest(x, y, obj_papel));
			global.pontuacao += 1;
		}
		break;
		
	case states.VERMELHO:
		sprite_index = spr_plast;
		if(place_meeting(x, y-1, obj_plastico)){
			instance_destroy(instance_nearest(x, y, obj_plastico));
			global.pontuacao += 2;		
		}
		break;
		
	case states.VERDE:
		sprite_index = spr_vidr;
		if(place_meeting(x, y-1, obj_vidro)){
			instance_destroy(instance_nearest(x, y, obj_vidro));
			global.pontuacao += 2;
		}
		break;
		
	case states.AMARELO:
		sprite_index = spr_met;
		if(place_meeting(x, y-1, obj_metal)){
			instance_destroy(instance_nearest(x, y, obj_metal));
			global.pontuacao += 5;
		}
		break;
		
	case states.MARROM:
		sprite_index = spr_org;
		if(place_meeting(x, y-1, obj_organico)){
			instance_destroy(instance_nearest(x, y, obj_organico));
			global.pontuacao += 3;
		}
		break;		
}



