void main() {
  String str1 = "aaa ";
  // 三个引号定义多行字符串
  String str2 = '''hello
  lll
  world''';
  print(str2);
  String str3 = "hhh \n lll";
  print(str3);
  // 前面加r表示打印原始字符串
  str3 = r"hhh /n ooo";
  print(str3);
  // 运算符
  print(str3 + " new new");
  print(str1 * 3);
  // 字符串对应下标的值
  print(str1[0]);
  String str4 = " aaa ";
  // 比较两个字符串的内容是否相等
  print(str4 == str1);
  // 插值表达式
  print("$str4 ${str4.length}");
  
}
