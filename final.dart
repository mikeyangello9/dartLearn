import 'dart:ffi';

import 'package:test/expect.dart';

void main(){
  print(test('micheal'));
  String name = 'michael';
  String formattedInput = greetUser(name, getUser);
  print(formattedInput);

  int number = 3;
  // String format = singAsong(number, sing);

  print(sing(3));
  // print(format);

  for(int i = 0; i < number; i++){
    print("name");
  }

  print(num('1234567'));

  String upNumber = "up2132797@myport.ac.uk";

  print(isValidUpEmail(upNumber, initial, num, format));

List<String> list = upNumber.split("");
print(list.sublist(0,2));
print(list.sublist(2,9));
String domain = list.sublist(9,22).join('').toString();
print(domain);


print(format(domain));

}



// arrow func

String test (String name) => 'hello $name';


// higher order function



String greetUser(String name, String Function(String) format) => 
'hello ${format(name)}';


String getUser(String name) => name;


// 

String bondGreeting(String firstName, String lastName){
  String greeting = 'My name is $lastName $firstName';
  return greeting;
}


String sing(int dumbTimes) => 'dum ' * dumbTimes;



// String singAsong(int lineNumber, int nTimes, String Function(int) format){
//   for(int i= 0; i < lineNumber; i++){
//     const 
//   }
//   return format(nTimes);
// }


bool initial(String value) => value.startsWith('up');


bool num(String value) => value.startsWith(RegExp(r'^\d{7}$'));


bool format(String value) => value.startsWith('@myport.ac.uk');

bool isValidUpEmail(String upNumber, bool Function(String) up, bool Function(String) numbers, bool Function(String) domain){
  List<String> list = upNumber.split("");
  
  return up(list.sublist(0, 2).join("")) &&  numbers(list.sublist(2, 9).join("")) && domain(list.sublist(9, 22).join(""));
}
