import Foundation
import BasicMath

/// Wraps BasicMath so it conforms to a protocol and functions are defined in a struct.
public struct Math: MathProtocol {
    public func add(_ a: Number, _ b: Number) -> Number {
        BasicMath.add(a, b)
    }

    public func subtract(_ a: Number, _ b: Number) -> Number {
        BasicMath.subtract(a, b)
    }

    public func repeatNumber(_ x: Number, _ n: Number, _ a: UnsafeMutablePointer<Number>) {
        BasicMath.repeatNumber(x, n, a)
    }


    public func randomRepeatNumber(_ x: Number, _ a: UnsafeMutablePointer<UnsafeMutablePointer<Number>?>) -> Number {
        BasicMath.randomRepeatNumber(x, a)
    }

    public func addNumbers(_ a: UnsafePointer<Number>, _ n: Number) -> Number {
        BasicMath.addNumbers(a, n)
    }

    public func releaseNumbers(_ a: UnsafeMutablePointer<Number>) {
        BasicMath.releaseNumbers(a)
    }
}
