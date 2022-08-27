import 'accounts.dart';

class Current_Account extends Account {
  num _balance = 350000;
  late num deposit, withdraw;

  set money(num money) {
    deposit = money;
  }

  num get money {
    return deposit;
  }

  void c_deposit() {
    _balance = _balance + deposit;
    print("balance after deposit: $_balance");
  }

  set aMoney(num aMoney) {
    withdraw = aMoney;
  }

  num get aMoney {
    return withdraw;
  }

  void c_withdraw() {
    _balance = _balance - withdraw;
    print("balance after withdraw : $_balance");
  }
}
