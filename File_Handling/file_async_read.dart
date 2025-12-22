import 'dart:io';
void main() async{
  File file = File('codeLog.text');

  if(await file.exists()){
    String content = await file.readAsString();
    print(content);
  } else{
    print("File not exist");
  }

}