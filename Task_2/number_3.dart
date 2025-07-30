void main() {
  print(descendingOrder(215695));
}

int descendingOrder(n) {
  List numbers = n.toString().split("");

  numbers.sort((a, b) => b.compareTo(a));
  return int.parse(numbers.join());
}
