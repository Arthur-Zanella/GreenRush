
draw_set_font(Madness);
draw_text_color(10, 10, "Score: "+ string(global.pontuacao), c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text(10, 40, "Tempo: "+ string(global.timer));
if(global.num_lixo_chao >= 50){
	draw_text_color(230, 120, "FIM DE JOGO!", c_red, c_red, c_red, c_red, 1)
	draw_set_font(m5x7);
	draw_text_color(235, 145, "Aperte 'ENTER' para continuar", c_black, c_black, c_black, c_black, 1);
}
//draw_text(10, 70, "chao: "+ string(global.num_lixo_chao));
//draw_text(10, 100, "totalpilha: "+ string(obj_pontocoleta.total));
//draw_text(10, 130, "pilhanoplayer: "+ string(obj_pontocoleta.count_pilha));



