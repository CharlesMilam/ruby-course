function binaryToDecimal (n) {
  // Write your code here, and
  // return your final answer.

  n = n.split("").reverse()
  result = 0

  for (var i = 0; i < n.length; i++) {
    if (n[i] == 1) {
      result += Math.pow(2, i)
    }
  };
  return result;
}

console.log(binaryToDecimal("111"))