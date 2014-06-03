
function multiplesSum(multiple) {
	var sum = 0;
	for (var i=0; i < 1001; i += multiple) {
		sum += i;
	}
	return sum;
};

multiplesSum(3) + multiplesSum(5);