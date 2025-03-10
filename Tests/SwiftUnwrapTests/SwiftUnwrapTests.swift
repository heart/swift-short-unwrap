import Testing
import XCTest

@testable import SwiftUnwrap

@Test func testUnwrap() async throws {
  

    let optionalValue: String? = "Hello, World!"


    let unwrappedValue = optionalValue.unwrap { value in
        return value
    }

    XCTAssertEqual(unwrappedValue, "Hello, World!")
    
}
    