//
//  Deque.swift
//  SwiftDataStucture
//
//  Created by Howard on 7/22/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import Foundation

struct Deque<Element> {
	fileprivate var head: ListNode<Element>? = nil
	fileprivate var tail: ListNode<Element>? = nil
	fileprivate var _count = 0
	
	init() {
		self.head = self.tail
	}
	
	public var count: Int {
		return _count
	}
	
	public mutating func appendFirst(_ element: Element) {
		let node = ListNode(element)
		
        if head != nil {
            node.next = head
            head?.prev = node
        }
        
        head = node
        if tail == nil {
            tail = head
        }
        
		_count += 1
	}
	
	public mutating func removeFirst() -> Element? {
		if _count > 0 {
			let node = head
			head = head?.next
            
            if head == nil {
                tail = nil
            } else {
                head?.prev = nil
            }
            
			_count -= 1
			return node?.value
		}
		
		return nil
	}
	
	public mutating func appendLast(_ element: Element) {
        let node = ListNode(element)
        
        if tail != nil {
            node.prev = tail
            tail?.next = node
        }
        tail = node
        if head == nil {
            head = tail
        }
        
        _count += 1
	}
	
	public mutating func removeLast() -> Element? {
        if _count > 0 {
            let node = tail
            tail = node?.prev
            
            if tail == nil {
                head = nil
            } else {
                tail?.next = nil
            }
            
            _count -= 1
            return node?.value
        }
        
		return nil
	}
	
	public func peekFirst() -> Element? {
		if _count > 0 {
			return head?.value
		}
		
		return nil
	}
	
	public func peekLast() -> Element? {
		if _count > 0 {
			return tail?.value
		}
		
		return nil
	}
}
