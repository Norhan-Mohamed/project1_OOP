class Loan {
  int? loanMoney;
  int? salary;
  int? Gcertificate;
  num? posibile;
  // to get a loan, it must be secured by a salary or certificate.
  // the guarantee is at half the salary or at a percentage of 90% of the certificate
  set loanmon(int? loanMon) {
    loanMoney = loanMon;
  }

  int? get loanmon {
    return loanMoney;
  }

  set salary1(int? salary1) {
    salary = salary1;
  }

  int? get salary1 {
    return salary;
  }

  set certificate(int? gcerti) {
    Gcertificate = gcerti;
  }

  int? get certificate {
    return Gcertificate;
  }

  loanBySalary() {
    posibile = salary! / 2;
    posibile = posibile! * 12;
    print("you can have $posibile to be paid back in a year ");
  }

  loanByCertificate() {
    posibile = Gcertificate! * (90 / 100);
    print(" you can have $posibile of money as a loan");
  }
}
//half the salary or 90% of the certificate
