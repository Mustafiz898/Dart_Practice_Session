// practicing function with named parameter
void main(){
  value(a: 10, b:50);
  var x = addition(a: 10, b: 20, c: 30);
  print("The result of addition: $x");

}
//-------------------------------------------------
void value({int? a, int? b, int c=5}){
  print("a = $a");
  print("b = $b");
  print("c = $c");
}
//------------------------------------------------------
int? addition({required int a, required int b, int ? c}){
  if(c != null){
    return a + b + c;
  } else{
    return a+b;
  }
}