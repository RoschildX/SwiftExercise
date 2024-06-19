import Foundation

class MyDate {
    private var year: Int
    private var month: Int
    private var day: Int

    private let MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    private let DAYS = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    private let DAYS_IN_MONTHS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    init(year: Int, month: Int, day: Int) {
        if MyDate.isValidDate(year: year, month: month, day: day) {
            self.year = year
            self.month = month
            self.day = day
        } else {
            self.year = 2000
            self.month = 1
            self.day = 1
        }
    }

    static func isLeapYear(year: Int) -> Bool {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    }

    static func isValidDate(year: Int, month: Int, day: Int) -> Bool {
        if year < 1 || month < 1 || month > 12 || day < 1 {
            return false
        }
        var daysInMonth = MyDate.DAYS_IN_MONTHS[month - 1]
        if month == 2 && isLeapYear(year: year) {
            daysInMonth = 29
        }
        return day <= daysInMonth
    }

    static func getDayOfWeek(year: Int, month: Int, day: Int) -> String {
        var y = year
        var m = month
        if m < 3 {
            m += 12
            y -= 1
        }
        let k = y % 100
        let j = y / 100
        let f = day + 13 * (m + 1) / 5 + k + k / 4 + j / 4 + 5 * j
        return MyDate().DAYS[f % 7]
    }

    func setDate(year: Int, month: Int, day: Int) {
        if MyDate.isValidDate(year: year, month: month, day: day) {
            self.year = year
            self.month = month
            self.day = day
        }
    }

    func getYear() -> Int { return year }
    func getMonth() -> Int { return month }
    func getDay() -> Int { return day }

    func setYear(year: Int) { self.year = year }
    func setMonth(month: Int) { if month >= 1 && month <= 12 { self.month = month } }
    func setDay(day: Int) { if day >= 1 && day <= MyDate.DAYS_IN_MONTHS[self.month - 1] { self.day = day } }

    func toString() -> String {
        return "\(MyDate.getDayOfWeek(year: year, month: month, day: day)) \(day) \(MONTHS[month - 1]) \(year)"
    }

    func nextDay() -> MyDate {
        if MyDate.isValidDate(year: year, month: month, day: day + 1) {
            return MyDate(year: year, month: month, day: day + 1)
        } else if month == 12 {
            return MyDate(year: year + 1, month: 1, day: 1)
        } else {
            return MyDate(year: year, month: month + 1, day: 1)
        }
    }

    func nextMonth() -> MyDate {
        if month == 12 {
            return MyDate(year: year + 1, month: 1, day: min(day, MyDate.DAYS_IN_MONTHS[0]))
        } else {
            return MyDate(year: year, month: month + 1, day: min(day, MyDate.DAYS_IN_MONTHS[month]))
        }
    }

    func nextYear() -> MyDate {
        if month == 2 && day == 29 && !MyDate.isLeapYear(year: year + 1) {
            return MyDate(year: year + 1, month: month, day: 28)
        } else {
            return MyDate(year: year + 1, month: month, day: day)
        }
    }

    func previousDay() -> MyDate {
        if day > 1 {
            return MyDate(year: year, month: month, day: day - 1)
        } else if month == 1 {
            return MyDate(year: year - 1, month: 12, day: 31)
        } else {
            let prevMonth = month - 1
            let prevMonthDays = (prevMonth == 2 && MyDate.isLeapYear(year: year)) ? 29 : MyDate.DAYS_IN_MONTHS[prevMonth - 1]
            return MyDate(year: year, month: prevMonth, day: prevMonthDays)
        }
    }

    func previousMonth() -> MyDate {
        if month == 1 {
            return MyDate(year: year - 1, month: 12, day: min(day, MyDate.DAYS_IN_MONTHS[11]))
        } else {
            return MyDate(year: year, month: month - 1, day: min(day, MyDate.DAYS_IN_MONTHS[month - 2]))
        }
    }

    func previousYear() -> MyDate {
        if month == 2 && day == 29 && !MyDate.isLeapYear(year: year - 1) {
            return MyDate(year: year - 1, month: month, day: 28)
        } else {
            return MyDate(year: year - 1, month: month, day: day)
        }
    }
}

let myDate = MyDate(year: 2024, month: 6, day: 18)
print(myDate.toString())  
let nextDay = myDate.nextDay()
print(nextDay.toString())  