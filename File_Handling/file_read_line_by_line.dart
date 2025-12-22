import 'dart:io';

void main() async{
  File file = File('codeLog.text');

  List<String> lines = await file.readAsLines();

  for (var line in lines){
    print(line);
  }

}