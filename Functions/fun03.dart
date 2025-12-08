multiply(int a, int b){
  return a * b;
}

// Arrow function 
divide(int a, int b) => a/b;

void main(){

  var product = multiply(10, 20);
  print("Product: $product");

  var division = divide(500, 5);
  print("Division: $division");

}