class MyRoom{
  // Class property
  String ? Laptop;
  String ? Phone;
  String ? Wife;
  String ? wifePhone ;

  // Method
  void printAll(){
    print("My Room Obj: $Laptop , $Phone, $Wife, $wifePhone");
  }
}


void main(){
  // creating Object
  MyRoom shuvoRoom = MyRoom();

  shuvoRoom.Laptop = 'Asus';
  shuvoRoom.Phone = 'Nothing Phone';
  shuvoRoom.Wife = 'Jasmin';
  shuvoRoom.wifePhone = 'Infinix Phone';
  // Calling method
  shuvoRoom.printAll();
}