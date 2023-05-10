
import 'dart:math';
void main(){
  Point p1 = Point(2, 4);
  Point p2 = Point(10, 14);

  print('the distance between point x:${p1.getX()}, y: ${p1.getY()} and point x1:${p2.getX()}, y1:${p2.getY()} is ${distanceBetween(p1, p2)}');


  String q = 'what is the capital of france';
  String a = 'Paris';

  // Question q1 = Question(q, a);
  // print(q1.guess('lorient'));
  // print(q1.guess('monaco'));
  // print(q1.guess('Paris'));


  List<Question> trivia = [
  Question('How many red squares are there on a standard checkerboard?', '32'),
  Question('What does the Slavic word "vodka" translate to?', 'Little Water'),
  Question('What was known as "Bolshaya Gora" when it was part of Russia?', 'Mount Foraker'),
  ];


  List<String> guesses = ['32', 'Little Water', 'Mount Foraker'];

  Exam e1 = Exam(0, trivia);
  print(e1.guesses(guesses));


}

class Point{
  int x = 0;
  int y = 0; 

  Point(this.x, this.y);

  // methods

  void move(int dx, int dy){
    x += dx; 
    y += dy;
  }

  int getX() => x;
  int getY() => y;

}

String greetUser(String name){
  return 'Greetings, $name';
}

num square(double power, double exponent){
  return pow(power, exponent);
}

double distanceBetween(Point p1, Point p2){
  int a = p2.getX() - p1.getX();
  int b = p2.getY() - p1.getY();

  double distance = sqrt(pow(a, 2) + pow(b, 2));
  return distance;
}



class Question{
  String query = '';
  String answer = '';

  Question(this.query, this.answer);

  bool guess(String guessWord){
    if(guessWord != answer){
      return false;
    }
    else{
      return true;
    }
  }

  String getQuery() => query;
  String  getAnswer() => answer;
}

class Exam{
   // list of the instance(qNa)
  double percentage = 0;
  List<Question>listOfQuestions = [];



  Exam(this.percentage, this.listOfQuestions);

  String guesses(List<String>guessList){
    String  verify = '';
    for(int a = 0; a < listOfQuestions.length; a++){
      if(guessList[a] == listOfQuestions[a].answer){
        verify = 'true +${percentage += 10}';
      }
      else{
        return verify = 'false ~$percentage';
      }
    }

    return verify;

  }

  //check if user has passed
   

  @override
  String toString(){
    String answer = '';
    for(int i = 0; i < listOfQuestions.length; i++){
      answer += '\n${listOfQuestions[i].getQuery()}';
    }

    return answer;
  }

}

/*


 List<String>guessList = [];
    for(int a = 0; a < listOfQuestions.length; a++){
      if(guessAnswer == listOfQuestions[a].answer){
        guessList.add
      }
    }
  }


*/