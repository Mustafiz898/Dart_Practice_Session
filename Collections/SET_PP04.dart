void main(){

  List<int> attendance = [101, 103, 104, 101, 102, 105, 103];

  /*
Tasks:
Remove duplicates using a set.
Add a late student roll number 106.
Check if roll number 110 attended.
Remove the highest roll number from the set.
  */

  Set<int> uniqueRolls = attendance.toSet();
  print(uniqueRolls);

  // adding a late student roll number 106
  uniqueRolls.add(106);

  //checking if a roll number 110 attended
  bool isPresent = uniqueRolls.contains(110);
  print("Is the roll 110 present? $isPresent");

  // finding and removing highest roll number
  int highestRoll = uniqueRolls.reduce((a,b) => a > b? a:b);
  print("Highest roll: $highestRoll");
  uniqueRolls.remove(highestRoll);
  print(uniqueRolls);





}