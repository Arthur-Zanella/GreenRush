function scr_array_sum(arr) {
    var total = 0;
    for (var i = 0; i < array_length(arr); i++) {
        total += arr[i];
    }
    return total;
}
function scr_papermove(){
	x = initial_x + oscillation_amplitude * sin(time);
	time += oscillation_speed;
}
function scr_powerup(){
	var mouse_x_pos = mouse_x;
	var mouse_y_pos = mouse_y;
	// Supondo que os objetos de lixo sejam instâncias de um objeto chamado obj_lixo
with (obj_lixo) {
    var dx = mouse_x_pos - x;
    var dy = mouse_y_pos - y;
    
    // Calcular a distância ao quadrado (evita o cálculo de raiz quadrada, que é mais custoso)
    var distance_sq = dx * dx + dy * dy;
    
    // Evitar divisão por zero
    if (distance_sq != 0) {
        // Calcular a força de atração, ajustando a constante de força conforme necessário
        var force = 10000 / distance_sq;
        
        // Calcular a direção do vetor de atração
        var angle = point_direction(x, y, mouse_x_pos, mouse_y_pos);
        
        // Calcular a velocidade de atração
        var vx = lengthdir_x(force, angle);
        var vy = lengthdir_y(force, angle);
        
        // Aplicar a velocidade ao objeto
		vx = clamp(vx, -1, 1);
		vy = clamp(vy, -1, 1);

        x += vx;
        y += vy;
    }
}
}