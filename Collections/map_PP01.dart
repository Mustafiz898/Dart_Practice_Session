void main(){
  Map<String, int> grades = {
    "Alice": 85,
    "Bob": 72,
    "Charlie": 90,
    "Diana": 66
  };

  /*Tasks:
Add a new student "Eric" with grade 78.
Update "Diana"’s grade to 75.
Remove "Bob".
Print all students and grades.
Find the student with the highest grade.
Calculate the average grade.
 */

  grades['Eric'] = 78;
  print(grades);
  grades['Diana'] = 75;
  grades.remove('Bob');
  print(grades);

  // finding the student with the highest grade
  String ? highestKey;
  int highestValue = -1;
  grades.forEach((key, value){
    if(value > highestValue){
      highestValue = value;
      highestKey = key;
      }
    }
  );
  print("The student with the highest value: $highestKey : $highestValue");

  // Calculation for the average grade
  double sum = grades.values.fold(0, (prev, current) => prev + current).toDouble();
  double avg = sum / grades.length;

  print("The average grade is: $avg");
}