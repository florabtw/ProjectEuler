var a = 0;
for (var c = 997; c > 333; c--) {
  for (var b = 2; b + c <= 1000 && b < c; b++) {
    var a = 1000 - c - b;

    if (a >= b) { continue; }

    if ( Math.pow( a, 2 ) + Math.pow( b, 2 ) == Math.pow( c, 2 ) ) {
      console.log( a * b * c );
      process.exit();
    }
  }
}
