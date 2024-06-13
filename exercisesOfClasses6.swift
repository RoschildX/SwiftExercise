class Account {
    private var id: String 
    private var name: String
    private var balance: Int
    
    init(id: String, name: String, balance: Int) {
        self.id = id
        self.name = name
        self.balance = balance
    }
    
    func getId() -> String {
        return id 
    }
    
    func getName() -> String {
        return name
    }
    
    func getBalance() -> Int {
        return balance
    }
    
    func credit(amount: Int) -> Int {
        balance += amount
        return balance
    }
    
    func debit(amount: Int) -> Int {
        
        if amount < balance {
            balance -= amount
        } else {
            print("Amount exceeeded balance")
        }
        return balance 
        
    }
    
    func transferTo(another: Account, amount: Int) -> Int {
    
        if amount < balance {
            print(another.credit(amount: amount))
            return debit(amount: amount) 
        } else {
            print("Amount exceeeded balance")
            return balance
        }
        
    }
    
    func toString() -> String {
        return "Account[id= \(id), name= \(name), balance= \(balance)]"
    }
}

var account1 = Account(id: "A101", name: "Tan Ah Teck", balance: 0)

var account2 = Account(id: "A102", name: "Micheal Yeoh", balance: 0)

print(account1.credit(amount: 188))
print(account1.transferTo(another: account2, amount: 50))