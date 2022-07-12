import BasicMath

public struct SeaShell {

    public static func add(a: Number, b: Number) -> Number {
        BasicMath.add(a, b)
    }

    public static func subtract(a: Number, b: Number) -> Number {
        BasicMath.subtract(a, b)
    }

    public static func repeatNumber(x: Number, n: Number) -> [Number] {
        var numbers = Array<Number>(repeating: 0, count: n)
        BasicMath.repeatNumber(x, n, &numbers)
        return numbers
    }

    public static func randomRepeatNumber(x: Number) -> [Number] {

//        let a = UnsafeMutablePointer<Number>.allocate(capacity: 1)
//        let n = BasicMath.randomRepeatNumber(x, a)
//        var newArray: [Number] = Array(repeating: 0, count: n)
//
//        defer {
//            a.deinitialize(count: n)
//            a.deallocate()
//        }
//
//        for index in 0..<n {
//            newArray[index] = a[index]
//        }
//
//        return newArray

        fatalError("Not implemented")
    }

    public static func addNumbers(a: [Number]) -> Number {
        let total = BasicMath.addNumbers(a, a.count)
        return total
    }

}
