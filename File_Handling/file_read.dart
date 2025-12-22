import 'dart:io';

void main(){
  File file = File('myData.txt');

  // this is synchronous operation
  String ? data = file.readAsStringSync();

  print("File Data:");
  print(data);
}