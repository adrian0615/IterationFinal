//Create a type FirstNSquared which accepts an Int n and, when iterated over using a for loop, produces the first n squares starting with 0.
struct FirstNSquared : Sequence {
    
    typealias Iterator = Array<Int>.Iterator
    var n: Int
    
    init(n: Int) {
        self.n = n
        guard n < 0 else {
            return
        }
    }
    
    func makeIterator() -> Array<Int>.Iterator {
        return Array((0..<n).map { $0 * $0}).makeIterator()
    }
}




