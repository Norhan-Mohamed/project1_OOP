class Account {
  String? _name;
  int? _acc_num;
  int? _acc_pass;
  int? certMon;

  void set Name(String? name) {
    _name = name;
  }

  String? get Name {
    return _name;
  }

  void set AccNum(int? AccNum) {
    _acc_num = AccNum;
  }

  int? get AccNum {
    return _acc_num;
  }

  void set AccPass(int? AccPass) {
    _acc_pass = AccPass;
  }

  int? get AccPass {
    return _acc_pass;
  }

  void info() {
    print(
        "name is $_name\n account number is $_acc_num \n account type $_acc_pass");
  }
  // to create a new account

  String? _yourName;
  String? _accountType;
  int? _password;
  String? _address;
  int? _phoneNum;
  String? _email;

  void set yourName(String? your_name) {
    _yourName = your_name;
  }

  String? get yourName {
    return _yourName;
  }

  set accountType(String? acc_type) {
    _accountType = acc_type;
  }

  String? get accountType {
    return _accountType;
  }

  set password(int? password) {
    _password = password;
  }

  int? get password {
    return _password;
  }

  set address(String? Address) {
    _address = Address;
  }

  String? get address {
    return _address;
  }

  set phoneNum(int? phoneNum) {
    _phoneNum = phoneNum;
  }

  int? get phonenum {
    return _phoneNum;
  }

  set email(String? Email) {
    _email = Email;
  }

  String? get email {
    return _email;
  }

  void newAccount() {
    print("Hello $_yourName  your account is created");
  }

  certificate() {
    print("$certMon has been transferred from your account to a certificate");
  }
}
