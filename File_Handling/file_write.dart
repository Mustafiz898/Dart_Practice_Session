import 'dart:io';

void main(){
  File newFile = File('myData.txt');

  newFile.writeAsString("Hello! I'm Mustafiz. I'm learning file handling operation in Dart");

  print("File created and written successfully");
}