void main() async{
  print("Future Started");
  String name = await fetchData();
  print(name);
  print("Future ended");

}

Future<String> fetchData() async{
  await Future.delayed(Duration(seconds: 5));
  return "Mustfiz";
}