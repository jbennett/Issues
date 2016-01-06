//
//  SifterClient.swift
//  Issues
//
//  Created by Jonathan Bennett on 2016-01-06.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import XCTest
@testable import SifterSwift

class SifterClientTests: XCTestCase {

  func testClientInit() {
    let client = SifterClient()
    XCTAssertNotNil(client)
  }

  func testClientHasCorrectBaseURL() {
    let client = SifterClient()
    let expectedURL = NSURL(string: "http://foobar.sifterapp.com/api")
    let resultURL = client.baseURL
    print(resultURL)
    print(NSURL())
    
    XCTAssertEqual(expectedURL, resultURL)
  }

}
