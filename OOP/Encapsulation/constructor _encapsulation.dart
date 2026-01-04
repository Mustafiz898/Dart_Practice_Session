class bank{
  String ? _name;
  double _balance;
  String id;

  bank(this._name, this._balance) : id = "1804042";
  String get name => _name!;
  double get balance => _balance!;

  set name(String value){
    _name = value;
  }
  set balance(double value){
    if(value > 0) _balance += value;
  }
}