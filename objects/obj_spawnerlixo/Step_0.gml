if(global.pause)exit;
spawn_interval = base_interval / (1 + (global.num_lixo_chao / scale_factor)); //Intervalo de spawn do lixo
	

if (tempo >= spawn_interval) { 
	randomize();
	var rand_tipo = irandom(total_weight_tipo - 1);
    var tipo_lixo;

	    if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL]) {
	        tipo_lixo = tipoResiduo.PAPEL;
	    } else if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL] + pesos_tipo[tipoResiduo.PLASTICO]) {
	        tipo_lixo = tipoResiduo.PLASTICO;
	    } else if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL] + pesos_tipo[tipoResiduo.PLASTICO] + pesos_tipo[tipoResiduo.VIDRO]) {
	        tipo_lixo = tipoResiduo.VIDRO;
	    } else if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL] + pesos_tipo[tipoResiduo.PLASTICO] + pesos_tipo[tipoResiduo.VIDRO] + pesos_tipo[tipoResiduo.METAL]) {
	        tipo_lixo = tipoResiduo.METAL;
	    } else if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL] + pesos_tipo[tipoResiduo.PLASTICO] + pesos_tipo[tipoResiduo.VIDRO] + pesos_tipo[tipoResiduo.METAL] + pesos_tipo[tipoResiduo.ORGANICO]) {
	        tipo_lixo = tipoResiduo.ORGANICO;
	    } else if (rand_tipo < pesos_tipo[tipoResiduo.PAPEL] + pesos_tipo[tipoResiduo.PLASTICO] + pesos_tipo[tipoResiduo.VIDRO] + pesos_tipo[tipoResiduo.METAL] + pesos_tipo[tipoResiduo.ORGANICO] + pesos_tipo[tipoResiduo.COMUM]) {
			tipo_lixo = tipoResiduo.COMUM;
		} else {
			tipo_lixo = tipoResiduo.PILHA;
		}

    chance_queda = irandom(500);
	var current_chance = 10 + (global.timer * 0.1);
	if(current_chance >= 500)current_chance = 500;
    if (chance_queda < current_chance) {
		
        var sorteio = random_range(320, 600);
        switch (tipo_lixo) {
            case tipoResiduo.PAPEL:
				var i = irandom(2);
                instance_create_layer(sorteio, y, "Lixo", papel[i]);
                break;
            case tipoResiduo.PLASTICO:
				var i = irandom(2);
                instance_create_layer(sorteio, y, "Lixo", plastico[i]);
                break;
            case tipoResiduo.VIDRO:
				var i = irandom(2);
                instance_create_layer(sorteio, y, "Lixo", vidro[i]);
                break;
            case tipoResiduo.METAL:
				var i = irandom(2);
                instance_create_layer(sorteio, y, "Lixo", metal[i]);
                break;
            case tipoResiduo.ORGANICO:
				var i = irandom(2);
                instance_create_layer(sorteio, y, "Lixo", organico[i]);
                break;
            case tipoResiduo.COMUM:
				var i = irandom(3);
                instance_create_layer(sorteio, y, "Lixo", comum[i]);
                break;
            case tipoResiduo.PILHA:
                instance_create_layer(sorteio, y, "Lixo", obj_battery);
                break;
        }
        tempo = 0; // Resetar o temporizador
    }
} else {
		tempo += 1; // Incrementar o temporizador
}
