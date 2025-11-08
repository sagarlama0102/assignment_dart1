import 'task.dart';
import 'interest_bearing.dart';

class SavingsAccount extends BankAccount implements InterestBearing {
  final double minBalance = 500;
  final double interestRate = 0.02;
  final int maxWithdrawLimit = 3;

  int withdrawThisMonth = 0;

  SavingsAccount({
    required super.accountHolderName,
    required super.accountNumber,
    required super.balance,
  });

  @override
  double withdraw(double amount) {
    if (withdrawThisMonth >= maxWithdrawLimit) {
      print("Your Withdraw is limited this month");
      return getbalance;
    }
    if (getbalance - amount < minBalance) {
      print("Cannot withdraw: minimum balance requirement of \$500.");
      return getbalance;
    }
    balance = getbalance - amount;
    withdrawThisMonth++;
    print("Withdrawal successful. Remaining balance: $getbalance");
    return getbalance;
  }

  @override
  double deposit(double amount) {
    balance = getbalance + amount;
    addTransaction("Deposut : $amount");
    print("Successfully Deposited. Your new balance is $getbalance");
    return getbalance;
  }

  @override
  double calculateInterest() {
    return getbalance * interestRate;
  }

  @override
  void applyInterest() {
    double interest = calculateInterest();
    balance = getbalance + interest;
    addTransaction("Interest applied : ${calculateInterest()}");
    print(
      "Interest of $interest applied to $getaccountHolderName New balance : $getbalance",
    );
  }
}
