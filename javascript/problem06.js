function* range(min, max) {
  for (var i = min; i <= max; i++) {
    yield i;
  }
}

var nums = [ ...range(0, 100) ];

var sumOfSquares = nums.map( n => n * n ).reduce( (sum, n) => sum + n );
var sumOfNums    = nums.reduce( (sum, n) => sum + n );
var squareOfSum  = sumOfNums * sumOfNums;

console.log( squareOfSum - sumOfSquares );
