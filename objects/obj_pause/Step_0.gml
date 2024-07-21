if(mouse_x == x and mouse_y == y){
	image_xscale = 1;
	image_yscale = 1;
	if(mouse_check_button_pressed(mb_left)){
		global.pause = !global.pause;
	}
}else{
	image_xscale = 0.5;
	image_yscale = 0.5;
}







