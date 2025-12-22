import 'dart:io';

void main() async{
  File newFile = File('codeLog.text');
  await newFile.writeAsString("In this file, I'm testing if here code can be logged or not");
  await newFile.writeAsString("\nI'm appending a new line", mode: FileMode.append);

  print("Async writing done");

}