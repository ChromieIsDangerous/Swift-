//
//  LinkedList.swift
//  SwiftDataStucture
//
//  Created by Howard on 10/16/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import Foundation

public struct LinkedList<Element> {
    fileprivate var head: ListNode<Element>? = nil
    fileprivate var tail: ListNode<Element>? = nil
    fileprivate var _count = 0
    
    public var count: Int {
        return _count
    }
    
    init() {
    }
    
    init(elements: [Element]) {
        self.init()
        
    }
    
    public mutating func addFirst(_ element: Element) {
        linkFirst(element)
    }
    
    public mutating func addLast(_ element: Element) {
        linkLast(element)
    }
    
    public mutating func removeFirst() -> Element? {
        guard let h = head else {
            return nil
        }

        return unlinkFirst(h)
    }
    
    public mutating func removeLast() -> Element? {
        guard let t = tail else {
            return nil
        }
        
        return unlinkLast(t)
    }
    
    fileprivate mutating func linkFirst(_ element: Element) {
        let h = head
        let node = ListNode(prev: nil, ele: element, next: h)
        head = node
        
        if h == nil {
            tail = node
        } else {
            h?.prev = node
        }
        
        _count += 1
    }
    
    fileprivate mutating func unlinkFirst(_ h: ListNode<Element>) -> Element? {
        let element = h.value
        
        head = h.next
        
        if let next = h.next {
            next.prev = nil
        } else {
            tail = nil
        }
        
        _count -= 1
        return element
    }
    
    fileprivate mutating func linkLast(_ element: Element) {
        let t = tail
        let node = ListNode(prev: t, ele: element, next: nil)
        
        tail = node
        
        if t == nil {
            head = node
        } else {
            t?.next = node
        }
        
        _count += 1
    }
    
    fileprivate mutating func unlinkLast(_ t: ListNode<Element>) -> Element? {
        let element = t.value
        tail = t.prev
        
        if let prev = t.prev {
            prev.next = nil
        } else {
            head = nil
        }
        
        _count -= 1
        return element
    }
    
    
    
    public func peekFirst() -> Element? {
        guard let h = head else {
            return nil
        }
        
        return h.value
    }
    
    public func peekLast() -> Element? {
        guard let t = tail else {
            return nil
        }
        
        return t.value
    }
    
}
