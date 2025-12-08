
void product(List<String>  name){
  name.forEach((item) => print(item));
  name[0]= 'Eraser';
}
void main(){
  List<String>  ProductName = ['book', 'pen', 'pencil'];
  product(ProductName);
  print(ProductName);

}