function numDivisors(num) {
  var result = 0;

  for (var i = 1; i < Math.sqrt( num ); i++) {
    if ( num % i == 0 ) {
      result += 2;
    }
  }

  if ( Math.sqrt(num) % 0 == 0 ) {
    result++;
  }

  return result;
}

var sum = 0;

for (var i = 0; ; i++) {
  sum += i;

  if ( numDivisors( sum ) >= 500 ) {
    break;
  }
}

console.log( sum );
