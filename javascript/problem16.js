var bigInt = require( 'big-integer' );
console.log(String(bigInt(2).pow(1000)).split('').reduce((s,n)=>s+Number(n),0));
