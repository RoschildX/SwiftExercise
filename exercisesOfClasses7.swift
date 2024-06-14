// TODO: Time Class

class Date {
    private var day: Int
    private var month: Int
    private var year: Int 
    
    init(day: Int, month: Int, year: Int) {
        if day >= 1 && day <= 31 {
            self.day = day 
        } else {
            self.day = 0
        }
        
        if month >= 1 && month <= 12 {
            self.month = month 
        } else {
            self.month = 0
        }
        
        if year >= 1900 && year <= 9999 {
            self.year = year
        } else {
            self.year = 0
        }
    } 
    
    func getDay() -> Int {
        return day
    }
    
    func getMonth() -> Int {
        return month
    }
    
    func getYear() -> Int {
        return year
    }
    
    func setDay(day: Int) {
        if day >= 1 && day <= 31 {
            self.day = day 
        } else {
            self.day = 0
        }
    }
    
    func setMonth(month: Int) {
        if month >= 1 && month <= 12 {
            self.month = month 
        } else {
            self.month = 0
        }
    }
    
    func setYear(year: Int) {
        if year >= 1900 && year <= 9999 {
            self.year = year
        } else {
            self.year = 0
        }
    }
    
    func setDate(day: Int, month: Int, year: Int) {
        setDay(day: day)
        setMonth(month: month)
        setYear(year: year)
    }
    
    func toString() -> String {
        let dayString = day < 10 ? "0\(day)" : "\(day)"
        let monthString = month < 10 ? "0\(month)" : "\(month)"
        return "\(dayString)/\(monthString)/\(year)"
    }
}

var date = Date(day: 16, month: 5, year: 2029)
print(date.toString())

