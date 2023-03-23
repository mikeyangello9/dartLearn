void main(){
  // string exeercises

  String name = 'ali';
  print(personalGreeting(name));

  print(formalName('Michael', 'Aiwekhoe'));

  print(gradeTest(5));

  print(nameToNumber("sam"));

} 

String personalGreeting(String name){
  return 'Hey ${'$name!👋'} ';
}

String formalName(String firstName, String lastName){
  return "${firstName[0]}.$lastName";
}

String gradeTest(int mark){
  String gradeLetter = "FFFFCCBBAAA";
  return gradeLetter[mark];
}

int nameToNumber(String name){
  String alphabets = "abcdefghijklmnopqrstuvwxyz";
  int count = 0;
  for(int i = 0; i < name.length; i++){
    count += (1 + alphabets.indexOf(name[i]).toInt());
  }
  return count; // so indexing from zero is overwritten
}