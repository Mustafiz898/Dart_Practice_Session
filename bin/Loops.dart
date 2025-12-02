void main(){
  var prices = [15, 45, 120, 30];
  var items = ['Milk', 'Bread', 'Steaks', 'Eggs'];

  items.forEach((item) => print("Items: $item"));

  int sum = 0;
  for(int item in prices){
    sum += item;
  }
  print("The total price: $sum");
  
}