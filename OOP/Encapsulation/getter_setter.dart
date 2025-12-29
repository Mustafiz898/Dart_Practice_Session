//THIS IS METHOD STYLE GETTER AND SETTER LIKE C++ AND JAVA

class profile{
  // Privet Properties
  String ? _name;
  int ? _age;

  // getter to get name
  String getName(){
    return this._name!;
  }

  // Alternative approach----> using 'get' keyword and lambda function
  // String get getName => _name!;

  // getter to get age
  int getAge(){
    return this._age!;
  }

  // Setter to set name
  void setName(String name){
    this._name = name;
  }
  // Setter to set age
  void setAge(int age){
    this._age = age;
  }

}

