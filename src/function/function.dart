void main() {
  print(getInfo("abc", 18));
  print(getInfo1("def", 20));
  // 需要使用前缀传递参数
  print(getInfo2("李四", age: 10));
  print(getInfo4("李四", 10));
  print(getInfo5("李四"));

  // 方法可作为一个对象赋值给其他变量
  Function x = getInfo2;
  // 可以执行
  print(x);
  print(x.call("hhh"));

  // 方法作为参数进行传递给其他方法
  var list = [3, "a", "xx"];
  print(multiList(list, multi));


  // 匿名方法作为参数传递给其他方法
  print(multiList(list, (str) => str * 3));
  // 匿名方法
  Function fun = (str) {
    print("我是一个匿名方法：" + str);
  };
  fun("我是参数");
}

String getInfo(String name, int age) {
  return "$name $age";
}

// 1、箭头，单行表达式适用   2、可以省略返回值和参数类型的定义
getInfo1(name, age) => "$name $age";

// 可选参数，用{}定义，则使用参数名传参
getInfo2(name, {age}) => "$name $age";
// 可选参数需要放在具体参数后面
// getInfo3({age}, name) => "$name $age";
// 可选参数，用[]定义，则使用顺序传参
getInfo4(name, [age]) => "$name $age";

// 可选参数可以指定默认参数值
getInfo5(name, [age = 6]) => "$name $age";

// 方法作为参数进行传递
List<dynamic> multiList(List list, f(dynamic)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = f(list[index]);
  }
  return list;
}

dynamic multi(str) {
  return str * 3;
}
