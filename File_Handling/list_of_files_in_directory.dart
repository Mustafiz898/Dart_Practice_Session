import 'dart:io';

void main() async{

  var path = r'C:\Users\Mustafizur Rahman\Desktop\DART_Prac';
  var fileDirectory = Directory(path);

  if(await fileDirectory.exists()){
    final stream = fileDirectory.list(recursive: true);  // recursive: true, means also find files in subdirectories

    // try to print files in the directory and subdirectory
    try{
      await for(FileSystemEntity entity in stream){
        if(entity is File) print("FILE: ${entity.path}");
        else if(entity is Directory) print("DIRECTORY: ${entity.path}");
        else print("Other FILE: ${entity.path}");
      }
    }
    catch(e){
      print("Error: $e"); // if found any error while printing file directories
    }


  } else{
    print("Directory doesn't exists!");
  }

  // THIS IS THE SHORTCUT METHOD , ALTERNATIVE
  List<FileSystemEntity> entities =await fileDirectory.list(recursive: true).toList();
  print("total files: ${entities.length}");

  entities.forEach((file) => print(file.path));
}