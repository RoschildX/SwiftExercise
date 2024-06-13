class Time {
    private var hour: Int
    private var minute: Int
    private var second: Int
    
    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute 
        self.second = second
    }
    
    func getHour() -> Int {
        return hour
    }
    
    func getMinute() -> Int {
        return minute 
    }
    
    func getSecond() -> Int {
        return second
    }
    
    func setHour(hour: Int) {
        self.hour = hour
    }
    
    func setMinute(minute: Int) {
        self.minute = minute 
    }
    
    func setSecond(second: Int) {
        self.second = second
    }
    
    func setTime(hour: Int, minute: Int, second: Int) {
        setHour(hour: hour)
        setMinute(minute: minute)
        setSecond(second: second)
    } 
    
    func toString() -> String {
        return "\(hour)/\(minute)/\(second)"
    }
    
    func nextSecond() -> Time {
        
        if second == 59 {
            second = 0
            
            if minute == 59 {
                minute = 0
                
                if hour == 23 {
                    hour = 0
                    second = 1
                } else {
                    hour += 1
                }
            } else {
                minute += 1
            }
        } else {
            second += 1
        }
        return self
    }