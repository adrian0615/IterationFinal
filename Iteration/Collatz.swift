//Create a type Collatz which accepts an Int n and produces numbers with the following behavior

//if n is odd, multiply by three and add one.
//if n is even, divide by two
//in either case, the returned number is now n



struct Collatz {
    
    
    var n: Int
    
    
    init(n: Int) {
        precondition(n > 0)
        self.n = n
    }
    
    func collatzConvert() -> [Int] {
        var number = self.n
        var numArray :  [Int] = []
        while number != 1 {
        if number % 2 == 0 {
            number += number / 2
            numArray.append(number)
            } else {
            number += (number * 3 - 1)
            numArray.append(number)
        }
        
        
    }
        return numArray
}
}

