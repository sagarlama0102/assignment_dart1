import 'task.dart';

class CheckingAccount extends BankAccount {
  final double overdraftFee = 35;

  CheckingAccount({
    required super.accountHolderName,
    required super.accountNumber,
    required super.balance,
  });

  @override
  double withdraw(double amount) {
    balance = getbalance - amount;
    if (getbalance < 0) {
      balance = getbalance - overdraftFee;
      print("Overdraft! Fee applied: $overdraftFee. New balance: $getbalance");
    } else {
      print("Withdrawal successful. New balance: $getbalance");
    }
    addTransaction("Withdraw: $amount");
    return getbalance;
  }

  @override
  double deposit(double amount) {
    balance = getbalance + amount;
    addTransaction("Deposit $amount");
    print("Successfully Deposited. Your new balance is $getbalance");
    return getbalance;
  }
}