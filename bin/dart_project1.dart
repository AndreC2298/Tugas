import 'package:dart_project1/dart_project1.dart' as dart_project1;
import 'dart:io';

void main(List<String> arguments) {
  // DEMO : INPUT OUPUT;
  stdout.write("Masukkan kata: ");
  String? dtInput = stdin.readLineSync();
  int angka = int.parse(dtInput!);

  stdout.write(dtInput);

  // DEMO : IF ELSE;
  if (angka % 2 ==1) {
    print("Ganjil -- IF");
  } else{
    print("Genap -- IF)");
  }

  // DEMO : SWITCH CASE
  switch(angka%2){
    case 1:
    print("Ganjil -- SWITCH");
    break;
    case 0:
    print("Genap -- SWITCH");
    break;
  }

  //DEMO : FOR
  for (int i=0;  i<angka; i++) {
    print ("angka $i"); 
  }

  //DEMO : Do WHile
  while(angka>0) {
    print(angka);
    angka--;
  }
}
