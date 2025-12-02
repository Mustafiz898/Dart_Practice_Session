void main(){

  List<String> inventory = [
    'A-101-Active', // Good Stock
    'B-205-Low',    // Needs restocking
    'C-333-Active', // Good Stock
    'D-410-Low',    // Needs restocking
    'E-500-Active'  // Good stock
  ];

  // it is finding a substring within a list of strings and also keeping them in a new list
  List<String> needsRestock = inventory.where((item) => item.contains('-Low')).toList();
  print("The stocks need restocking: $needsRestock");

}