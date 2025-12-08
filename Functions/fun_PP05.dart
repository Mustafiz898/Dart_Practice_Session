void main(){
  List cart = [
    {'name': 'Laptop', 'qty': 1},
    {'name': 'Mouse', 'qty': 2},
    {'name': 'Keyboard', 'qty': 3},
  ];

  var result = filterByQuantity(cart, 2);
  print(result);

}

List<dynamic> filterByQuantity(List cart , int threshold) => cart.where((item) => item['qty'] >= threshold).toList();
  