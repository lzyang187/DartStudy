/**
 * 1、dart中的可见性是以库（单个dart文件）为单位的，可以使用下划线前缀，标记为私有类、方法或属性
 */
class MyClass {
  // 1、属性会默认生成getter和setter方法
  String name = "default name";
  int _age = 10;

  // 计算属性：通过get声明，属性是通过类似一个方法计算得到的
  bool get isChild => _age > 10 ? false : true;

  // final 声明的变量只有getter方法
  final String address = "我是地址";

  work() {
    print("$name $_age");
  }

// 2、不能声明重载方法，即使是构造方法也不行（构造方法可以使用with实现多类型的构造方法）
// work(int a) {
//   print(a);
// }
}
