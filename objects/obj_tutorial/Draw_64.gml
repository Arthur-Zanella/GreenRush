draw_set_font(m5x7);
if(!movetutorial){
draw_sprite_ext(spr_UIcomumdescription, 0 , guil/2 - boxl/2, (guia/2 - boxa/2) - 140, escala, escala, 0, c_white, 1);
draw_text_ext_color(guil/2 - 75, guia/2 - 150, string(tutorial[0]), 20, 270, c_black, c_black, c_black, c_black, 1);
draw_sprite_ext(keya, 0, guil/2 - 45, guia/2 - 138, 1, 1, 0, c_white, 1);
draw_sprite_ext(keyd, 0, guil/2 - 15, guia/2 - 138, 1, 1, 0, c_white, 1);
}

if(movetutorial and !jumptutorial){
draw_sprite_ext(spr_UIcomumdescription, 0 , guil/2 - boxl/2, (guia/2 - boxa/2) - 140, escala, escala, 0, c_white, 1);
draw_text_ext_color(guil/2 - 75, guia/2 - 150, string(tutorial[1]), 20, 270, c_black, c_black, c_black, c_black, 1);
draw_sprite_ext(keyw, 0,guil/2 - 45, guia/2 - 138, 1, 1, 0, c_white, 1);
}
if(movetutorial and jumptutorial and !mousetutorial){
	draw_sprite_ext(spr_UIcomumdescription, 0 , guil/2 - boxl/2, (guia/2 - boxa/2) - 140, escala, escala, 0, c_white, 1);
	draw_text_ext_color(xb + 5, yb - 115, string(tutorial[2]), 20, 180, c_black, c_black, c_black, c_black, 1);
}
if(movetutorial and jumptutorial and mousetutorial and !coletatutorial){
	draw_sprite_ext(spr_UIcomumdescription, 0 , guil/2 - boxl/2, (guia/2 - boxa/2) - 140, escala, escala, 0, c_white, 1);
	draw_text_ext_color(xb + 3, yb - 125, string(tutorial[3]), 20, 180, c_black, c_black, c_black, c_black, 1);
}
if(movetutorial and jumptutorial and mousetutorial and coletatutorial){
	draw_sprite_ext(spr_UIcomumdescription, 0 , (guil/2 - boxl/2) - 50, (guia/2 - boxa/2) - 120, escala+1, escala+1.5, 0, c_white, 1);
	draw_text_ext_color(xb - 40, yb - 100, string(tutorial[4]), 20, 270, c_black, c_black, c_black, c_black, 1);
}