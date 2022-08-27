import 'dart:io';

import 'accounts.dart';
import 'bankApp.dart';
import 'current_acc.dart';
import 'loan.dart';
import 'saving_acc.dart';

void main() {
  var s1 = Saving_Account();
  var c1 = Current_Account();
  var p1 = new Account();
  var p2 = Application();
  var p3 = Loan();
  print("enter your code");
  int code = int.parse(stdin.readLineSync()!);
  print("""welcome , please choose one of the following operation 
  1- create account 
  2- create bank app
  3- deposit
  4- withdraw
  5-certificate
  6- loans 
  7- exit""");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("please , enter your name ");
      p1.yourName = stdin.readLineSync();
      print("enter your phone number");
      p1.phoneNum = int.parse(stdin.readLineSync()!);
      print("enter your address");
      p1.address = stdin.readLineSync();
      print("enter your email");
      p1.email = stdin.readLineSync();
      print("enter your password");
      p1.password = int.parse(stdin.readLineSync()!);
      print(" what type do you want? ");
      p1.accountType = stdin.readLineSync();
      p1.newAccount();
      break;
    case 2:
      print("enter user name for new account");
      p2.userName = stdin.readLineSync();
      print("enter your id ");
      p2.id = int.parse(stdin.readLineSync()!);
      print("please, choose your password");
      p2.password = int.parse(stdin.readLineSync()!);
      p2.bankApp();
      break;
    case 3:
      print("enter your account type ");
      String? type = stdin.readLineSync();
      if (type == 'S' || type == 's') {
        print("enter the amount to deposit");
        s1.dMoney = int.parse(stdin.readLineSync()!);
        s1.s_deposit();
      } else if (type == 'c' || type == 'C') {
        print("enter the money to deposit");
        c1.money = int.parse(stdin.readLineSync()!);
        c1.c_deposit();
      }
      break;
    case 4:
      print("enter your account type ");
      String? type = stdin.readLineSync();
      if (type == 'S' || type == 's') {
        print("enter the amount to deposit");
        s1.wMoney = int.parse(stdin.readLineSync()!);
        s1.s_withdraw();
      } else if (type == 'c' || type == 'C') {
        print("enter the money to withdraw");
        c1.aMoney = int.parse(stdin.readLineSync()!);
        c1.c_withdraw();
      }
      break;
    case 5:
      print("enter your account number");
      p1.AccNum = int.parse(stdin.readLineSync()!);
      print("are ypu sure you want to make a certificate");
      String? answer = stdin.readLineSync();
      if (answer == 'yes') {
        print(" enter how much money you want to transfer into a certificate ");
        p1.certMon = int.parse(stdin.readLineSync()!);
        p1.certificate();
      } else {
        print("exit");
      }
      break;
    case 6:
      print("your guarantee is a salary or certificate");
      String? guarantee = stdin.readLineSync();
      if (guarantee == 'salary') {
        p3.salary = int.parse(stdin.readLineSync()!);
        p3.loanBySalary();
      } else if (guarantee == 'certificate') {
        print("enter the amount of money in your certificate");

        p3.Gcertificate = int.parse(stdin.readLineSync()!);
        p3.loanByCertificate();
      }
      break;
    case 7:
      print("exit!");
  }
}
