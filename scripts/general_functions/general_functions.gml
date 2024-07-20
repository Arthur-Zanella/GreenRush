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