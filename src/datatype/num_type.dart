void main() {
  num a = 10;
  a = 10.5;
  int b = 20;
  // b = 10.5;
  double c = 10.5;
  // c = 10;
  print(c);

  print("c是否不是数字：" + c.isNaN.toString());
  print("c是否小于0：" + c.isNegative.toString());
  print("b是否是偶数：" + b.isEven.toString());
  print("b是否是奇数：" + b.isOdd.toString());
  print("c/3的商：" + (c / 3).toString());
  print("c/3的商的下取整：" + (c ~/ 3).toString());
  print("b%c：" + (b % c).toString());
  print(double.nan);
  print("无穷大：" + double.infinity.toString());

}
