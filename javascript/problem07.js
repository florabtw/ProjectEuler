var _ = require( 'lodash' );

var max = 0;
while ( max / Math.log( max ) < 10001 ) {
  max += 1000;
}

var nums = _.range( 3, max, 2 );

var i = 0;
var prime = nums[ i ];
while ( prime < Math.sqrt( max ) ) {
  nums = nums.filter( n => n == prime || n % prime != 0 );
  prime = nums[ ++i ];
}

nums.unshift( 2 );

console.log( nums[ 10000 ] );
