import 'dart:io';
void main() async{
  stdout.write("Enter the file name: ");
  String ? fileName = stdin.readLineSync();

  File file = File('$fileName');

  // Check if the file exists
  if(!await file.exists()){
    print("There is no file in this name!");

    await file.create();
    print("So file is created");
  }
  
  // take user input data 
  stdout.write("Enter the data that want to write: ");
  String ? input = stdin.readLineSync();
  
  // Write data in the file
  await file.writeAsString('\n$input', mode: FileMode.append);
  print("Data is written now");

  // Read the data now
  String data = await file.readAsString();

  print("The read data: $data");


}