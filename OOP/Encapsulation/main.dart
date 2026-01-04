import 'get_set.dart';

void main(){
  profile p1 = profile();
  p1.isMarrid = "yes";


  // set the values
  p1.name = "Mustafiz";
  p1.age = 25;

  // get the values
  print("Name: ${p1.name}");
  print("Age: ${p1.age}");
  print("Is he married? ${p1.isMarrid}");
}