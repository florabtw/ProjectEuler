var cache = {};

function d(num) {
  if ( num == 1 ) {
    return 0;
  }

  if ( !cache[ num ] ) {
    var divisors = [ 1 ];
    for (var i = 2; i < Math.sqrt( num ); i++) {
      if ( num % i == 0 ) {
        divisors.push( i );
        divisors.push( num / i );
      }
    }

    if ( Math.sqrt( num ) % 1 == 0 ) {
      divisors.push( num );
    }

    cache[ num ] = divisors.reduce( (sum, n) => sum + n, 0 );
  }

  return cache[ num ];
}

var amicable = [];
for (var a = 2; a < 10000; a++) {
  var b = d( a );
  if ( a != b && d( b ) == a ) {
    amicable.push( a );
  }
}

console.log( amicable.reduce( (sum, n) => sum + n ) );
