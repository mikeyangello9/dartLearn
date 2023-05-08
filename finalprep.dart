 void main() {



  List<String> fruits = ['apple', 'pineapple', 'orange', 'bananna', 'dragon fruit'];
  print(listInfo(fruits));

  List<int> myMarks = [47, 65, 34, 73, 90];

  print(capMarks(myMarks));


    Map<String, String> orders = {
    // Key (name): Value (drink)
    'Ştefan': 'Espresso Frappuccino',
    'Amy T': 'Iced Coffee',
    'Jamillah': 'Caramel Frappuccino',
    'Xiu': 'Caffè Latte',
    'Amy E': 'Caramel Frappuccino'
  };

  print(orders);

  for(var pair in orders.entries){
    var key = pair.key;
    var value = pair.value;
    print('$key has ordered: $value');
  }

  (average([47, 65, 34, 73, 0]));




  
  Map<String, int> credits = {

    'ArchNOps': 20,
    'CCCCS': 20,
    'CYFOR': 20,
    'PROG': 40,
    'SAI': 20
  };

  for(var pair in credits.entries){
    var module= pair.key;
    var credit = pair.value;

    print('$module has $credit credits');
  }

  Map<String, List<int>> moduleMarks = {
    'ArchNOps': [ 67, 61, 54, 82 ],
    'CCCCS': [ 67, 32, 54, 82 ],
    'CYFOR': [17, 11, 40, 12 ],
    'PROG': [ 67, 92, 54, 82, 34, 56, 38, 40 ],
    'SAI': [ 60, 60, 50, 80 ]
  };

   for(var pair in moduleMarks.entries){
    var module= pair.key;
    var credit = pair.value;

    print('in $module I got: $credit');
  }


  print(gradeCalculator(credits, moduleMarks));



}



String listInfo(List<String> listOfThings){
  int length = listOfThings.length;
  String first = listOfThings.first;
  String last = listOfThings.last;

  String info = '$length, $first, $last';
  return info;
}

List<int> capMarks(List<int> marks){
  for(int i = 0; i < marks.length; i++){
    if(marks[i] > 40){
      marks[i] = 40;
      
    }
    
  }

  return marks;
}


double average(List<int> numbers){
  int count = 0;
  double avg = 0.0;
  for(int i = 0; i < numbers.length; i++){
    count = numbers[i];
    avg = count / numbers.length;
  }
  return avg;
}


String gradeCalculator(Map<String, int> credits, Map<String, List<int>> marksMap){
  List<double>moduleAvg = [];
   
  String moduleAvgr = '';
  for(var pair in marksMap.entries){
    var key = pair.key;
    var value = pair.value;
    double avgAcc = 0.0;

    for(int mark in value){
      avgAcc += mark;
    }

    double moduleAverage = avgAcc / value.length;
    moduleAvg.add(moduleAverage);
    moduleAvgr += 'module: $key\n average: $value\n avg: $moduleAverage\n';

  }

  List<int>moduleWeight = [];
  for(var pair in credits.entries){
    var value = pair.value;
    moduleWeight.add(value);
  }

  double totalPercentage = 0;
  for(int i = 0; i < credits.length; i++){
    double percentage = (moduleAvg[i] / 100) * (moduleWeight[i] / 100);
    totalPercentage += percentage;
  }

  // weighting
  if(totalPercentage >= 0.7){
    return '1st, heres the average for each module $moduleAvgr';
  }
  else if(totalPercentage >= 0.6){
    return '2:1, heres the average for each module $moduleAvgr';
  }
  else if(totalPercentage >= 0.5){
    return '2:2, heres the average for each module $moduleAvgr';
  }
  else if(totalPercentage >= 0.4){
    return '3rd, heres the average for each module $moduleAvgr';
  }
  else{
    return 'fail, heres the average for each module $moduleAvgr';
  }

}

