void main(){
  Set<int> numbers = {10, 20, 30, 40};
  Set<String> productTags = {'electronics', 'kitchen', 'outdoor', 'toys'};

  // elements can be accessed using firstWhere method
  String? specificTag;
  specificTag = productTags.firstWhere(
          (tag) => tag.contains("Outdoor"),
          orElse: () => "default"
          );
  print(specificTag);

  // adding an element to a set
  productTags.add('transport');
  print(productTags);
  // adding multiple element in a set
  productTags.addAll({'girls', 'boys', 'transport'});  // here 'transport' (duplicate value)
  print(productTags);                                  // and will not be added

  // remove element from a set
  productTags.remove('kitchen');
  print(productTags);

  // remove elements based on conditions using removeWhere()
  productTags.removeWhere((product) => product.length > 8);
  print(productTags);

  // update a value, but needs to remove first then add updated item
  String old = 'toys';
  String New = 'Weapon';

  if(productTags.contains(old)){
    productTags.remove(old);
    productTags.add(New);
  }
  print(productTags);

  // practice intersection method to find common between both sets
  Set<int> premiumUsers = {101, 105, 110, 115};
  Set<int> activeToday = {105, 110, 112, 118};

  Set<int> both = premiumUsers.intersection(activeToday);
  print(both);

}