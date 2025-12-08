void main(){
  List<Map<String, dynamic>> cart = [
    {'name': 'Laptop', 'price': 1200.0, 'qty': 1},
    {'name': 'Mouse', 'price': 25.0, 'qty': 2},
    {'name': 'Keyboard', 'price': 80.0, 'qty': 1},
  ];

  double totalCart = getCartTotal(cart);
  print("Total price = $totalCart");
}

double getCartTotal(List<Map<String, dynamic>> itemCart){
  double total = 0;
  itemCart.forEach((item){
    total += item['price'] * item['qty'];
  });
  return total;
}