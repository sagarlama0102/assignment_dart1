import 'task.dart';
import 'interest_bearing.dart';

class Bank {
  final List<BankAccount> _accounts = [];

  // Creating new account
  void addAccount(BankAccount account) {
    _accounts.add(account);
    print("Account added successfully for ${account.getaccountHolderName}");
  }

  //  find account by new number
  BankAccount? findAccount(int accountNumber) {
    for (var acc in _accounts) {
      if (acc.getaccountNumber == accountNumber) {
        return acc;
      }
    }
    print("Account with number $accountNumber not found.");
    return null;
  }

  // Transfer money between accounts
  void transferMoney({
    required int fromAccountNumber,
    required int toAccountNumber,
    required double amount,
  }) {
    BankAccount? from = findAccount(fromAccountNumber);
    BankAccount? to = findAccount(toAccountNumber);

    if (from == null || to == null) {
      print("Transfer failed: One of the accounts not found.");
      return;
    }
    if (from.getbalance < amount) {
      print(
        "Transfer failed: Insufficient balance in ${from.getaccountHolderName}'s account.",
      );
      return;
    }

    from.withdraw(amount);
    to.deposit(amount);
    print("Transfer of $amount successful.");
  }

  // Generate reports of all accounts
  void generateReport() {
    print("Bank Account Reports");
    for (var acc in _accounts) {
      print(acc.displayInfo());
    }
  }

  void applyMonthlyInterestToAll() {
    for (var acc in _accounts) {
      if (acc is InterestBearing) {
        (acc as InterestBearing).applyInterest();
        print("Interest applied for ${acc.getaccountHolderName}");
      }
    }
  }
}
