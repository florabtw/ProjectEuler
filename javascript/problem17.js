var ones = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four',
  5: 'five',
  6: 'six',
  7: 'seven',
  8: 'eight',
  9: 'nine',
  10: 'ten',
  11: 'eleven',
  12: 'twelve',
  13: 'thirteen',
  14: 'fourteen',
  15: 'fifteen',
  16: 'sixteen',
  17: 'seventeen',
  18: 'eighteen',
  19: 'nineteen'
}

var tens = {
  2: 'twenty',
  3: 'thirty',
  4: 'forty',
  5: 'fifty',
  6: 'sixty',
  7: 'seventy',
  8: 'eighty',
  9: 'ninety'
}

function toWritten(num) {
  if ( num < 20 ) {
    return ones[ num ];
  } else if ( num < 100 ) {
    var firstDigit = Math.floor( num / 10 );
    var remainder = num % 10;
    if ( remainder ) {
      return tens[ firstDigit ] + ones[ remainder ];
    } else {
      return tens[ firstDigit ];
    }
  } else if ( num < 1000 ) {
    var firstDigit = Math.floor( num / 100 );
    var remainder = num % 100;
    if ( remainder ) {
      return ones[ firstDigit ] + 'hundredand' + toWritten( remainder );
    } else {
      return ones [firstDigit ] + 'hundred';
    }
  } else {
    return 'onethousand';
  }
}

var written = '';
for (var i = 1; i <= 1000; i++) {
  written += toWritten( i );
}

console.log( written.length );
