import BasicMath

public struct SeaShell {
    let math: MathProtocol

    init(math: MathProtocol) {
        self.math = math
    }

    public func add(a: Number, b: Number) -> Number {
        math.add(a, b)
    }

    public func subtract(a: Number, b: Number) -> Number {
        math.subtract(a, b)
    }

    // Passes Swift Array into the C function
    public func repeatNumber(x: Number, n: Number) -> [Number] {
        var numbers = Array<Number>(repeating: 0, count: n)
        math.repeatNumber(x, n, &numbers)
        return numbers
    }

    // Creates array in C and reads it in Swift
    public func randomRepeatNumber(x: Number) -> [Number] {
        fatalError("Not implemented")
    }

    public func addNumbers(a: [Number]) -> Number {
        let total = math.addNumbers(a, a.count)
        return total
    }

}
