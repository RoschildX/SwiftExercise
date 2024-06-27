class MyTime{
    private var hour: Int = 0
    private var minute: Int = 0
    private var second: Int = 0
    
    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    func setTime(hour: Int, minute: Int, second: Int){
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    func getHour() -> Int{
        return hour
    }
    
    func getMinute() -> Int{
        return minute
    }
    
    func getSecond() -> Int{
        return second
    }
    func setHour(hour: Int){
        self.hour = hour
    }

    func setMinute(minute: Int){
        self.minute = minute
    }
    
    func setSecond(second: Int){
        self.second = second
    }
    
    func toString() -> String {
        return "\(hour) : \(minute) : \(second)"
    }
    
    func nextSecond() -> MyTime{
        second += 1
        if second >= 60 {
            second = 0
            nextMinute()
        }
        return self
    }
    
    func nextMinute() -> MyTime{
        minute += 1
        if minute >= 60{
            minute = 0
            nextHour()
        }
        return self
    }
    
    func nextHour() -> MyTime{
        hour += 1
        if hour >= 24{
            hour = 0
        }
        return self
    }
    
    func previousSecond() -> MyTime{
        second -= 1
        if second < 0 {
            second = 59
            previousMinute()
        }
        return self
    }
    
    func previousMinute() -> MyTime{
        minute -= 1
        if minute < 0{
            minute = 59
            previousHour()
        }
        return self
    }
    
    func previousHour() -> MyTime{
        hour += 1
        if hour < 0{
            hour = 23
        }
        return self
    }
}