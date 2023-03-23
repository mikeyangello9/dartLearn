void main(){
  // string exeercises

  String name = 'ali';
  print(personalGreeting(name));

  print(formalName('Michael', 'Aiwekhoe'));

  String alphabets = "a b c d"; // string list
  List<String> splitted = alphabets.split(' '); // split into an array
  print(splitted.indexOf("d"));
  print(splitted.length);
  print("mark");
  int count = 0;
  for(int i = 0; i < splitted.length; i++){  // iterate through the newly created programing language
    count += alphabets.indexOf(splitted[i]); // get the index of each item on the array and increment it by count int variable
    print(splitted[1]);

  } 
  print(count);
  

  // String alphabets = "abcdefghijklmnopqrstuvwxyz";
 
  // print(alphabets.indexOf("c"));
  print(alphabets.indexOf("a"));
  print(nameToNumber("tim"));
  print("mark 2");

} 

String personalGreeting(String name){
  return 'Hey ${'$name!👋'} ';
}

String formalName(String firstName, String lastName){
  return "${firstName[0]}.$lastName";
}

// String gradeTest(int mark){
//   String gradeLetter = "ABCF";
//   for(int i = 0; i < gradeLetter.length; i++){
//     print(gradeLetter[mark]);
//   }
//   return mark = 
// }

int nameToNumber(String name){
  String alphabets = "a b c d e f g h i j k l m n o p q r s t u v w x y z";
  List<String> splitted = name.split(' ');
  int count = 0;
  for(int i = 0; i < splitted.length; i++){
    count += alphabets.indexOf(splitted[i]) + 1;
  }


  return count; // so indexing from zero is overwritten
}