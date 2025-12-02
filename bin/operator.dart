void main(){
  // floor division
  var x = 10;
  var result = x/3; // dart keeps decimal value unlike C programming
  var result1 = x~/3; // to get rid of decimal value, this is the floor division

  print(result);
  print(result1);

  // is operator checks type of variable at runtime (also called type test operator)
  print(x is int);
  print(x is double);

  // is not operator (is!)
  print(x is! String);
//--------------------------------------------------------------
  // ?? null coalescing operator
  String ? name;
  print(name);
  name = "SHUVO";
  print(name);  // NULL Coalescing operator prints left side if the value is not null
                              // Otherwise it prints right side value in this case Mustafiz
//-----------------------------------------------------------------

  // ??= null aware assignment
  String ? location;
  print(location ?? "Rajshahi");       // if the location is null prints Rajshahi
  location ??= "Manikganj";            // if the location is null, then assign value Manikganj
  print(location ?? "Dhaka");          // if the location is not null it prints location, otherwise prints Dhaka


}