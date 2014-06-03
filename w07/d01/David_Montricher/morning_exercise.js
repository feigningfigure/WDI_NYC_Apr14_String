var total = 0;
for (var index = 0; index < 1000; index++) {
  if (index % 3 === 0 || index % 5 === 0) {
    total += index;
  }
}
console.log('Total: %d', total);

