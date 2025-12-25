import 'dart:io';

void main() async {
  File myFile = File('non_existent_file.txt');

  try {
    // Try to read the file
    String content = await myFile.readAsString();
    print(content);
  } on FileSystemException catch (e) {
    // handle system error specifically
    print("File not found!");
    print("System Error: ${e.message}");
  } catch (e) {
    // other general error
    print("General Error: $e");
  } finally {
    print("Program End");
  }
}