function getDivisors(num) {
  if ( num == 1 ) {
    return [];
  }

  var divisors = [ 1 ];
  for (var divisor = 2; divisor < Math.sqrt( num ); divisor++) {
    if ( num % divisor == 0 ) {
      divisors.push( divisor );
      divisors.push( num / divisor );
    }
  }

  if ( Math.sqrt( num ) % 1 == 0 ) {
    divisors.push( Math.sqrt( num ) );
  }

  return divisors;
}

var abundants = [];
for (var abundant = 12; abundant < 28123; abundant++) {
  var divisors = getDivisors( abundant );
  var sumDivisors = divisors.reduce( (sum, n) => sum + n, 0 );
  if ( sumDivisors > abundant ) {
    abundants.push( abundant );
  }
}

var summedByAbundants = {};
for (var i = 0; i < abundants.length; i++) {
  for (var j = i; j < abundants.length; j++) {
    var sum = abundants[ i ] + abundants[ j ];
    if ( sum > 28123 ) break;

    summedByAbundants[ sum ] = true;
  }
}

var answers = [];
for (var i = 1; i < 28123; i++) {
  if ( !summedByAbundants[ i ] ) {
    answers.push( i );
  }
}

var answer = answers.reduce( (sum, n) => sum + n );
console.log( answer );
