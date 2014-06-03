function multiples_monday(number) {
	var multiples_sum = 0 
	for (var i = 0; i < number; i++) {
		if (i%3 === 0 || i%5 === 0) {
			multiples_sum = multiples_sum + i;
		}
	};
	return multiples_sum
};

console.log(multiples_monday(1000));
iconsole.log(multiples_monday(30));
