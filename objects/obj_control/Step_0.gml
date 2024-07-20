
if (keyboard_check_pressed(vk_space)){
	global.pause = !global.pause;	
}
if(!global.pause){
global.timer += delta_time/1000000;
}
if(global.lixocaido == 50){
	show_message("Você Perdeu");
	game_restart();
}
surface_resize(application_surface, 640, 360);