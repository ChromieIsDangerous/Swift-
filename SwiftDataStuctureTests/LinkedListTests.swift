//
//  LinkedListTests.swift
//  SwiftDataStuctureTests
//
//  Created by Howard on 10/16/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import XCTest
@testable import SwiftDataStucture
class LinkedListTests: XCTestCase {

    var linkedList: LinkedList<Int>!
    
    override func setUp() {
        super.setUp()
        self.linkedList = LinkedList()
    }
    
    override func tearDown() {
        linkedList = nil
        super.tearDown()
    }
    
    func testPush() {
        self.linkedList.addFirst(2)
        self.linkedList.addFirst(200)
        
        XCTAssertEqual(self.linkedList.count, 2)
    }
    
    func testPopAndCount() {
        self.linkedList.addFirst(2)
        self.linkedList.addFirst(200)
        let ele = self.linkedList.removeFirst()
        
        XCTAssertEqual(self.linkedList.count, 1)
        XCTAssertEqual(ele, 200)
    }
    
    func testPeek() {
        self.linkedList.addFirst(2)
        self.linkedList.addFirst(200)
        _ = self.linkedList.removeFirst()
        
        XCTAssertEqual(self.linkedList.peekFirst(), 2)
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
    
    func testPerformance4() {
        var test = [Int]()
        
        self.measure {
            for i in 0..<100000 {
                test.append(i)
            }
            
            for _ in 0..<100000 {
                test.remove(at: 0)
            }
        }
    }
    
    func testPerformance2() {
        self.measure {
            var s = LinkedList<Int>()
            for i in 0..<100000 {
                s.addFirst(i)
            }
            for _ in 0..<100000 {
                _ = s.removeFirst()
            }
        }
    }
    
    func testPerformance3() {
        self.measure {
            var s = LinkedList<Int>()
            for i in 0..<100000 {
                s.addLast(i)
            }
            for _ in 0..<100000 {
                _ = s.removeLast()
            }
        }
    }

}
