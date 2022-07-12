import XCTest
@testable import SeaShell
@testable import BasicMath

final class SeaShellTests: XCTestCase {
    func testAdd() throws {
        XCTAssertEqual(SeaShell.add(a: 1, b: 2), 3)
    }

    func testSubtract() throws {
        XCTAssertEqual(SeaShell.subtract(a: 2, b: 1), 1)
    }

    func testRepeatNumber() throws {
        XCTAssertEqual(SeaShell.repeatNumber(x: 9, n: 3), [9, 9, 9])
    }

    func testRandomRepeatNumber() throws {
        let a = SeaShell.randomRepeatNumber(x: 9)
        XCTAssertGreaterThanOrEqual(a.count, 2)
        XCTAssertLessThanOrEqual(a.count, 5)

        a.forEach {
            XCTAssertEqual($0, 9)
        }
    }

    func testAddNumbers() throws {
        XCTAssertEqual(SeaShell.addNumbers(a: [3, 3, 3]), 9)
    }

}
