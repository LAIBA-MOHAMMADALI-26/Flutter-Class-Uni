import 'dart:io';
void main(){
  // print('hello');
  // stdout.write('enter your name');
  // var name=stdin.readLineSync();
  // print("welcome,$name");
  // int a=99999999999999999999;
  // int a;
  // a=99;
  // BigInt b;
  //  b=BigInt.parse('9999999999999999999');
  //  stdout.write(b);
  // stdout.write(a);
  // int ?d;
  // stdout.write(d);
  // var subject;
  // subject="maths";
  // subject=9;
  //donot give error bcz not inline
  // var subject="maths";
  // gives error -- bcz inline
  // subject=9;

  // print(subject);
  stdout.write('enter your nums');
  var num1;
var n1=stdin.readLineSync();
num1=int.parse('$n1');
  var num2;
  stdout.write('enter your nums');
  var n2=stdin.readLineSync();
  num2=int.parse('$n2');
  stdout.write('1.Add');
  stdout.write('2.Subtract');
  stdout.write('3.Multiply');
  stdout.write('4.Divide');
  stdout.write('Choose a value from 1 to 4 to perform operation');
  var choice=stdin.readLineSync();



  Human();
  var object1=Myclass();
  // object1.PrintName(name);
  switch(choice){
    case '1':
      object1.add(num1,num2);
      break;
    case '2':
      object1.sub(num1,num2);
      break;

    case '3':
      object1.mult(num1,num2);
      break;

    case '4':
      object1.div(num1,num2);
      break;

    default:
      print("Incorrect !");
      break;
  }
  object1.add(num1,num2);
  object1.sub(num1,num2);object1.mult(num1,num2);
  object1.div(num1,num2);

}
class Human{

}
class Myclass{
  // void PrintName(name){
  //   print("hello,$name");
  // }
  void add(num1,num2){
    print(num1+num2);

  }
  void sub(num1,num2){
    print(num1-num2);

  }
  void mult(num1,num2){
    print(num1*num2);

  }
  void div(num1,num2){
    print(num1/num2);

  }
}