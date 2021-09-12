import 'MyClass.dart';

void main() {
  MyClass myClass = new MyClass();
  myClass.work();
  myClass.name = "tom";
  myClass.work();
  print(myClass.address);
  print(myClass.isChild);

  // 可空类型
  MyClass? m;
  m?.work();
  print(m?.name);
  // 级联操作符，类似于构建者模式的语法
  m = new MyClass();
  m
    ..name = "john"
    ..work();
}
