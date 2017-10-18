//
//  Queue.swift
//  SwiftDataStucture
//
//  Created by Howard on 7/21/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import Foundation

struct Queue<Element> {
    fileprivate var linkedList = LinkedList<Element>()
	
	init() {}
	
	public var count: Int {
		return linkedList.count
	}
	
	public mutating func enqueue(_ ele: Element) {
		linkedList.addFirst(ele)
	}
	
	public mutating func dequeue() -> Element? {
		return linkedList.removeLast()
	}
    
    public mutating func peek() -> Element? {
        return linkedList.peekLast()
    }
}
