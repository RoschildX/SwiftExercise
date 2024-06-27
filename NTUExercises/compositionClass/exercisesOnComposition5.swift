class Customer {
    private var id: Int
    private var name: String
    private var gender: String
    
    init(id: Int, name: String, gender: String) {
        self.id = id
        self.name = name
        self.gender = gender
    }
    
    func getId() -> Int {
        return id
    }
    
    func getName() -> String {
        return name
    }
    
    func getGender() -> String {
        return gender
    }
    
    func toString() -> String {
        return "\(name)(\(id))"
    }
}
