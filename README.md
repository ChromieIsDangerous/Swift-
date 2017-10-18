# Swift Data Structure
*The library is experimental and it may cause memory leak problem. Please use it only for learning DS.*

## Swift standard array

| Operation        | Time Complexity           | Average (100k data) |
| ------------- |:-------------:| :-----:|
| append      | O(1) | 0.003 |
| removeLast     | O(1)      |   0.072 |
| removeFirst | O(n)      |    1.658 |

## Stack
| Operation  | Time Complexity  | Average (100k data) |
| ------------- |:-------------:| :-----:|
| push      | O(1) | --- |
| pop     | O(1)      |   0.043 |

## Queue
| Operation  | Time Complexity  | Average (100k data) |
| ------------- |:-------------:| :-----:|
| enqueue      | O(1) | 0.035 |
| dequeue     | O(1)      |   0.064 |

## Deque (two way queue)
| Operation  | Time Complexity  | Average (100k data) |
| ------------- |:-------------:| :-----:|
| appendFirst      | O(1) | 0.036 |
| appendLast     | O(1)      |   0.034 |
| removeFirst      | O(1) | 0.064 |
| removeLast     | O(1)      |   0.064 |

*Note: the Average time does not mean anything. It is collected by Unit Test performance. The compiler maybe have some optimization for the Standard Array. Only for reference*

## Critical Issues
1. COW
2. reference cycle between **ListNode**
