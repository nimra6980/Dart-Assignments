//Q1
//Length and breadth of a rectangle are 5 and 7 respectively. Write a program to calculate the area of the rectangle.
//Formula (area = length * breadth)

void area(int length, int breadth) {
  int total = length * breadth;
  print('Total area :$total');
}

void main() {
  //Q1
  area(5, 7);

  //Q2
  //Create a integer variable num = 7, Add 8 to the number and then divide it by 3.
  // Now, the modulus of that number is taken with 5 and then multiply the resultant value by 5,
  // store result in variable i. Display the final result.
  int num = 7;
  double result = (((num + 8) / 3) % 5) * 5;

  print('Final result: $result');

  //Q3
  //Write a program create two integer variables 'a' and 'b' and assign them any number and then check if both the conditions 'a < 50' and 'a < b' are true.
  //Display the result, now check if at-least one of the conditions 'a < 50' and 'a < b' is true.
  int a = 2;
  int b = 3;
  if (a < 50 && a < b) {
    print('The first Condition is TRUE');
  } else if (a < 50) {
    print('a is less then 50');
  } else if (a < b) {
    print('a is greater then b');
  } else {
    print('sorry no condition are True');
  }

  //Q4
  //If the marks of Robert in three subjects are 78,45 and 62 respectively (each out of 100 ),
  // write a program to calculate his total marks and percentage marks.
  //Print his name, marks of all three subjects, total marks and percentage.

  String name = "Robert";
  int sub1 = 78;
  int sub2 = 45;
  int sub3 = 62;

  int total = sub1 + sub2 + sub3;
  double percent = (total / 300) * 100;

  print("Name: $name");
  print("Marks in Subject 1: $sub1");
  print("Marks in Subject 2: $sub2");
  print("Marks in Subject 3: $sub3");
  print("Total Marks: $total");
  print("Percentage: ${percent}%");
}
