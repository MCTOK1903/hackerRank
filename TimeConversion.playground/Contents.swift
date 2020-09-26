
func timeConversion(s: String) -> String{
    var finalTime = ""
    var b = Array(s)
    let aP = b[8]
    b.removeLast();b.removeLast()
    let hours = Int("\(b[0])\(b[1])")!
    if aP == "A" {
        if hours == 12 {
            b.removeFirst();b.removeFirst()
            let newHours = "00"
            let hourChar = newHours
            let finalHour = "\(String(hourChar))\(String(b))"
            finalTime = String(finalHour)
        } else {
            finalTime = String(b)
        }
    } else {
        if hours == 12 {
            finalTime = String(b)
        } else {
            b.removeFirst();b.removeFirst()
            let convertedHours = String(hours+12)
            let char = convertedHours
            let finalChar = "\(String(char))\(String(b))"
            finalTime = String(finalChar)
        }
    }
    
    return finalTime
}
