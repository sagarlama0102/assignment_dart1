import 'package:assignment_dart1/task.dart';

class StudentAccount extends BankAccount {
  final double _maxBalance = 5000;

  StudentAccount({
    required super.accountNumber,
    required super.accountHolderName,
    required super.balance,
  });
  @override
  double withdraw(double amount) {
    if (amount > getbalance) {
      print("Insufficient amonut");
      return getbalance;
    } else {
      balance = getbalance - amount;

      addTransaction("Withdraw $amount");
      print("Withdrawal successful. New balance: $getbalance");
      return getbalance;
    }
  }

  @override
  double deposit(double amount) {
    if (getbalance + amount > _maxBalance) {
      print("Cannot deposit. Max balance limit of $_maxBalance exceeded.");
      return getbalance;
    } else {
      balance = getbalance + amount;
      
      addTransaction("Deposit $amount");
      print("Deposit successful. New balance: $getbalance");
      return getbalance;
    }
  }
}
