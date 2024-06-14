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
// print(author.toString())
class Book {
    private var name: String
    private var authors: [Author]
    private var price: Double
    private var qty: Int = 0
    init(name: String, authors: [Author], price: Double) {
        self.name = name
        self.authors = authors
        self.price = price
    }
    convenience init(name: String, authors: [Author], price: Double, qty: Int) {
        self.init(name: name, authors: authors, price: price)
        self.qty = qty
    }
    func getName() -> String {
        return name
    }
    func getAuthors() -> [Author] {
        return authors
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
    
    func getAuthorNames() -> String {
        var listOfAuthors: [String] = []
        for author in authors {
            listOfAuthors.append(author.getName())
        }
        return listOfAuthors.joined(separator: ", ")
    }
    
}
var author1 = Author(name: "Edmund", email: "edmund@mcruncher.com" , gender: "male")
var author2 = Author(name: "Farhan", email: "edmund@mcruncher.com" , gender: "male")
var book = Book(name: "Abc", authors: [author1, author2], price: 12.50)
// print(book.toString())
print(book.getAuthorNames())
