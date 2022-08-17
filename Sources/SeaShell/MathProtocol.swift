import Foundation

public protocol MathProtocol {
    typealias Number = Int

    /// Add a and b
    /// @param a A
    /// @param b B
    func add(_ a: Number, _ b: Number) -> Number

    /// Subtract b from a
    /// @param a A
    /// @param b B
    func subtract(_ a: Number, _ b: Number) -> Number

    /// Repeats x for n times in array returned as a.
    /// @param x X
    /// @param n N
    /// @param a A
    func repeatNumber(_ x: Number, _ n: Number, _ a: UnsafeMutablePointer<Number>)

    /// Repeats number x random number of times up to 10 elements.
    /// @param x X
    /// @param a A
    ///
    /// Returns length of the output.
    func randomRepeatNumber(_ x: Number, _ a: UnsafeMutablePointer<UnsafeMutablePointer<Number>?>) -> Number

    /// Adds all number in array a of n elements.
    /// @param a A
    /// @param n N
    func addNumbers(_ a: UnsafePointer<Number>, _ n: Number) -> Number

    /// Releases memory for an array of numbers
    /// @param a array
    func releaseNumbers(_ a: UnsafeMutablePointer<Number>)
}
