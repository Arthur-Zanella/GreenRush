font_add(Font1, 15, false, false, 32, 128);
draw_text(10, 10, "Score: "+ string(global.pontuacao));
draw_text(10, 40, "Tempo: "+ string(global.timer));
draw_text(10, 70, "lixo: "+ string(instance_number(obj_lixo)));
draw_text(10, 100, "cqueda: "+ string(obj_spawnerlixo.chanceQueda));



