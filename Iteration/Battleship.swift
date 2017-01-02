//Create a type Battleship which will accept an array of Character and an array of Int. It should then produce all of the combinations using one element from the [Character] and one element from [Int].


//(['a', 'b', 'c'], [1, 2]) [(a, 1), (a, 2), (b, 1), (b, 2), (c, 1), (c, 2),]



struct Battleship: Sequence {
    
    
    var letterArray: [Character]
    var numArray: [Int]
    
    init(_ letterArray: [Character], _ numArray: [Int])  {
        self.letterArray = letterArray
        self.numArray = numArray
        
        _ = letterArray.flatMap { letter in
            numArray.map { number in
                (letter, number)
            }
            
        }
        
    }
    func makeIterator() -> Array<(Character, Int)>.Iterator {
        return Array(zip(letterArray, numArray)).makeIterator()
    }
    
}




