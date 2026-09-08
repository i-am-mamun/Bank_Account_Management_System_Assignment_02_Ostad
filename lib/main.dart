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
