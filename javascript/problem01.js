console.log(
  Array
    .apply(0, Array(1000))
    .map((x, y) => y)
    .filter(x => !(x % 3 && x % 5))
    .reduce((x, y) => x + y)
);
