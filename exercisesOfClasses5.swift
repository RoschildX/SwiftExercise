class InvoiceItem {
    private var id: String
    private var desc: String 
    private var qty: Int
    private var unitPrice: Double
    
    init(id: String, desc: String, qty: Int, unitPrice: Double) {
        
        self.id = id
        self.desc = desc
        self.qty = qty 
        self.unitPrice = unitPrice
    } 
    
    func getId() -> String {
        return id
    }
    
    func getDesc() -> String {
        return desc
    }
    
    func getQty() -> Int {
        return qty 
    }
    
    func getUnitPrice() -> Double {
        return unitPrice 
    }
    
    func setUnitPrice(unitPrice: Double) {
        self.unitPrice = unitPrice 
    } 
    
    func getTotal() -> Double {
        return unitPrice * Double(qty)
    }
    
    func toString() -> String {
        return "Invoice[id= \(id), desc= \(desc), qty= \(qty), unitPrice: \(unitPrice)"
    }
}



var invoice = InvoiceItem(id: "A000165.2023", desc: "Office chairs", qty: 120, unitPrice: 560.72)

print(invoice.getDesc())
print(invoice.getQty())
print(invoice.getUnitPrice())
print(invoice.getTotal())




