class Time {
    private var hour: Int
    private var minute: Int
    private var second: Int
    
    init(hour: Int, minute: Int, second: Int) {
        if hour >= 0 && hour < 24 {
            self.hour = hour
        } else {
            self.hour = 0
        }
        
        if minute >= 0 && minute < 60 {
            self.minute = minute
        } else {
            self.minute = 0
        }
        
        if second >= 0 && second < 60 {
            self.second = second
        } else {
            self.second = 0
        }
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
        if hour >= 0 && hour < 24 {
            self.hour = hour
        }
    }
    
    func setMinute(minute: Int) {
        if minute >= 0 && minute < 60 {
            self.minute = minute
        }
    }
    
    func setSecond(second: Int) {
        if second >= 0 && second < 60 {
            self.second = second
        }
    }
    
    func setTime(hour: Int, minute: Int, second: Int) {
        setHour(hour: hour)
        setMinute(minute: minute)
        setSecond(second: second)
    }
    
    func toString() -> String {
        let hourString = hour < 10 ? "0\(hour)" : "\(hour)"
        let minuteString = minute < 10 ? "0\(minute)" : "\(minute)"
        let secondString = second < 10 ? "0\(second)" : "\(second)"
        return "\(hourString):\(minuteString):\(secondString)"
    }
    
    func nextSecond() -> Time {
        if second == 59 {
            second = 0
            if minute == 59 {
                minute = 0
                if hour == 23 {
                    hour = 0
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
    
    func previousSecond() -> Time {
        if second == 0 {
            second = 59
            if minute == 0 {
                minute = 59
                if hour == 0 {
                    hour = 23
                } else {
                    hour -= 1
                }
            } else {
                minute -= 1
            }
        } else {
            second -= 1
        }
        return self
    }
}

var time = Time(hour: 23, minute: 59, second: 59)
print(time.toString())  // Should print "23:59:59"
print(time.toString())  // Should print "00:00:00"
print(time.toString())  // Should print "23:59:59"