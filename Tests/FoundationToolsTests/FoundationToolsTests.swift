import XCTest
@testable import FoundationTools

final class FoundationToolsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FoundationTools().description, "A set of Foundation objects")
    }
    func testIso8601DateFormat() {
        let date = Date()
        let legacy = RFC3336.legacy,
        iso8601 = RFC3336.iso8601,
        legacyFormatted = legacy.string(from: date),
        isoFormatted = iso8601.string(from: date)
        XCTAssertEqual(legacyFormatted, isoFormatted, "Legacy and iso formatting are different!")
    }
    static var allTests = [
        ("testExample", testExample),
        ("testIso8601DateFormat", testIso8601DateFormat),
    ]
}
