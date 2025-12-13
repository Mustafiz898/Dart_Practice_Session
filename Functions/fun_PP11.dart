import 'dart:io';

void main(){
  List<int> numbers = [1, 2, 3, 4];
  while(true){
    print("List: ${numbers.join(',')}");
    print("1. Sqauare 2. Double  3. Factorial   4. Exit");

    stdout.write("Enter Opearation you want: ");
    String ? input = stdin.readLineSync();
    int ? op = int.tryParse(input ?? '');

    switch(op){
      case 1: List<int> squares = processNumbers(numbers, square);
              print("The list of squares: ${squares.join(',')}");
              break;
      case 2: List<int> doubles = processNumbers(numbers, doubleItem);
              print("The list of doubles: ${doubles.join(',')}");
              break;

      case 3: List<int> factorials = processNumbers(numbers, factorial);
              print("The list of factorial: ${factorials.join(',')}");
              break;
      case 4: return;
      default: print("Wrong Option!"); break;

    }

  }

}
//-----------------------------------------------------------------------
List<int> processNumbers(List<int> listOfNum, int Function(int) FunctionOp){
  List<int> newList = listOfNum.map((item) => FunctionOp(item)).toList();
  return newList;
}

//--------------------
int square(int a){
  return a * a;
}
//------------------
int doubleItem(int a){
  return a * 2;
}
//--------------

int factorial(int a){
  if(a <= 1) return 1;
  return a * factorial(a-1);
}