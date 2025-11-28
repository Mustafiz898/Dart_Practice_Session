
const date = '27-11-2025';
void main(){

  // Explicit declaration and initialization
  int studentId = 1001;
  String courseName = 'Dart Basics';

  // Implicit initialization
  var totalScore = 95;
  var isPassing = true;
  final examDate = date;
  const passingGrade = 70;

  print("Hashcode of Student ID: ${studentId.hashCode}");
  print("Student ID: $studentId");
  print("Course Name: $courseName");
  print("Total Score: $totalScore");
  print("Is Passed: $isPassing");
  print("Exam Date: $examDate");
  print("passing Grade: $passingGrade");

}