import 'dart:io';

import 'questions.dart';
import 'answers.dart';

//marking and grading 
double marks = (100/3);

//right QN
int rightQn=0;
double rightQntodouble = rightQn.toDouble();
double correct_marks=rightQntodouble  * marks;

//wrong
int wrongQn=0;

//null
int qnStillNull=null??0;

//All user details


//resuslts
int ?sum = correct_marks.toInt();

// void verifyingclassAqn(answA1,answA2,answA3){
//   //first qn in class A
// if(answA1!=qnStillNull){
//         if(answA1==ansA1){
//         rightQn++;
//         print(rightQn);
//       }
//       else if(answA1==qnStillNull){
//         //empty or null
//         print("1.${y}");
//         print("2. ${n}");

//         //option yes or no
//         print(nullerrormsg);
//       }
//       else if(answA1!=ansA1)
//       {
//         wrongQn++;
//         print(wrongAnserrormsg);
//         //wrong
//         //option yes or no
//       }
// }

// if(answA2!=qnStillNull){
//   //second in class A
//       if(answA2==ansA2){
//         rightQn++;
//           print(rightQn);
//       }
//       else if(answA2==qnStillNull){
//         //empty
//         //option yes or no
//       }
//       else if(answA2!=ansA2)
//       {
//         wrongQn++;
//         //wrong
//         //option yes or no
//         print("1.${y}");
//         print("2. ${n}");
//       }
// }
// if (answA3!=qnStillNull){
//   //third in class A
//      if(answA3==ansA3){
//         rightQn++;
//           print(rightQn);
//       }
//       else if(answA3==qnStillNull){
//         //empty
//         //option yes or no
//       }
//       else if(answA3!=ansA3)
//       {
//         wrongQn++;
//         //wrong
//         //option yes or no
//       }
// }

// }
  //List<dynamic>  catergoryBanswers = List.empty(growable: true);
  List catergoryBanswers = [ansB1,ansB2,ansB3];
  
  int i=1,J=1,k=0,t=0;
  //mapping qns to ans
  List qns=[catB1,catB2,catB3];
  List ans=[answB1,answB2,answB3];
   List val=List.empty(growable:true);
  var  qnsAndans=Map<String,String>();


void verifyingclassBqn(){


  for(int qa=0;qa<=2;qa++){
      qnsAndans['${qns[qa]}']= '${ans[qa]}';
  }
print(qnsAndans.keys);
print(qnsAndans.values);
print(qnsAndans);

//print(qnsAndans[trial.toString()]);
//print(qnsAndans['catB${i}']);

    for(String value in qnsAndans.values)
    {
       val.add(value);
    }

  do{

    // // print(val);
    //   print("trouble");
    //   print(val[k]);
    //   print("trouble");
    //   print("-----------");
        //first qn in class A
if(ans[k].isNotEmpty ){
      if(val[k]==catergoryBanswers[t]){
        rightQn++;
        print("correct");
        //if right is == 3 then
        k++;
        t++;
      }
      else if(val[k]!=catergoryBanswers[t])
      {
        wrongQn++;
        print("${wrongAnserrormsg}");
        //wrong
        //option yes or no
        print("1.${y}");
        print("2. ${n}");
        print('Enter option again :');
        var w=stdin.readLineSync();
        if(w=="1"){
          
             redowrongQn();
        }
        else if(w=="2"){
              ans[k]= catergoryBanswers[t];
              k++;
              t++;
            //  continue:nextQns; grading//compiling marks
        }
        else
        {
          print('invalid option');
        }

      }
}
else if(ans[k].isEmpty){
  //empty
        
        print(nullerrormsg);
        //option yes or no
        print("1.${y}");
        print("2. ${n}");
        
        qnStillNull;
        print(wrongAnserrormsg);
        //wrong
        //option yes or no
        print("1.${y}");
        print("2. ${n}");
        print('Enter option again :');
        var w=stdin.readLineSync();
        if(w==1){
             ansNullQn();
        }
        else if(w==2){
              ans[k]= catergoryBanswers[t];
              k++;
              t++;
            //  continue:nextQns; grading//compiling marks
        }
        else
        {
          print('invalid option');
        }

      

 }
 i++;
J++;
  } while (i<3);


}
        
             void redowrongQn(){
           //   print(qns[k]);
              print('your new  answer pliz :');
              var newans = stdin.readLineSync();
             ans[k]= newans;
             k++;
             }
                          void ansNullQn(){
              //print(qns[k]);
              print('your new  answer pliz :');
              var nwansw = stdin.readLineSync();
             ans[k]= nwansw;
             k++;
             }