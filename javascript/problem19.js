const SUNDAY = 0;
const FEBRUARY = 1;
const DAYS_IN_MONTH = {
  0: 31,
  1: 28,
  2: 31,
  3: 30,
  4: 31,
  5: 30,
  6: 31,
  7: 31,
  8: 30,
  9: 31,
  10: 30,
  11: 31
}

function isLeapYear(year) {
  var isCentury = ( year % 1000 == 0 );
  var isDivisibleBy400 = ( year % 400 == 0 );
  var isDivisibleBy4 = ( year % 4 == 0 );
  return isCentury ? isDivisibleBy400 : isDivisibleBy4;
}

/**
 * Input:
 *  date:  1-indexed day of month
 *  month: 0-indexed month of year
 *  year:  actual year
 * Output: 1-indexed day of month
 */
function incrementDate(date, month, year) {
  if ( date < DAYS_IN_MONTH[ month ] ) {
    return date + 1;
  } else if ( month == FEBRUARY && date == DAYS_IN_MONTH[ month ] && isLeapYear( year ) ) {
    return date + 1;
  } else {
    return 1;
  }
}

// increments month if date was reset
function incrementMonth(date, month) {
  if ( date == 1 ) {
    return ( month + 1 ) % 12;
  } else {
    return month;
  }
}

// increments year if date and month were reset
function incrementYear(date, month, year) {
  if ( date == 1 && month == 0 ) {
    return year + 1;
  } else {
    return year;
  }
}

var day = 1;   // 0-indexed weekday [ Sunday, Monday, Tuesday... ]
var date = 1;  // 1-indexed day of month [ 1st, 2nd, 3rd, ... ]
var month = 0; // 0-indexed month of year
var year = 1900;

var answer = 0;
while ( year < 2001 ) {
  if ( day == SUNDAY && date == 1 && year != 1900 ) {
    answer++;
  }

  day = ( day + 1 ) % 7;
  date = incrementDate( date, month, year );
  month = incrementMonth( date, month );
  year = incrementYear( date, month, year );
}

console.log( answer );
