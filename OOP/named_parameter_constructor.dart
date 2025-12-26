class Car{
  String ? brand;
  int ? speed;

  //constructor
  Car({this.brand, this.speed});
  //method
  void showInfo(){
    print("Brand: $brand\nSpeed: $speed km/h");
  }
}

void main(){
  Car car1 = Car(
    brand: "Toyota",
    speed: 200
  );
  Car car2 = Car(
    brand: "Honda",
    speed: 180
  );

  car1.showInfo();
  car2.showInfo();

}