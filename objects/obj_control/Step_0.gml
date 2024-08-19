
//surface_resize(application_surface, 640, 360);
if(!global.is_tutorial){
if (!instance_exists(obj_pause)) instance_create_layer(290, 15, "UI", obj_pause);
if(!instance_exists(obj_spawnerlixo)) instance_create_layer(0, -8, "Lixo", obj_spawnerlixo);
if(global.pontuacao <= 0)global.pontuacao = 0;
if (keyboard_check_pressed(vk_space)){
	global.pause = !global.pause;	
	
}
if(!global.pause){
	global.timer += delta_time/1000000;
	if(instance_exists(obj_description)) instance_destroy(obj_description);
	global.description = false;
}else{
	if(!instance_exists(obj_description))instance_create_layer(x, y, "UI", obj_description);
	global.description = true;
}
if(global.num_lixo_chao >= 50){
	global.pause = true;
	if(keyboard_check(vk_enter)) room_restart();
}
}else{
if(!instance_exists(obj_tutorial)) instance_create_layer(x + 10, y, "Instances", obj_tutorial)	
}
	