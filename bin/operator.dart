void main(){
  // floor division
  var x = 10;
  var result = x/3; // dart keeps decimal value unlike C programming
  var result1 = x~/3; // to get rid of decimal value, this is the floor division

  print(result);
  print(result1);

  // is operator checks type of variable at runtime
  print(x is int);
  print(x is double);

  // is not operator (is!)
  print(x is! String);


}