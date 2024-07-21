enum tipoResiduo{
	PAPEL,
	PLASTICO,
	VIDRO,
	METAL,
	ORGANICO,
	COMUM,
	PILHA
}
#region Atributos
tempo = 0;
base_interval = 100;
scale_factor = 60;
spawn_interval = base_interval;
chance_queda = 0;
pesos_tipo = [35, 25, 15, 5, 9, 8, 3]; //Peso de chance de spaw para cada resíduo
total_weight_tipo = scr_array_sum(pesos_tipo); //Soma dos pesos(sempre 100)
#endregion
#region Objetos
papel = array_create(3);
	papel[0] = obj_jornal;
	papel[1] = obj_box;
	papel[2] = obj_paperbag;
plastico = array_create(3);
	plastico[0] = obj_bottle;
	plastico[1] = obj_milkjug;
	plastico[2] = obj_randomjug;
vidro = array_create(3);
	vidro[0] = obj_glass;
	vidro[1] = obj_sodaglass;
	vidro[2] = obj_beerglass;
metal = array_create(3);
	metal[0] = obj_soda;
	metal[1] = obj_lata;
	metal[2] = obj_metalcan;
organico = array_create(3);
	organico[0] = obj_apple;
	organico[1] = obj_egg;
	organico[2] = obj_banana;
comum = array_create(4);
	comum[0] = obj_cup;
	comum[1] = obj_pizzabox;
	comum[2] = obj_spraycan;
	comum[3] = obj_ceramicmug;
#endregion