var _ = require( 'lodash' );

var nums = _.range( 3, 2000000, 2 );

var i = 0;
var prime = nums[ i ];
while ( prime < Math.sqrt( 2000000 ) ) {
  nums = nums.filter( n => n == prime || n % prime != 0 );
  prime = nums[ ++i ];
}

nums.unshift( 2 );

var sum = nums.reduce( (sum, n) => sum + n );

console.log( sum );
