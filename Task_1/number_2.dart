void main() {
  String word1 = "Mohammed";
  String word2 = "ElShafey";

  String concatenated = word1 + ' ' + word2;

  int length = concatenated.length;

  String subString = concatenated.substring(0, 10);

  String lowerCase = concatenated.toLowerCase();
  String upperCase = concatenated.toUpperCase();

  print("Concatenated: $concatenated");
  print("length: $length");
  print("Substring: $subString");
  print("UpperCase: $upperCase");
  print("LowerCase: $lowerCase");
}
