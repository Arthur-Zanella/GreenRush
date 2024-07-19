
function recipiente_input(){
	if(mouse_check_button_pressed(mb_right)){
	if(state < 4){
	state += 1;
	}else{
	state -= 4;
	}
}
if(mouse_check_button_pressed(mb_left)){
	if(state > 0){
		state --;
	}else{
		state += 4;
	}
}
}