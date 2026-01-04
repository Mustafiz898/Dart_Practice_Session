import 'dart:io';
import 'dart:convert';

class Car{
  String brand;
  String model;
  int year;
  int ? batteryCapacity;
  int ? mileage;

  //General constructor
  Car(this.brand, this.model, this.year,
  {this.batteryCapacity, this.mileage}
      );

  //Named constructor
  Car.electric(String brand, String model, int batteryCapacity )
    : this(
    brand,
    model,
    2024,
    batteryCapacity: batteryCapacity
  );

  //Another named constructor
  Car.used(String brand, String model, int year, int mileage)
    : this(
    brand,
    model,
    year,
    mileage: mileage
  );

  //Factory constructor
  factory Car.fromJson(Map<String, dynamic> data){
    return Car(
      data["brand"],
      data["model"],
      data["year"],
      batteryCapacity: data["batteryCapacity"],
      mileage: data["mileage"],
    );
  }

}

//----------------------------------------------------
void main() async{
  // Create object using general constructor
  Car car1 = Car('Toyota', 'Corolla', 2020);
  print(car1.model);
  
  // Create object using named constructor 
  Car tesla = Car.electric("Tesla", "Model 3", 50); // year 2024 default
  print(tesla.brand);
  print(tesla.model);
  print(tesla.batteryCapacity);
  print(tesla.year);

  // Create object using named constructor 
  Car usedCar = Car.used("Honda", "Civic", 2015, 20000);

  // Create object from JSON
  String json = await File('car.json').readAsString();
  // print(json);
  Map<String, dynamic> map = jsonDecode(json);
  Car my_car = Car.fromJson(map);

  print(my_car.brand);
  print(my_car.model);
  print(my_car.year);
  print(my_car.batteryCapacity);
  print(my_car.mileage);
}