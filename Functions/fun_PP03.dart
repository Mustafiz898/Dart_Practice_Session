void main(){
  List<int> numbers = [10, 5, 20, 3];
  int aboveThresholdCount = countAbove(numbers, 8);

  print("Numbers count above threshold: $aboveThresholdCount");
}

int countAbove(List<int> numbers, int threshold){
  var newList = numbers.where((num) => num > threshold).toList();
  return newList.length;
}