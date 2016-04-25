var cache = {
  '0,0': 1,
};

function latticePaths(x, y) {
  if ( cache[ [ x, y ] ] ) { // handles (20,20)
    return cache[ [ x, y ] ];
  } else if ( x == 0 ) {
    cache[ [ x, y ] ] = latticePaths( x, y - 1 );
  } else if ( y == 0 ) {
    cache[ [ x, y ] ] = latticePaths( x - 1, y );
  } else {
    var down = latticePaths( x, y - 1 );
    var right = latticePaths( x - 1, y );
    cache[ [ x, y ] ] = down + right;
    cache[ [ y, x ] ] = down + right; // symmetric points have same answer
  }

  return cache[ [ x, y ] ];
}

console.log( latticePaths( 20, 20 ) );
