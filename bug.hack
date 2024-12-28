function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if the input is a large number.  This is because the recursive calls to foo will consume a significant amount of stack space. The maximum recursion depth is limited in Hack, and exceeding this limit leads to a stack overflow.