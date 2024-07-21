font_add(Font1, 15, false, false, 32, 128);
draw_text(10, 10, "Score: "+ string(global.pontuacao));
draw_text(10, 40, "Tempo: "+ string(global.timer));
draw_text(10, 70, "chao: "+ string(global.num_lixo_chao));
draw_text(10, 100, "totalpilha: "+ string(obj_pontocoleta.total));
draw_text(10, 130, "pilhanoplayer: "+ string(obj_pontocoleta.count_pilha));



