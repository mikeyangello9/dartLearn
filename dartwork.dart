void main(){
  // string exeercises

  String name = 'ali';
  print(personalGreeting(name));

  print(formalName('Michael', 'Aiwekhoe'));

  String alphabets = "a b c d e f g h i j k l m n o p q r s t u v w x y z";
  List<String> splitted = alphabets.split(' ');
  print(splitted.length);
  print("mark");
  int count = 0;
  for(int i = 0; i < splitted.length; i++){
    count += alphabets.indexOf(splitted[i]);
   

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