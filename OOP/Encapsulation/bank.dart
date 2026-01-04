import 'constructor _encapsulation.dart';

void main(){
  bank account1 = bank("Mustafizur",  100.5);

  print(account1.name);
  print(account1.balance);

  account1.balance = 50;
  print(account1.balance);
  print(account1.id);

}