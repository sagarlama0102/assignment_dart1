
import 'bank.dart';
import 'savings_account.dart';
import 'checking_account.dart';
import 'premium_account.dart';
import 'student_account.dart';

void main() {
  Bank bank = Bank();

  var sa = SavingsAccount(accountHolderName: "Sagar", accountNumber: 101, balance: 10000);
  var vi = CheckingAccount(accountHolderName: "Vinayak", accountNumber: 102, balance: 50000);
  var an = PremiumAccount(accountHolderName: "Anish", accountNumber: 103, balance: 200000);
  var bi = StudentAccount(accountHolderName: "Bidhan", accountNumber: 104, balance: 3000);

  bank.addAccount(sa);
  bank.addAccount(vi);
  bank.addAccount(an);
  bank.addAccount(bi);

  bank.transferMoney(fromAccountNumber: 101, toAccountNumber: 102, amount: 4000);
  bank.applyMonthlyInterestToAll();
  bank.generateReport();

  sa.showTransactions();
  bi.showTransactions();
}
