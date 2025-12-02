void main(){

  var temp = [10, 20, 30, 40];
  print(temp);
/*
  //List add methods----> add, addAll
  temp.add(50);
  print(temp);
  temp.addAll([60, 70, 80]);  // adds items at the end of the list
  print(temp);
*/

  // List insert methods------> insert, insertAll
  temp.insert(1, 15);
  print(temp);
  temp.insertAll(3, [21, 22, 23, 24, 25]);
  print(temp);

  // Update list item
  temp[0] = 5;
  print(temp);

  // Remove item methods------> remove(), removeAt(), removeLast(), removeRange()
  temp.remove(25);  // remove item directly
  print(temp);
  temp.removeLast();  // remove last item
  print(temp);
  temp.removeAt(0); // remove item at the specific index
  print(temp);
  temp.removeRange(1, 3); // remove item from a specific range to specific range, exclude last item within range
  print(temp);
  temp.clear(); // clear all the items of the list
  print(temp);

  var newList = [1, 2, 3, 4];

  newList.forEach((item) => print(item));
}