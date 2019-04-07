class Node<T>{
  var value : T
  var next : Node?
  init(_ value: T, _ next : Node? = nil) {
    self.value = value
    self.next = next
  }
}
class QueueUsingLinkedList<T>{
  var head : Node<T>?
  var tail : Node<T>?
  
  func enQueue(element : T){
    let temp = Node(element)
    if tail == nil && head == nil{
      tail = temp
      head = temp
    } else if head === tail{
      tail = temp
      head?.next = tail
    } else {
      tail?.next = temp
      tail = temp
    }
    
  }
  func deQueue(){
    if tail == nil && head == nil {
      return
    } else if head === tail {
      head = nil
      tail = nil
    } else {
      let temp = head
      head = head?.next
      temp?.next = nil
    }
  }
  
  func printQueue(){
    var current = head
    while current != nil {
      print("\(String(describing: current?.value))")
      current = current?.next
    }
    
  }
}

