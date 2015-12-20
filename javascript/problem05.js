function isLeastCommonMultiple(num) {
  for (var i = 19; i > 10; i--) {
    if (num % i !== 0) {
      return false;
    }
  }
  return true;
}

var i = 20;
while( !isLeastCommonMultiple(i) ) { i += 20; }

console.log( i );
