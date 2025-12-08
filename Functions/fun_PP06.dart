void main(){
  List<Map<String, dynamic>> cart = [
    {'name': 'Laptop', 'price': 1200.0},
    {'name': 'Mouse', 'price': 25.0},
    {'name': 'Keyboard', 'price': 80.0},
  ];
  List<Map<String, dynamic>> withDiscountCart = applyDiscount(cart, 0.1);
  print(withDiscountCart);
  print(cart);
  print(mostExpensive(cart));
}
//------------------------------------------------------------------------------------------
List<Map<String, dynamic>> applyDiscount(List<Map<String, dynamic>> product, double discount){
   List<Map<String, dynamic>> newList =[];
   for(var item in product){
     newList.add(
         {'name': item['name'],
          'price': item['price'],
          'discount': item['price'] * (1-discount)
          });
   }
  return newList;
}
//-----------------------------------------------------------------------------------------
Map<String, dynamic> mostExpensive(List<Map<String, dynamic>> product){
  Map<String, dynamic> expensive = product[0];

  for(var item in product){
    if(item['price'] > expensive['price'] ) expensive = item;
  }
  return expensive;
}