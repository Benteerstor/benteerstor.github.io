class linkedlist{
  node first = new node();
  
  void add(int value) {
    node current = first;
    while(current.next != null) {
      current = current.next;
    }
    current.next = new node();
    current.next.value = value;
  }
  
  void printNewest() {
    node current = first;
    while(current.next != null) {
      println(current.value);
      current = current.next;
    }
    println(current.value);
  }
}
