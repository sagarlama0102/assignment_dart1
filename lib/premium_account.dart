import 'task.dart';
import 'interest_bearing.dart';

class PremiumAccount extends BankAccount implements InterestBearing {
  final double minBalance = 10000;
  final double interestRate = 0.05;

  PremiumAccount({
    required super.accountHolderName,
    required super.accountNumber,
    required super.balance,
  });

  @override
  double withdraw(double amount) {
    if (getbalance - amount < minBalance) {
      print("Cannot withdraw: Minimum balance requirement of $minBalance.");
    }
    balance = getbalance - amount;
    addTransaction("Withdraw: $amount");
    print("Withdraw successful. New balance: $getbalance");
    return getbalance;
  }

  @override
  double deposit(double amount) {
    balance = getbalance + amount;
    addTransaction("Deposit $amount");
    print("Successfully Deposited. Your new balance is $getbalance");
    return getbalance;
  }

  @override
  double calculateInterest() {
    return getbalance * interestRate;
  }

  @override
  void applyInterest() {
    balance = getbalance + calculateInterest();
    addTransaction("Interest applied : $calculateInterest()");
    print(
      "Interest applied to $getaccountHolderName. New balance: $getbalance",
    );
  }
}
