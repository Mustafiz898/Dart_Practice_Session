void main(){
  print("Future Started");
  fetchData().then((item){
    print("Moving ahead");
  });
  print("Future ended");

}

Future fetchData() async {
  return Future.delayed(Duration(seconds: 2));
}