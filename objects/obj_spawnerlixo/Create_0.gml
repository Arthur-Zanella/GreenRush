
time = 0;
spawn_interval = 100; //Tempo em que é permitido o spawn de lixo (1.6s)


enum tipoResiduo{
	PAPEL,
	PLASTICO,
	VIDRO,
	METAL,
	ORGANICO
}

pesos_tipo = [35, 30, 20, 5, 10]; //Peso de chance de spaw para cada resíduo
total_weight_tipo = scr_array_sum(pesos_tipo); //Soma dos pesos(sempre 100)