class Application {
  String? userName;
  int? id;
  int? password;
  set newName(String? newName) {
    userName = newName;
  }

  String? get newName {
    return userName;
  }

  set Id(int? Id) {
    id = Id;
  }

  int? get Id {
    return id;
  }

  set Pass(int? pass) {
    password = pass;
  }

  int? get Pass {
    return password;
  }

  void bankApp() {
    print("welcome $userName your app account has been created");
  }
}
