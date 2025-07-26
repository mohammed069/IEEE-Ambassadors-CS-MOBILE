import 'dart:io';

void main() {
  print("Enter a String");
  String? input = stdin.readLineSync();

  bool isPalindrome = true;

  for (int i = 0; i < input!.length ~/ 2; i++) {
    if (input[i] != input[input.length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }
  print(isPalindrome ? "Yes" : "NO");
}
