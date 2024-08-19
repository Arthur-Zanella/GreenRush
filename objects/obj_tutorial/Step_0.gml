if(global.is_tutorial = false){
	if(instance_exists(obj_tutorial)) instance_destroy(obj_tutorial);
}


keya = spr_a;
keyw = spr_w;
keyd = spr_d;

if(!movetutorial){
	if(keyboard_check(ord("A"))) keya = spr_presseda;
	if(keyboard_check_released(ord("A"))) apress = true;
	if(keyboard_check(ord("D"))) keyd = spr_pressedd;
	if(keyboard_check_released(ord("D"))) dpress = true;
	if(apress and dpress){
	count++
	if(count > 10) {
		movetutorial = true 
		count = 0;
	}
}
	
}
if(movetutorial and !jumptutorial){
	if(keyboard_check(ord("W"))) keyw = spr_presedw;
	if(keyboard_check_pressed(ord("W"))) wpress = true;	
	if(wpress){
	count++
	if(count > 10){
		jumptutorial = true;
		count = 0;
	}
}
}
if(movetutorial and jumptutorial and !mousetutorial){
	if(mouse_check_button_released(mb_left)) mblpress = true;
	if(mouse_check_button_released(mb_right)) mbrpress = true;
	if(mblpress and mbrpress){
		count++
	if(count > 10){
		mousetutorial = true;
		count = 0;
	}
}
}
if(movetutorial and jumptutorial and mousetutorial and !coletatutorial){
	if(global.num_lixo_chao > 0){
		instance_destroy(obj_lixo);
		global.num_lixo_chao = 0;
	}
	if(!instance_exists(obj_lixo) and count = 0){
		instance_create_layer(160, y, "Lixo", obj_jornal);
		count ++;
	}
	if(!instance_exists(obj_lixo) and count = 1 ){
		instance_create_layer(160, y, "Lixo", obj_bottle);
		count ++;
	}
	if(!instance_exists(obj_lixo) and count = 2 ){
		instance_create_layer(160, y, "Lixo", obj_glass);
		count ++;
	}
	
	if(count >= 3 and !instance_exists(obj_lixo)) coletatutorial = true;
	
}

if(movetutorial and jumptutorial and mousetutorial and coletatutorial){
	if(keyboard_check(vk_enter)) {
		global.is_tutorial = false; 
		global.pontuacao = 0;
		instance_destroy(obj_lixo);
	}
	
}


