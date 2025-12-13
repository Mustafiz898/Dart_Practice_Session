void main(){
  bringFuchka(bringSoap); // passing bringSoap() function as argument, and it is a callback action
}

void bringFuchka(Function callback){
  print("Fuchka Enechi!");
  callback();
}

void bringSoap(){
  print("Soap anechi");
}