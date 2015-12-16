function largestPrimeFactor(num) {
  var maxVal = Math.floor( Math.sqrt(num) );
  for (i = 2; i < maxVal ; i++) {
    if (num % i === 0) {
      return largestPrimeFactor(num / i);
    }
  }

  return num;
}

console.log( largestPrimeFactor(6008514751) );
