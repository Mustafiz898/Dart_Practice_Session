import 'getter_setter.dart';

void main(){
  profile p1 = profile();

  p1.setName("shuvo");
  p1.setAge(25);
  print("Name: ${p1.getName()}");
  print("Age: ${p1.getAge()}");
}