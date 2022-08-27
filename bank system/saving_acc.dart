import 'accounts.dart';

class Saving_Account extends Account {
  num _savBalance = 50000;
  late num deposit, interest;
  late num withdraw;

  set dMoney(num Deposit) {
    deposit = Deposit;
  }

  num get dMoney => deposit;

  void s_deposit() {
    _savBalance = _savBalance + deposit;
    interest = (deposit * 2) / 100;
    _savBalance = _savBalance + interest;
    print(" balance after deposit = $_savBalance");
  }

  set wMoney(num wMoney) {
    withdraw = wMoney;
  }

  num get wMoney => withdraw;

  void s_withdraw() {
    _savBalance = _savBalance - withdraw;
    print("balance after withdrawal = $_savBalance");
  }
}
