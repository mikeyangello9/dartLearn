import 'dart:math';



void main (){
  double cir = circumferenceOfCircle(16.0);
  double area = areaOfCircle(3);
  double grad = gradient(1, 4, 6, 8);
  int quantity = 6;
  double price = 7.45;
  print(cir);
  print(area);
  print(grad);

  // print('gradient:${'2️⃣' * grad"} ');

  // String gradientIcon = '💹';

  print('gradient: $grad');
  print('gradient: ${'💹' * grad.toInt()}');
  print('Your order: ${'🍔' * quantity}\nTotal: £${price * quantity}');

  String email = 'up2124578@myport.ac.uk';

  for(int i = 0; i < email.length; i++){
    print('student: ${email[i]} \nStudents order: ${'🍔' * int.parse(email[6])}');

  }

  print(email.substring(2, 8));
  
}
double circumferenceOfCircle(double radius){
  return 2 * pi * radius;
}

double areaOfCircle(double radius){
  return pi * pow(radius, 2);
}


double gradient(double x1, double x2, double y1, double y2){
  return y2 - y1 / x2 - x1;
}

num square(double power, double exponent){
  return pow(power, exponent);
}

num distanceBetween(double x1, double x2, double y1, double y2){
  return sqrt(square(x2 - x1, 2) + square(y2 - y1, 2));
}


// strings



