import 'dart:math';

void main() {
  int x = squareSum([1, 2]);
  print(x);
}

int squareSum(List numbers) {
  int sum = 0;
  numbers.forEach((number) {
    sum += pow(number, 2).toInt();
  });
  return sum;
}
