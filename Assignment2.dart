import 'dart:io';

void Age() {
  print('Enter the First Person age');
  int firstPerson = int.parse(stdin.readLineSync()!);
  print('Enter the Second Person age');
  int secondPerson = int.parse(stdin.readLineSync()!);
  if (firstPerson < secondPerson) {
    print("Second is the oldest");
  } else {
    print("First is the oldest");
  }
}

void attendence() {
  const noOfClasses = 16;
  print('Enter the Classes You Attended');
  int noOfClassesAttended = int.parse(stdin.readLineSync()!);
  int attended = noOfClassesAttended * 100;
  double percentage = attended / noOfClasses;
  if (percentage >= 75) {
    print('You are Allowed');
  } else {
    print('Sorry You are not Allowed To Take Exam');
  }
}

void main() {
  //Q1
  //Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
//ie: if both values are equal then it's square otherwise rectangle.
  // int length = 4;
  // int breadth = 4;

  // if (length == breadth) {
  //   print("Both are Square values");
  // } else if (length != breadth) {
  //   print("Both are Rectangle values");
  // }

  // Take input for length and breadth
  print("Enter the length: ");
  int length = int.parse(stdin.readLineSync()!);

  print("Enter the breadth: ");
  int breadth = int.parse(stdin.readLineSync()!);

  // Check if they are square or rectangle
  if (length == breadth) {
    print("It's a square.");
  } else {
    print("It's a rectangle.");
  }

  //Q2
  // Take two variables and
  //store age then using if/else condition determine oldest and youngest among them.
  Age();

  //Q3
  //A student will not be allowed to sit in exam if his/her attendence is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?
  attendence();

  //Q4
//  Create integer variable assign any year to it and check if a year is leap year or not.
// If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
// i.e: Use % ( modulus ) operator.
  print('Enter any year');
  int year = int.parse(stdin.readLineSync()!);

  if (year % 4 == 0 && year % 100 == 0 || (year % 400 == 0)) {
    print('Its  a lEAP YEAR');
  } else {
    print('Not a LEAP YEAR');
  }
  //Q5
  //Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot
  print('Enter Temperature in Centigrade');
  int temp = int.parse(stdin.readLineSync()!);

  if (temp < 0) {
    print('Freezing weather');
  } else if (temp < 10) {
    print('Very Cold weather');
  } else if (temp < 20) {
    print('Cold weather');
  } else if (temp < 30) {
    print('Normal weather');
  } else if (temp < 40) {
    print('Hot weather');
  } else if (temp >= 40) {
    print('Very Hot weather');
  }

  //Q6
  //Write a program to check whether an alphabet is a vowel or consonant.
  print('Enter any Alphabet');
  var alphabet = stdin.readLineSync();
  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print('The Alphabet is a vowel ');
  } else {
    print('The Alphabet is  a consonant');
  }

  int customerId = 1001;
  String customerName = "James";
  int unitsConsumed = 800;
  double chargePerUnit;

  if (unitsConsumed <= 199) {
    chargePerUnit = 1.20;
  } else if (unitsConsumed >= 200 && unitsConsumed < 400) {
    chargePerUnit = 1.50;
  } else if (unitsConsumed >= 400 && unitsConsumed < 600) {
    chargePerUnit = 1.80;
  } else {
    chargePerUnit = 2.00;
  }

  //Q7
  // Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :
// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

  double totalAmount = unitsConsumed * chargePerUnit;

  print("Customer IDNO :$customerId");
  print("Customer Name :$customerName");
  print("Unit Consumed :$unitsConsumed");
  print(
      "Amount Charges \@Rs. $chargePerUnit per unit : ${totalAmount.toStringAsFixed(2)}");
  print("Net Bill Amount : ${totalAmount.toStringAsFixed(2)}");
}
