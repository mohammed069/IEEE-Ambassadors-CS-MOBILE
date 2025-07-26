void main() {
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;

  int max;
  int min;

  if (num1 > num2 && num1 > num3) {
    max = num1;
  } else if (num2 > num3 && num2 > num1) {
    max = num2;
  } else {
    max = num3;
  }

  if (num1 < num2 && num1 < num3) {
    min = num1;
  } else if (num2 < num3 && num2 < num1) {
    min = num2;
  } else {
    min = num3;
  }

  print("Numbers: $num1 , $num2 , $num3");
  print("Largest number: $max");
  print("Smallest number: $min");
}
