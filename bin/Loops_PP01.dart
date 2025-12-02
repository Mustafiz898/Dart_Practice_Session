void main(){
  List<int> numbers = [12, 5, 8, 20, 1, 9, 4];

  int sum = 0;
  for(int num in numbers){
    if(num % 2 == 0){
      print("Even Number Found: $num");
    }
    sum += num;
  }

  print("Total sum of all numbers: $sum");


}