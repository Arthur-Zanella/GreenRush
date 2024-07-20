
function scr_ground(){
	ground = place_meeting(x, y+1, obj_wall); //Confere se o player está no chão
}
#region Movimentação
function scr_move(){
	xmove = (-keyboard_check(ord("A"))+keyboard_check(ord("D")))*spd; //Aciona movimento horizontal
	scr_xcollision();
	// Movimento Horizontal
	x += xmove;	
}

function scr_jump(){
	scr_ground();
	scr_ycollision();
	//Movimento Vertical 
	y += ymove;
	//Coyotte time
	if(ground){ 
		coyotte_time = 5;
	}else{
		coyotte_time --;
	}
	//Pulo e Gravidade
	if (keyboard_check_pressed(ord("W")) and coyotte_time > 0){
			coyotte_time = 0;
			ymove = 0;
			ymove += jpforce;
	
	}else{
		ymove += grvt
	}
	
}
#endregion
#region Colisão
function scr_xcollision(){
	//Colisão Horizontal
	if place_meeting(x+xmove,y,obj_wall){
		while !place_meeting(x+sign(xmove),y,obj_wall){
			x+=sign(xmove);
		}
		xmove = 0;
	}
}

function scr_ycollision(){
	//Colisão Vertical
	if place_meeting(x,y+ymove,obj_wall){
		while !place_meeting(x,y+sign(ymove),obj_wall){
			y+=sign(ymove);
		}
		ymove = 0;
	}
}
#endregion
function scr_animacao(){
	if(xmove == 0){
		sprite_index = spr_idle;
	}else if(xmove > 0){
		sprite_index = spr_runr;
	}else{
		sprite_index =spr_runl;
	}
}

	
