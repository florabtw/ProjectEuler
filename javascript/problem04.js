function isPalindrome(num) {
  var num = num.toString();
  var half =  num.slice(0, num.length / 2);
  var reversed = half.split('').reverse().join('');
  return num.endsWith(reversed);
}

var i = 999;
var j = 999;
var maxPalindrome = 0;

while (i * j > maxPalindrome || j !== 999) {
  if (i * j < maxPalindrome) {
    i--;
    j = 999;
  } else if ( isPalindrome(i * j) ) {
    maxPalindrome = i * j;
    i--;
    j = 999;
  } else {
    j--;
  }
}

console.log(maxPalindrome);
