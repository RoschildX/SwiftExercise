class Person{
    private var name: String
    private var address: String
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func getName() -> String{
        return name
    }
    
    func getAdresss() -> String{
        return address
    }
    
    func setAdress(address: String){
        self.address = address
    }
    
    func toString() -> String{
        return "[name = \(name), address = \(address)]"
    }
}

var person1 = Person(name: "Edmund", address: "Petaling Jaya")
print(person1.getName())
print(person1.getAdresss())
person1.setAdress(address: "Puchong")
print(person1.toString())


class Student : Person{
    private var program : String
    private var year : Int
    private var fee : Double
    
    init(name: String , address: String, program: String, year: Int, fee: Double) {
        self.program = program
        self.year = year
        self.fee = fee
        super.init(name: name, address: address)
    }
    
    func getProgram() -> String{
        return program
    }
    
    func setProgram(program: String){
        self.program = program
    }
    
    func getYear() -> Int{
        return year
    }
    
    func setYear(year: Int){
        self.year = year
    }
    
    func getFee() -> Double{
        return fee
    }
    
    func setFee(fee: Double){
        self.fee = fee
    }
    
    override func toString() -> String {
        return "Student[Person[name = \(getName()), address = \(getAdresss())], program = \(getProgram()), year = \(getYear()), fee = \(getFee())]"
    }
}


class Staff: Person{
    private var school: String
    private var pay : Double
    
    init(name: String, address: String, school: String, pay: Double) {
        self.school = school
        self.pay = pay
        super.init(name: name, address: address)
    }
    
    func getSchool() -> String{
        return school
    }
    
    func setSchool(school: String){
        self.school = school
    }
    
    func getPay() -> Double{
        return pay
    }
    
    func setPay(pay: Double){
        self.pay = pay
    }
    
    override func toString() -> String {
        return "Staff[Person[name = \(getName()), address = \(getAdresss())], school = \(getSchool()), pay = \(getPay())]"
    }
    
    
    
}


// Create an instance of Student
var student1 = Student(name: "Alice", address: "Kuala Lumpur", program: "Computer Science", year: 2, fee: 15000.0)
print(student1.getName())
print(student1.getAdresss())
print(student1.getProgram())
print(student1.getYear())
print(student1.getFee())
student1.setProgram(program: "Software Engineering")
student1.setYear(year: 3)
student1.setFee(fee: 16000.0)
print(student1.toString())

// Create an instance of Staff
var staff1 = Staff(name: "Bob", address: "Subang Jaya", school: "Engineering", pay: 5000.0)
print(staff1.getName())
print(staff1.getAdresss())
print(staff1.getSchool())
print(staff1.getPay())
staff1.setSchool(school: "Computer Science")
staff1.setPay(pay: 5500.0)
print(staff1.toString())
