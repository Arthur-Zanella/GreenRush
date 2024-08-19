if(global.pause)exit;
//Controle do recipiente

recipiente_input();
if(place_meeting(x, y-1, obj_comum)){
	instance_destroy(instance_nearest(x, y, obj_comum));
	global.pontuacao -= 5;		
}

//Troca a cor do recipiente e muda seu estado
switch(state){
	case states.AZUL:
			sprite_index = spr_pap;
		if(place_meeting(x, y-1, obj_lixo)){
			if(instance_nearest(x,y,obj_lixo).tid == 1){
				instance_destroy(instance_nearest(x, y, obj_papel));
				global.pontuacao += 1;
			}else{
				instance_destroy(instance_nearest(x, y, obj_lixo));
				global.pontuacao -= 1;
				global.num_lixo_chao ++;
				var i = irandom(2);
                instance_create_layer(x+30, y+15, "Lixo", obj_spawnerlixo.vidro[i]);
			}
		}
		break;
		
	case states.VERMELHO:
		sprite_index = spr_plast;
		if(place_meeting(x, y-1, obj_lixo)){
			if(instance_nearest(x,y,obj_lixo).tid == 2){
				instance_destroy(instance_nearest(x, y, obj_plastico));
				global.pontuacao += 2;
			}else{
				instance_destroy(instance_nearest(x, y, obj_lixo));
				global.pontuacao -= 1;
				global.num_lixo_chao ++;
				var i = irandom(2);
                instance_create_layer(x+30, y+15, "Lixo", obj_spawnerlixo.organico[i]);
			}
		}
		break;
		
	case states.VERDE:
		sprite_index = spr_vidr;
		if(place_meeting(x, y-1, obj_lixo)){
			if(instance_nearest(x,y,obj_lixo).tid == 3){
				instance_destroy(instance_nearest(x, y, obj_vidro));
				global.pontuacao += 2;
			}else{
				instance_destroy(instance_nearest(x, y, obj_lixo));
				global.pontuacao -= 1;
				global.num_lixo_chao ++;
				var i = irandom(2);
                instance_create_layer(x+30, y+15, "Lixo", obj_spawnerlixo.papel[i]);
			}
		}
		break;
		
	case states.AMARELO:
		sprite_index = spr_met;
		if(place_meeting(x, y-1, obj_lixo)){
			if(instance_nearest(x,y,obj_lixo).tid == 4){
				instance_destroy(instance_nearest(x, y, obj_metal));
				global.pontuacao += 5;
			}else{
				instance_destroy(instance_nearest(x, y, obj_lixo));
				global.pontuacao -= 1;
				global.num_lixo_chao ++;
				var i = irandom(2);
                instance_create_layer(x+30, y+15, "Lixo", obj_spawnerlixo.plastico[i]);
			}
		}
		break;
		
	case states.MARROM:
		sprite_index = spr_org;
		if(place_meeting(x, y-1, obj_lixo)){
			if(instance_nearest(x,y,obj_lixo).tid == 5){
				instance_destroy(instance_nearest(x, y, obj_organico));
				global.pontuacao += 3;
			}else{
				instance_destroy(instance_nearest(x, y, obj_lixo));
				global.pontuacao -= 1;
				global.num_lixo_chao ++;
				var i = irandom(2);
                instance_create_layer(x+30, y+15, "Lixo", obj_spawnerlixo.metal[i]);
			}
		}
		break;		
}



