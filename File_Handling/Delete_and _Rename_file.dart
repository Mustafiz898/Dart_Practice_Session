import 'dart:io';

void main() async{
  File file = File('codeLog.text');

  if(await file.exists()){
    await file.rename('LogFile.txt');
    print("File is renamed!");
  } else{
    print("File not found!");
  }
  File fileRmv = File('myCodedata.text');

  if(await fileRmv.exists()){
    await fileRmv.delete();
    print("File is deleted!");
  } else{
    print("File not found!");
  }


}