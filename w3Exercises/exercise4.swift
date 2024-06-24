import Foundation

protocol Account {
    var balance: Double { get set }
    var accountNumber: String { get }

    func deposit(amount: Double)
    func withdraw(amount: Double) -> Bool
    func calculateInterest() -> Double
    func viewBalance() -> Double
}

class Bank {
    private var accounts: [Account] = []

    func addAccount(_ account: Account) {
        accounts.append(account)
    }

    func getAccount(accountNumber: String) -> Account? {
        return accounts.first { $0.accountNumber == accountNumber }
    }
}

class SavingsAccount: Account {
    var balance: Double
    let accountNumber: String
    let interestRate: Double

    init(accountNumber: String, balance: Double, interestRate: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
        self.interestRate = interestRate
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func withdraw(amount: Double) -> Bool {
        if amount <= balance {
            balance -= amount
            return true
        } else {
            print("Insufficient funds")
            return false
        }
    }

    func calculateInterest() -> Double {
        return balance * interestRate
    }

    func viewBalance() -> Double {
        return balance
    }
}

class CurrentAccount: Account {
    var balance: Double
    let accountNumber: String
    let overdraftLimit: Double

    init(accountNumber: String, balance: Double, overdraftLimit: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
        self.overdraftLimit = overdraftLimit
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func withdraw(amount: Double) -> Bool {
        if amount <= balance + overdraftLimit {
            balance -= amount
            return true
        } else {
            print("Overdraft limit exceeded")
            return false
        }
    }

    func calculateInterest() -> Double {
        return 0.0 // Current accounts usually don't have interest
    }

    func viewBalance() -> Double {
        return balance
    }
}

let bank = Bank()

let savingsAccount = SavingsAccount(accountNumber: "SAV12345", balance: 1000.0, interestRate: 0.05)
let currentAccount = CurrentAccount(accountNumber: "CUR67890", balance: 500.0, overdraftLimit: 200.0)

bank.addAccount(savingsAccount)
bank.addAccount(currentAccount)

// Depositing money
savingsAccount.deposit(amount: 500.0)
currentAccount.deposit(amount: 200.0)

// Withdrawing money
savingsAccount.withdraw(amount: 200.0)
currentAccount.withdraw(amount: 600.0)


print("Savings Account Interest: \(savingsAccount.calculateInterest())")
Account Interest: 65.0
print("Current Account Interest: \(currentAccount.calculateInterest())") 
// Viewing balances
print("Savings Account Balance: \(savingsAccount.viewBalance())") 
print("Current Account Balance: \(currentAccount.viewBalance())") 

