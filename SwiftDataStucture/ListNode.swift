//
//  ListNode.swift
//  SwiftDataStucture
//
//  Created by Howard on 7/21/17.
//  Copyright © 2017 Howard Wang. All rights reserved.
//

import Foundation

final class ListNode<Element> {
	var value: Element
	var next: ListNode?
    var prev: ListNode?
	
	init(_ val: Element) {
		self.value = val
		self.next = nil
        self.prev = nil
	}
    
    init(prev: ListNode?, ele: Element, next: ListNode?) {
        self.prev = prev
        self.value = ele
        self.next = next
    }
}

