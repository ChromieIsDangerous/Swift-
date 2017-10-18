//
//  StackTests.swift
//  StackTests
//
//  Created by Howard on 7/21/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import XCTest
@testable import SwiftDataStucture
class StackTests: XCTestCase {
	
	var stack: Stack<Int>!
	
	override func setUp() {
		super.setUp()
		self.stack = Stack()
	}
	
	override func tearDown() {
		stack = nil
		super.tearDown()
	}
	
	func testPush() {
		self.stack.push(2)
		self.stack.push(200)
		
		XCTAssertEqual(self.stack.count, 2)
	}
	
	func testPopAndCount() {
		self.stack.push(2)
		self.stack.push(200)
		let ele = self.stack.pop()
		
		XCTAssertEqual(self.stack.count, 1)
		XCTAssertEqual(ele, 200)
	}
	
	func testPeek() {
		self.stack.push(2)
		self.stack.push(200)
		_ = self.stack.pop()
		
		XCTAssertEqual(self.stack.peek(), 2)
	}
	
	func testPerformance() {
        var s = Stack<Int>()
        
		self.measure {
			for i in 0..<100000 {
				s.push(i)
			}
            for _ in 0..<100000 {
                _ = s.pop()
            }
		}
	}
	
	func testPerformance1() {
		var test = [Int]()
		
		self.measure {
			for i in 0..<100000 {
				test.append(i)
			}

			for _ in 0..<100000 {
				test.removeLast()
			}
		}
	}
}

