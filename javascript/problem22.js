var fs   = require( 'fs' );
var path = require( 'path' );

var namesFile = path.join( __dirname, '../resources/names.txt' );
var names = fs.readFileSync( namesFile, 'utf-8' );

names = names
  .replace( /"/g, '' )
  .split( ',' )
  .sort();

// takes an all-caps name and returns its numeric 1-based value sum
function nameValue(name) {
  return name
    .split( '' )
    .reduce( (sum, n) => sum + ( n.charCodeAt( 0 ) - 64 ), 0 );
}

var answer = names.reduce( (sum, n, i) => sum + nameValue( n ) * ( i + 1 ), 0 );

console.log( answer );
