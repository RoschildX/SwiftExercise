class Employee {
    private var id : Int
    private var firstName: String
    private var lastName: String
    private var salary: Int
    
    init(id: Int, firstName: String, lastName: String, salary: Int) {
        
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.salary = salary
    }
    
    func getId() -> Int {
        return id
    }
    
    func getFirstName() -> String {
        return firstName
    }
    
    func getlastName() -> String {
        return lastName
    }
    
    func getName() -> String {
        return "\(firstName) \(lastName)"
    }
    
    func getSalary() -> Int {
        return salary
    }
    
    func setSalary(salary: Int) {
        self.salary = salary
    }
    
    func getAnnualSalary() -> Int {
        return salary * 12
    }
    
    func raiseSalary(percent: Int) -> Int {
        let incrementPercent = 1 + Double(percent) / 100
        let incrementSalary = Double(salary) * incrementPercent
        
        return Int(incrementSalary)
    }
    
    func toString() -> String {
        return "Employee [id= \(getId()), name= \(getName()), salary= \(getSalary()))"
    }
}


var employee = Employee(id: 898047, firstName: "John", lastName: "Swift", salary: 7549)


print(employee.toString())
print(employee.getAnnualSalary())
print(employee.raiseSalary(percent: 23))


