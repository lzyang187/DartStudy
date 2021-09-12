void main() {
  var a;
  a = 0;
  // ??= 表示如果a未初始化，则??=赋值表达式执行，否则不执行
  a ??= "111";
  print(a);

  // 三目运算符
  int gender = 0;
  String s = gender == 0 ? "m" : "f";
  print(s);

  var x;
  // x = "1";
  // x未初始化则赋值lll，否则赋值x
  String z = x ?? "lll";
  print(z);
}
