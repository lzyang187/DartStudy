void main() {
  // 定义可变的list
  var list1 = [1, 2, "aaa", true];
  print(list1);
  print(list1[2]);
  list1[1] = "10";
  print(list1);
  // 定义不可变的list
  var list2 = const [1, 2, "a", false];
  // 会抛出异常
  // list2[1] = "aa";
  print(list2.length);
  print("list2.asMap() = ${list2.asMap()}");
  print(list2.reversed);
  // 对象构造方式
  var list3 = List.filled(5, 1);
  print("list3 = $list3");

  list1.add(1);
  list1.removeAt(1);
  print(list1);
  // print(list1.sort());
  // 遍历
  list2.forEach((element) {
    print(element);
  });
  for (var value in list2) {
    print("aaa $value");
  }
}
