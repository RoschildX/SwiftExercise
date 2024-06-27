class Author{
    private var name : String
    private var email : String
    
    init(name: String , email: String){
        self.name = name
        self.email = email
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
    
    func toString() -> String{
        return "Author[name = \(name), email = \(email)]"
    }
}

class Book {
    private var isbn: String
    private var name: String
    private var author: Author
    private var price: Double
    private var qty: Int = 0
    
    init(isbn: String, name: String, author: Author, price: Double, qty: Int) {
        self.isbn = isbn
        self.name = name
        self.author = author
        self.price = price
        self.qty = qty
    }
    
    func getIsbn() -> String {
        return isbn
    }
    
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
    
    func getAuthorName() -> String {
        return author.getName()
    }
    
    func toString() -> String {
        return "Book [isbn = \(isbn) name= \(name), \(author.toString()), price= \(price), qty= \(qty)]"
    }
}

var author1 = Author(name: "Jk Rowling", email: "farhan@mcruncher.com")

var book = Book(isbn: "A123", name: "Harry Potter", author: author1, price: 76.67, qty: 5)

print(book.toString())
print(book.getAuthor().getEmail())