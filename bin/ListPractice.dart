void main() {
  //List creating methods

  //fixed length list
  List? name = List.filled(5, null, growable: false);
  print(name);
  //growable length list
  List<int> num = [10, 20, 30];
  print(num);
  num.add(40); // adding a value at the end of the list
  print(num);

  // Using List.generate()
  var squares = List.generate(10, (i) => i * i);
  print(squares);
  // use of spread operator (...) to merge list
  var newList =[...squares, 100, 121];
  print(newList);
  //concatenating two list using spread operator
  var updatedList = [...num, ...newList];
  print(updatedList);


}