

import 'dart:io';

class Calculator {
  static String operation;
  static String firstnum;
  static String secondnum;

  static void main() {
    while (true) {
      print('Enter the operation (+, -, *, /, q): ');
      operation = stdin.readLineSync();

      if (operation == 'q') {
        break;
      }

      print('Enter the first num: ');
      firstnum = stdin.readLineSync();

      print('Enter the second num: ');
      secondnum = stdin.readLineSync();

      int result = 0;

      try {
        switch (operation) {
          case '+':
            result = int.parse(firstnum) + int.parse(secondnum);
            break;
          case '-':
            result = int.parse(firstnum) - int.parse(secondnum);
            break;
          case '*':
            result = int.parse(firstnum) * int.parse(secondnum);
            break;
          case '/':
            result = int.parse(firstnum) / int.parse(secondnum);
            break;
          default:
            print('Invalid operation!');
            break;
        }
      } on FormatException {
        print('Invalid input!');
      }

      print('The result is: $result');
    }
  }
}
