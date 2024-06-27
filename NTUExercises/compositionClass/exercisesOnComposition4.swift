class Customer {
    private var id: Int
    private var name: String
    private var discount: Int
    
    init(id: Int, name: String, discount: Int) {
        self.id = id
        self.name = name
        self.discount = discount
    }
    
    func getId() -> Int {
        return id
    }
    
    func getName() -> String {
        return name
    }
    
    func getDiscount() -> Int {
        return discount
    }
    
    func setDiscount(discount: Int) {
        self.discount = discount
    }
    
    func toString() -> String {
        return "\(name)(\(id)(\(discount)%))"
    }
}

class Invoice {
    private var id: Int
    private var customer: Customer
    private var amount: Double
    
    init(id: Int, customer: Customer, amount: Double) {
        self.id = id
        self.customer = customer
        self.amount = amount
    }
    
    func getId() -> Int {
        return id
    }
    
    func getCustomer() -> Customer {
        return customer
    }
    
    func getAmount() -> Double {
        return amount
    }
    
    func setAmount(amount: Double) {
        self.amount = amount
    }
    
    func getCustomerId() -> Int {
        return customer.getId()
    }
    
    func getCustomerName() -> String {
        return customer.getName()
    }
    
    func getCustomerDiscount() -> Int {
        return customer.getDiscount() 
    }
    
    func toString() -> String {
        return "Invoice [id= \(id), customer= \(customer.toString()), amount= \(amount)]"
    }
}


var customer1 = Customer(id: 123, name:"John", discount: 20)


var invoice = Invoice(id: 6734836, customer: customer1, amount: 25.69)




print("\(invoice.getCustomerDiscount())%")
