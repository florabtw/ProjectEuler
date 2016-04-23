var longestLength = 0;
var answer = 0;

var collatzSequence = function(num) {
  if ( num == 1 ) {
    return 1;
  } else if ( num % 2 == 0 ) {
    return 1 + collatzSequence( num / 2 );
  } else {
    return 1 + collatzSequence( ( 3 * num ) + 1 );
  }
}

for (var i = 1; i < 1000000; i++) {
  var collatzLength = collatzSequence( i );
  if ( collatzLength > longestLength ) {
    longestLength = collatzLength;
    answer = i;
  }
}

console.log( answer );
