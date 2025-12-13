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

// THis is a callback function practice without parameter and no return