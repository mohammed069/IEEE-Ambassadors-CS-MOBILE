void main() {
  print(getMiddle('test'));
  print(getMiddle('testing'));
}

String getMiddle(String s) {
  List char = [];
  if (s.length.isEven) {
    char.add(s[(s.length / 2 - 1).toInt()]);
    char.add(s[(s.length / 2).toInt()]);
  } else {
    char.add(s[(s.length / 2).toInt()]);
  }
  return char.join();
}
