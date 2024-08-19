function scr_description(){
	var c = c_black;
	
	/*var descript[];
	descript[1] = "peido/ncoco";
	
	
	
	var escala = 3;
	var boxl = sprite_get_width(spr_UIpaperdescription) * escala;
	var boxa = sprite_get_height(spr_UIpaperdescription) * escala;
	var guil = display_get_gui_width();
	var guia = display_get_gui_height();
	var xb =  guil/2 - boxl/2;
	var yb =  guia/2 - boxa/2;
	*/
	if(collision_point(mouse_x, mouse_y, obj_lixo, 0, 0) != noone){
		
		
		


		var lixo = collision_point(mouse_x, mouse_y, obj_lixo, 0, 0);
		draw_set_font(m5x7);
		
		
			switch (lixo.object_index) {
				case obj_jornal :
					draw_sprite_ext(spr_UIpaperdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[0]), 20, 270, c, c, c, c, 1);
				break;
				case obj_box :
					draw_sprite_ext(spr_UIpaperdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[1]), 20, 270, c, c, c, c, 1);
				break;
				case obj_paperbag :
					draw_sprite_ext(spr_UIpaperdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[2]), 20, 270, c, c, c, c, 1);
				break;
				case obj_bottle :
					draw_sprite_ext(spr_UIplasticdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[3]), 20, 270, c, c, c, c, 1);
				break;
				case obj_milkjug :
					draw_sprite_ext(spr_UIplasticdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[4]), 20, 270, c, c, c, c, 1);
				break;
				case obj_randomjug :
					draw_sprite_ext(spr_UIplasticdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[5]), 20, 270, c, c, c, c, 1);
				break;
				case obj_glass :
					draw_sprite_ext(spr_UIglassdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[6]), 20, 270, c, c, c, c, 1);
				break;
				case obj_sodaglass :
					draw_sprite_ext(spr_UIglassdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[7]), 20, 270, c, c, c, c, 1);
				break;
				case obj_beerglass :
					draw_sprite_ext(spr_UIglassdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[8]), 20, 270, c, c, c, c, 1);
				break;
				case obj_soda :
					draw_sprite_ext(spr_UImetaldescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[9]), 20, 270, c, c, c, c, 1);
				break;
				case obj_metalcan :
					draw_sprite_ext(spr_UImetaldescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[10]), 20, 270, c, c, c, c, 1);
				break;
				case obj_lata :
					draw_sprite_ext(spr_UImetaldescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[11]), 20, 270, c, c, c, c, 1);
				break;
				case obj_banana :
					draw_sprite_ext(spr_UIorganicdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[12]), 20, 270, c, c, c, c, 1);
				break;
				case obj_egg :
					draw_sprite_ext(spr_UIorganicdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[13]), 20, 270, c, c, c, c, 1);
				break;
				case obj_apple :
					draw_sprite_ext(spr_UIorganicdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[14]), 20, 270, c, c, c, c, 1);
				break;
				/*case obj_ceramicmug :
					draw_sprite_ext(spr_UIcomumdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[15]), 20, 270, c, c, c, c, 1);
				break;
				case obj_pizzabox :
					draw_sprite_ext(spr_UIcomumdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[16]), 20, 270, c, c, c, c, 1);
				break;
				case obj_spraycan :
					draw_sprite_ext(spr_UIcomumdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[17]), 20, 270, c, c, c, c, 1);
				break;
				case obj_cup :
					draw_sprite_ext(spr_UIcomumdescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[18]), 20, 270, c, c, c, c, 1);
				break;*/
				case obj_battery :
					draw_sprite_ext(spr_UIbatterydescription, 0, guil/2 - boxl/2, guia/2 - boxa/2, 3, 3, 0, c_white, 1);
					draw_text_ext_color(xb+10, yb+30, string(descript[15]), 20, 270, c, c, c, c, 1);
				break;
				
			}
		
}
		
		
	
	
}
