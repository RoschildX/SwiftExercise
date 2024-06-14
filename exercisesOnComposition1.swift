class Author{
    private var name : String
    private var email : String
    private var gender : String
    
    init(name: String , email: String, gender: String){
        self.name = name
        self.email = email
        self.gender = gender
    }
    
    func getName() -> String{
        return name
    }
    
    func getEmail() -> String{
        return email
    }
    
    func setEmail(email: String){
        self.email = email
    }
    
    func getGender() -> String{
        return gender
    }
    
    func toString() -> String{
        return "Author[name = \(name),email = \(email), gender = \(gender)]"
    }
}


class Book {
    private var name: String
    private var author: Author
    private var price: Double
    private var qty: Int = 0
    
    init(name: String, author: Author, price: Double, qty: Int) {
        self.name = name
        self.author = author
        self.price = price
        self.qty = qty
    }
    
    // convenience init(name: String, authors: [Author], price: Double, qty: Int) {
    //     self.init(name: name, author: author, price: price)
    //     self.qty = qty
    // }
    
    func getName() -> String {
        return name
    }
    func getAuthor() -> Author {
        return author
    }
    func getPrice() -> Double {
        return price
    }
    func setPrice(price: Double) {
        self.price = price
    }
    func getQty() -> Int {
        return qty
    }
    func setQty(qty: Int) {
        self.qty = qty
    }
    
    func toString() -> String {
        return "Book [name= \(name), \(author.toString()), price= \(price), qty= \(qty)]"
    }
    
}

var author1 = Author(name: "Edmund", email: "edmund@mcruncher.com" , gender: "male")
var author2 = Author(name: "Farhan", email: "edmund@mcruncher.com" , gender: "male")

var book = Book(name: "Abc", author: author1, price: 12.50, qty: 5)
print(book.toString())

print("The author of the book is \(book.getAuthor().getName())")