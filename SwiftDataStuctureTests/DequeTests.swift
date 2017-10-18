//
//  DequeTests.swift
//  SwiftDataStucture
//
//  Created by Howard on 7/22/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import XCTest
@testable import SwiftDataStucture

class DequeTests: XCTestCase {
	
	var deque: Deque<Int>!
    override func setUp() {
        super.setUp()
		
		deque = Deque<Int>()
    }
    
    override func tearDown() {
        deque = nil
		
        super.tearDown()
    }

    func testLeft() {
        deque.appendFirst(1)
		deque.appendFirst(3)
		deque.appendFirst(5)
		XCTAssertEqual(deque.peekFirst(), 5)
		
		var val = deque.removeFirst()
		XCTAssertEqual(val!, 5)
		
		_ = deque.removeFirst()
		val = deque.removeFirst()
		XCTAssertEqual(val, 1)
		
		XCTAssertNil(deque.removeFirst(), "should be nil")
    }
    
	func testRight() {
		deque.appendLast(1)
		deque.appendLast(3)
		deque.appendLast(5)
		XCTAssertEqual(deque.peekLast(), 5)
		
		var val = deque.removeLast()
		XCTAssertEqual(val!, 5)
		
		_ = deque.removeLast()
		val = deque.removeLast()
		XCTAssertEqual(val, 1)
		
		XCTAssertNil(deque.removeLast(), "should be nil")
	}
    
    func testPerformance() {
        self.measure {
            var s = Deque<Int>()
            for i in 0..<100000 {
                s.appendFirst(i)
            }
            for _ in 0..<100000 {
                _ = s.removeFirst()
            }
        }
    }

}
