void main(){

  // Creating a random list of location
  var location = ['Singair', 'Joymontop', 'Hemayetpur', 'Savar', 'Dhaka'];

  // various List properties
  var result = location.length;
  print(result);

  var item = location.first;
  print(item);

  item = location.last;
  print(item);

  // var singleItem = location.single;
  // print(item);

  var revList = location.reversed;
  print(revList);

  // use of isEmpty and isNotEmpty

  var emptyness = location.isEmpty;
  print(emptyness);

  emptyness = location.isNotEmpty;
  print(emptyness);

}