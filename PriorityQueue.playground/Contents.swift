// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

struct PriorityQueue<Element: Equatable>: Queue {

  private var heap: Heap<Element>
  var isEmpty: Bool {
    heap.isEmpty
  }
  var peek: Element? {
    heap.peek()
  }

  init(sort: @escaping (Element, Element) -> Bool,
       elements: [Element] = []) {
    heap = Heap(sort: sort, elements: elements)
  }

  mutating func enqueue(_ element: Element) -> Bool {
    heap.insert(element)
    return true
  }

  mutating func dequeue() -> Element? {
    heap.remove()
  }
}

var priorityQueue = PriorityQueue(sort: >, elements: [1,12,3,4,1,6,8,7])
while !priorityQueue.isEmpty {
  print(priorityQueue.dequeue()!)
}
