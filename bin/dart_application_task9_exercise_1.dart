//*****************Exercise 1*********************************** */
//Write a program that calculates perimeter and area of (rectangle,
//triangle, square and circle).You have to use
//(abstraction or interface) and overriding.
// ignore_for_file: body_might_complete_normally_nullable, unused_import

import 'dart:io';
import 'dart:math';

abstract class Dimensions {
  double? width;
  double? length;
  double? base;
  double? height;
  double? radius;
  dynamic length1;
  double? length2;
  double? length3;
  dynamic calculateArea();
  dynamic calculatePerimeter();
}

class Calculation extends Dimensions {
  String? choice;
  String? choice2;
  @override
  double? calculateArea() {
    if (choice == "rectangular") {
      stdout.write("Enter the Width of the rectangular:   ");
      width = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the Length of the rectangular:   ");
      length = double.parse(stdin.readLineSync()!);
      if (width != null && length != null) {
        double area = width! * length!;
        return (area);
      } else {
        print("invalid Data 1");
      }
    } else if (choice == "square") {
      stdout.write("Enter the Length of the Square:   ");
      length = double.parse(stdin.readLineSync()!);
      if (length != null) {
        double area = length! * length!;
        return (area);
      } else {
        print("invalid Data 2");
      }
    } else if (choice == "triangle") {
      stdout.write("Enter the base Length of the Triangle:   ");
      base = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the Hight of the Triangle:   ");
      height = double.parse(stdin.readLineSync()!);
      if (height != null && base != null) {
        double area = (height! * base!) / 2;
        return (area);
      } else {
        print("invalid Data 3");
      }
    } else if (choice == "circle") {
      stdout.write("Enter the radius of the Circle:   ");
      radius = double.parse(stdin.readLineSync()!);
      if (radius != null && radius! > 0) {
        double area = 3.1416 * radius! * radius!;
        return (area);
      } else {
        print("invalid Data 4");
      }
    } else {
      print("invalid Data 5");
    }
  }

  @override
  double? calculatePerimeter() {
    if (choice2 == "rectangular") {
      stdout.write("Enter the Width of the rectangular:   ");
      width = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the Length of the rectangular:   ");
      length = double.parse(stdin.readLineSync()!);
      if (width != null && length != null) {
        double perimeter = (width! + length!) * 2;
        return (perimeter);
      } else {
        print("invalid Data 6");
      }
    } else if (choice2 == "square") {
      stdout.write("Enter the Length of the Square:   ");
      length = double.parse(stdin.readLineSync()!);

      if (length != null) {
        double perimeter = length! * 4;
        return (perimeter);
      } else {
        print("invalid Data 7");
      }
    } else if (choice2 == "triangle") {
      stdout.write("Enter the first Length side of the Triangle:   ");
      length1 = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the second Length side of the Triangle:   ");
      length2 = double.parse(stdin.readLineSync()!);
      stdout.write("Enter the third Length side of the Triangle:   ");
      length3 = double.parse(stdin.readLineSync()!);

      if (length1 != null && length2 != null && length3 != null) {
        double perimeter = length1 + length2 + length3;
        return (perimeter);
      } else {
        print("invalid Data 8");
      }
    } else if (choice2 == "circle") {
      stdout.write("Enter the radius of the Circle:   ");
      radius = double.parse(stdin.readLineSync()!);
      if (radius != null && radius! > 0) {
        double perimeter = 2 * 3.1416 * radius!;
        return (perimeter);
      } else {
        print("invalid Data 9");
      }
    } else {
      print("invalid Data 10 ");
    }
  }
}

void main() {
  stdout.write("Do you want to calculate Area or Perimeter?    ");
  String choice3 = stdin
      .readLineSync()!
      .toLowerCase(); // Convert to lowercase for consistent comparison
  if (choice3 == "area" || choice3 == "perimeter") {
    Calculation object1 = Calculation();
    if (choice3 == "area") {
      stdout.write("Choose...? Rectangular, Square, Triangle, or Circle?    ");
      object1.choice = stdin.readLineSync()!.toLowerCase();
      print("The Area is: ${object1.calculateArea()}");
    } else {
      stdout.write("Choose...? Rectangular, Square, Triangle, or Circle?    ");
      object1.choice2 = stdin.readLineSync()!.toLowerCase();
      print("The Perimeter is: ${object1.calculatePerimeter()}");
    }
  } else {
    print("Invalid Input");
  }
}
