void main() {
  Set<String> names = {'Musta', 'Shuvo', 'Jasmin', 'Joy'};

  List<String> combinedName = [];
  names.forEach((name) =>
      combinedName.add(name
          .split('')
          .first));
  print(combinedName);
  print(combinedName.join());

  // using fold method the above operation can be done easily
  // Task: combining first letter of strings of a set
  String foldCombine = names.fold('', (prev, current) => prev + current[0]);
  print(foldCombine);

  Set<int> numbers = {10, 20 , 30, 40};
  int num = numbers.fold(0, (prev, current) => prev + current);
  print("Total sum of all elements in the set: $num");

}