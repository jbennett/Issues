//
//  SifterSwiftTests.swift
//  SifterSwiftTests
//
//  Created by Jonathan Bennett on 2016-01-06.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import XCTest
@testable import SifterSwift

class SifterSwiftTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      XCTAssertEqual(2, 2, "crap")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
