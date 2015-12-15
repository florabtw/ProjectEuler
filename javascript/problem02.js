function fib(nums) {
  var last = nums.length - 1;
  var next = nums[last-1] + nums[last];

  if (next > 4000000) {
    return nums;
  } else {
    nums.push(next);
    return fib(nums);
  }
}

console.log(fib([1,2]).filter(x => !(x % 2)).reduce((x, y) => x + y));
