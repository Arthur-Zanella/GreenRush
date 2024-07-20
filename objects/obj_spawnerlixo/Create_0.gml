nosolo = false;
tempo = 0;
base_interval = 120;
scale_factor = 80;
spawn_interval = base_interval;
chanceQueda = 0;
enum tipoResiduo{
	PAPEL,
	PLASTICO,
	VIDRO,
	METAL,
	ORGANICO
}

pesos_tipo = [40, 30, 15, 5, 10]; //Peso de chance de spaw para cada resíduo
total_weight_tipo = scr_array_sum(pesos_tipo); //Soma dos pesos(sempre 100)