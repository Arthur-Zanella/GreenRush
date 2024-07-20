if(global.pause)exit;
if(nosolo){
	spawn_interval = base_interval / (1 + (instance_number(obj_lixo) / scale_factor));
	global.lixocaido = instance_number(obj_lixo) - 5;
}
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
	    } else {
	        tipo_lixo = tipoResiduo.ORGANICO;
	    }

    chanceQueda = irandom(500);
	var current_chance = 10 + (global.timer * 0.1);
    if (chanceQueda < current_chance) {
        var sorteio = random_range(320, 600);
        switch (tipo_lixo) {
            case tipoResiduo.PAPEL:
                instance_create_layer(sorteio, y, "Lixo", obj_papel);
                break;
            case tipoResiduo.PLASTICO:
                instance_create_layer(sorteio, y, "Lixo", obj_plastico);
                break;
            case tipoResiduo.VIDRO:
                instance_create_layer(sorteio, y, "Lixo", obj_vidro);
                break;
            case tipoResiduo.METAL:
                instance_create_layer(sorteio, y, "Lixo", obj_metal);
                break;
            case tipoResiduo.ORGANICO:
                instance_create_layer(sorteio, y, "Lixo", obj_organico);
                break;
        }
        tempo = 0; // Resetar o temporizador
    }
} else {
    tempo += 1; // Incrementar o temporizador
}
