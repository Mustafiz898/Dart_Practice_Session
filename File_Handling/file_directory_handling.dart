import 'dart:io';

void main() async{
  var path = r'C:\Users\Mustafizur Rahman\Desktop\DART_Prac';
  var fileDirectory = Directory(path);

  // THIS IS THE SHORTCUT METHOD , ALTERNATIVE
  if(await fileDirectory.exists()){
    List<FileSystemEntity> entities = await fileDirectory.list(recursive: true).toList();
    print("total files: ${entities.length}");

    for(var entity in entities){
      // get file only and if folder is empty get as unknown
      var fileName = entity.uri.pathSegments.lastWhere(
          (file) => file.isNotEmpty,
          orElse: () => "Unknown"
      );

      // if it's file or directory
      var prefix = entity is Directory ? "📂 [DIR] " : "📄 [FILE]";

      print("$prefix $fileName");
    }

  } else{
    print("File directory not exists");
  }


}