void main(){
  List<double> originalPrices = [49.99, 9.99, 120.50, 75.00];
  const double discount = 0.15;

  List<double> discountPrices = originalPrices.map((price) => price - price * discount).toList();
  print("Discount Prices: $discountPrices");

}