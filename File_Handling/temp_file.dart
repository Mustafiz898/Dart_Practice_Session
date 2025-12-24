import 'dart:io';

void main()async{
  
  File newFile = File('temp.txt');
  // if file not exists, create the file 
  if(!await newFile.exists()){
    await newFile.create();
    print("'temp.txt' file is created");
  }
  
  // Writing in the file
  await newFile.writeAsString('There is nothing much left to write. Just writing anything');
  
  // reading the content 
  String ? content = await newFile.readAsString();
  print("Reading Content: $content");
  
  // Renaming the file
  File renamedFile = await newFile.rename('backup.txt');
  print("File is renamed as 'backup.txt'");
  // Delay 5 sec 
  await Future.delayed(Duration(seconds: 5));

  // delete the file
  try{
    await renamedFile.delete();
    print("'backup.txt' file is deleted");
  } catch(e){
    print("File not deleted! Error: $e");
  }

}