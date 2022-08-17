import XCTest
@testable import SeaShell
@testable import BasicMath

final class SeaShellTests: XCTestCase {
    let seaShell = SeaShell(math: Math())
    
    func testAdd() throws {
        XCTAssertEqual(seaShell.add(a: 1, b: 2), 3)
    }

    func testSubtract() throws {
        XCTAssertEqual(seaShell.subtract(a: 2, b: 1), 1)
    }

    func testRepeatNumber() throws {
        XCTAssertEqual(seaShell.repeatNumber(x: 9, n: 3), [9, 9, 9])
    }

    func testRandomRepeatNumber() throws {
        let number = 42
        let a = seaShell.randomRepeatNumber(x: number)
        XCTAssertGreaterThanOrEqual(a.count, 2)
        XCTAssertLessThanOrEqual(a.count, 10)

        a.forEach {
            XCTAssertEqual($0, number)
        }
    }

    func testAddNumbers() throws {
        XCTAssertEqual(seaShell.addNumbers(a: [3, 3, 3]), 9)
    }

}
