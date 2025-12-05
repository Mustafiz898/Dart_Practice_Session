void main(){
  List<String> productId = ['P100', 'A200', 'P300', 'B400'];

  /*
    Task:
    - create a new list containing only the IDs that start with the letter 'P'.
    - add a prefix to each ID, turning them into 'Product-P100' and 'Product-P300'
  */

  // where method
  List<String> newList = productId.where((Id) => Id.split('').first.contains('P')).toList();
  print(newList);
  //map method
  List<String> newMapList = productId.map((Id) => 'Product-$Id').toList();
  print(newMapList);
  // fold method
  String newName = productId.fold('', (prev, current) => prev + current[0]);
  print(newName);
  // forEach loop
  newMapList.forEach((id) => print(id));


}