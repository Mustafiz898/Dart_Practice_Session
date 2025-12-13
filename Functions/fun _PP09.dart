void main(){
  int fact = calc(2, 3, factorial);
  print("The Factorial = $fact");
}

int calc(int a, int b, Function(int) callbackFun){
  int sum = a + b;
  int fact = callbackFun(sum);
  return fact;
}

// Callback function
int factorial(int a){
  if(a == 1) return a;
  return a * factorial(a-1);
}

