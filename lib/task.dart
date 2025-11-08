// abstract class Bank Account

abstract class BankAccount {
  final int _accountNumber;
  String _accountHolderName;
  double _balance;
  final List<String> _transactions = [];

  BankAccount({
    required String accountHolderName,
    required int accountNumber,
    required double balance,
  }) : _accountHolderName = accountHolderName,
       _accountNumber = accountNumber,
       _balance = balance;

  // transaction tracking
  void addTransaction(String transaction) {
    _transactions.add("${DateTime.now()}: $transaction");
  }
  void showTransactions() {
    if (_transactions.isEmpty) {
      print("No transactions yet.");
      return;
    }
    print("Transaction history for $_accountHolderName:");
    for (var t in _transactions) {
      print("- $t");
    }
  }
  // Abstreact methods
  double withdraw(double amount);
  double deposit(double amount);

  String displayInfo() {
    return "Account Name : $_accountHolderName, Account Number : $_accountNumber, Balance: $_balance ";
  }

  // getters and setters

  int get getaccountNumber {
    return _accountNumber;
  }

  String get getaccountHolderName {
    return _accountHolderName;
  }

  set setaccountHolderName(String accountHolderName) {
    _accountHolderName = accountHolderName;
  }

  double get getbalance {
    return _balance;
  }

  set balance(double balance) {
    _balance = balance;
  }
}


