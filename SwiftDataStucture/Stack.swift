//
//  Stack.swift
//  SwiftDataStucture
//
//  Created by Howard on 7/21/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import Foundation
protocol Container {
	associatedtype Element
	//	mutating func append(_ item: Item)
	var count: Int { get }
//	subscript(i: Int) -> Element { get }
}

struct Stack<Element> {
	
    fileprivate var head: ListNode<Element>? = nil
    //    fileprivate var tail: ListNode<Element>? = nil
    fileprivate var _count = 0
    
    init() {
        //        self.head = self.tail
    }
    
    public var count: Int {
        return _count
    }
    
    public mutating func push(_ ele: Element) {
        let node = ListNode(ele)
        node.next = head
        head = node
        
        _count += 1
    }
    
    public mutating func pop() -> Element? {
        if _count == 0 {
            return nil
        }
        
        let node = head
        // to reduce reference count
        //        var Ref = Unmanaged.passUnretained(head!)
        //        if let nextRef = Ref.takeUnretainedValue().next {
        //            Ref = Unmanaged.passUnretained(nextRef)
        //        }
        //        head = Ref.takeUnretainedValue()
        head = head?.next
        _count -= 1
        return node?.value
        
    }
    
    public func peek() -> Element? {
        if _count == 0 {
            return nil
        }
        
        return head?.value
    }

}

extension Stack where Element: Equatable {
	func isTop(_ item: Element) -> Bool {
		guard let topItem = peek() else {
			return false
		}
		return topItem == item
	}
}
