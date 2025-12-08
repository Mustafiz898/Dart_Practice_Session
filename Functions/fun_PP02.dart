void main(){
  List<String> item = ['milk', 'bread'];
  List<String> product = toUpper(item);
  print(product);

}
List<String> toUpper(List<String> items){
  return items.map((item) => item.toUpperCase()).toList();
}