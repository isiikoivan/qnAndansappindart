import 'dart:io';
import 'marking.dart';

//question classes
var catergoryA="Class A questions";
var catergoryB="Class B questions";
var catergoryC="Class C questions";

//class A questions
String catA1="Who is the President of Uganda ?";
String catA2="Which is the most popular virus in Uganda ?";
String catA3="What state is out country in right now";

String ?answA1;
String ?answA2;
String ?answA3;

//class B questions
String catB1="1+1-1+0 = ";
String catB2="6*8-1 = ";
String catB3="12/(6/3) = ";

String ?answB1;
String ?answB2;
String ?answB3;

//class C questions
String catC1="1 of 2 *(2*6)/3 = ";
String catC2="(2(3*6)+10-22/11) = ";
String catC3="(2(3+(6*10)*(4/2) of 1)) = ";

String ?answC1;
String ?answC2;
String ?answC3;

//catergory selection
 void  questionCat(catergoryA,catergoryB,catergoryC){
   var m;
   print('Choose Question Category to answer(use 1/2/3)');
print('1.${catergoryA}');
print('2.${catergoryB}');
print('3.${catergoryC}');
print('Enter your optional :');
m=stdin.readLineSync();
switch(m){
  
  case '1':
      queA(catA1, catA2, catA3);
  break;

  case '2':
      queB(catB1,catB2,catB3);
      verifyingclassBqn();
  break;

  case '3':
      queC(catA1,catA2,catA3);
  break;

  default:
  print("Invalid option");
  print("\n");
  questionCat(catergoryA,catergoryB,catergoryC);
}
 }
//dealing with qn catergory A
 void queA(catA1,catA2,catA3){
print(catA1);
answA1=stdin.readLineSync().toString().toUpperCase();
print(catA2);
answA2=stdin.readLineSync().toString().toUpperCase();
print(catA3);
answA3=stdin.readLineSync().toString().toUpperCase();

// marking
// verifyingclassAqn(answA1,answA2,answA3);
// grading

}


 void queB(catB1,catB2,catB3){
print(catB1);
answB1=stdin.readLineSync();
print(catB2);
answB2=stdin.readLineSync();
print(catB3);
answB3=stdin.readLineSync();

}

 void queC(catC1,catC2,catC3){
print(catC1);
answC1=stdin.readLineSync().toString().toUpperCase();
print(catC2);
answC2=stdin.readLineSync().toString().toUpperCase();
print(catC3);
answC3=stdin.readLineSync().toString().toUpperCase();

}