//
//  SwiftDataStuctureTests.swift
//  SwiftDataStuctureTests
//
//  Created by Howard on 7/21/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import XCTest
@testable import SwiftDataStucture

class SwiftDataStuctureTests: XCTestCase {
	var stack: Stack<Int>!
	
    override func setUp() {
        super.setUp()
        self.stack = Stack()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
