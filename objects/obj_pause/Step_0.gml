if(position_meeting(mouse_x, mouse_y, obj_pause)){
	image_xscale = 0.6;
	image_yscale = 0.6;
	if(mouse_check_button_pressed(mb_left)){
		global.is_tutorial = !global.is_tutorial;
	}
}else{
	image_xscale = 0.5;
	image_yscale = 0.5;
}



