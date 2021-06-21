import 'dart:io';
import 'questions.dart';

var landmsg ="We welcome your for coming and agreeing to work with us "+
              "in the process of testing IVANS first written program"+
              "Thank you!!!\n" ;
var introduction = 'Under this test we opt to give questions under three categories that will require '
                    +' \nyour answer in supplication of a selected category and therefore you will be required\n '+
                    'And results shall be generated plus the grades\n';

//registering
String ?names;
var reg;
var dob;
String ?sex;


//Answers for cat A,B and C 

//catA Answers
String presidentname ="YOWERI KAGUTA MUSEVENI";
String virus="COVID-19";
String stateinUganda ="LOCK DOWN";

//catB Answers
String ansB1="1";
String ansB2="47";
String ansB3="6";

//catC Answers
String ansC1="2";
String ansC2="35";
String ansC3="246";

//marking and grading 
double marks = (100/3);

//right QN
int rightQn=0;
double rightQntodouble = rightQn.toDouble();
double correct_marks=rightQntodouble  * marks;

//wrong
int ?wrongQn;

//null
int ?qnStillNull;

//All user details


//resuslts
int ?sum = correct_marks.toInt();

//GRADES
var gradeA ="A";
var gradeB ="B";
var gradeC ="C";

//error messages
String nullerrormsg = "You did not answer the question ?";
String wrongAnserrormsg = "Your answer is wrong ?";

//optional message
String optionalSln = "Do you wish to redo the question or not ?";

//optional  options
String y = "Yes";
String n = "No";

//main function
void main () 
{
  initialDisplay();
  register();
  questionCat(catergoryA,catergoryB,catergoryC);
 // registrationOutput();
}

//function  dislplay first message
void initialDisplay (){
  print(landmsg);
}

String register(){
print('REGISTER WITH US FOR THE DRILL');
print('Enter Names :');
names=stdin.readLineSync();
print('Enter Reg.No :');
reg=stdin.readLineSync();
print('Enter Date Of Birth');
dob=stdin.readLineSync();
print('Enter SEX (male / female)');
sex=stdin.readLineSync();
print('Registration is Done , Thank You');
 var allregistrationDetails="${names},${reg},${dob},${sex}";
return allregistrationDetails;
}

//
void guidance()
{
  print(introduction);
}

//registration output 
void registrationOutput()
{
  print(names);
  print(reg);
  print(dob);
  print(sex);
}



//function question catergory A

