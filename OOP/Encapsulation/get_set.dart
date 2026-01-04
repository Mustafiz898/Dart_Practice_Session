class profile{
  String ? isMarrid;

  // privet properties
  String ? _name;
  int ? _age;

  // getter method
  String get name => _name ?? "Mr. X";
  int get age => _age ?? 0;

  // setter method
  set name(String value){
    _name = value;
  }
  set age(int val){
    _age = val;
  }

}