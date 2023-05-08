void main(){
  // string exeercises

  String name = 'ali';
  print(personalGreeting(name));

  print(formalName('Michael', 'Aiwekhoe'));

  print(gradeTest(5));

  print(nameToNumber("sam"));

  List<List<String>> foodClass = [
    ['🍚', '🍥'],
    ['🦈', '🥩']
  ];

  print(foodClass[1][0]);

  Map<String, String> foodClasses = {
    'rice': 'cabohydrates',
    'fish' : 'protein',
    'legumes' : 'fat and oil',
    'sodium chloride' : 'mineral salt'
  };
  
  print(foodClasses['rice']);

  foodClasses['water'] = 'water'; // add
  foodClasses.remove('water'); // remove
  print(foodClasses);


  for(String k in foodClasses.keys){
    print(k);
  }


  List <String> names = ['paul', 'cunk', 'nostradamus']; 
  names.remove(names[0]);
  for(int i = 0; i < names.length; i++){
    if(i % 2 == 0){
      names.remove(names[i]);
    }
  }

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
  return count;
}
