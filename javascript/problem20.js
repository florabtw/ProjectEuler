var bigInt = require( 'big-integer' );

function fact(num) {
  if ( num.isZero() ) {
    return bigInt.one;
  }

  return num.multiply( fact( num.subtract( 1 ) ) );
}

var answer = fact( bigInt( 100 ) )
  .toString()
  .split('')
  .reduce( (s, n) => s + Number( n ), 0 );

console.log( answer );
