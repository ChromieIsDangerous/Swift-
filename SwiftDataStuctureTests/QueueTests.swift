//
//  QueueTests.swift
//  SwiftDataStuctureTests
//
//  Created by Howard on 7/22/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import XCTest
@testable import SwiftDataStucture
class QueueTests: XCTestCase {

    var queue: Queue<Int>!
    override func setUp() {
        super.setUp()
        
        queue = Queue<Int>()
    }
    
    override func tearDown() {
        queue = nil
        
        super.tearDown()
    }
    
    func testEnqueue() {
        queue.enqueue(1)
        queue.enqueue(3)
        queue.enqueue(5)
        XCTAssertEqual(queue.peek(), 1)
        
        var val = queue.dequeue()
        XCTAssertEqual(val!, 1)
        
        _ = queue.dequeue()
        val = queue.dequeue()
        XCTAssertEqual(val, 5)
        
        XCTAssertNil(queue.dequeue(), "should be nil")
    }
    
	func testPerformance() {
		self.measure {
			var s = Queue<Int>()
			for i in 0..<100000 {
				s.enqueue(i)
			}
			for _ in 0..<100000 {
				_ = s.dequeue()
			}
		}
	}
}
