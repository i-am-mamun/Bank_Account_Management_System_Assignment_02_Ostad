class BankAccount {
  String accountHolderName;
  int accountNumber;
  double _balance;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Deposit amount must be positive.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
    } else if (amount > _balance) {
      print('Insufficient balance.');
    } else {
      _balance -= amount;
    }
  }

  void displayAccountInfo() {
    print(
      'Account Holder: $accountHolderName Account Number: $accountNumber Balance: ${_balance % 1 == 0 ? _balance.toInt() : _balance}',
    );
  }
}

void main() {
  // Creating Account 1
  BankAccount account1 = BankAccount('Rahim', 1001, 5000);
  account1.displayAccountInfo();

  // Deposit money into account 1
  account1.deposit(2000);
  print(
    'After Deposit: Balance: ${account1.balance % 1 == 0 ? account1.balance.toInt() : account1.balance}',
  );

  // Withdraw money from account 1
  account1.withdraw(1500);
  print(
    'After Withdrawal: Balance: ${account1.balance % 1 == 0 ? account1.balance.toInt() : account1.balance}',
  );

  // Creating Account 2
  BankAccount account2 = BankAccount('Karim', 1002, 8000);
  account2.displayAccountInfo();
}
