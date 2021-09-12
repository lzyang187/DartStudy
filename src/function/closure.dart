/**
 * 1、闭包是一个方法（对象）
 * 2、闭包定义在其他方法内部
 * 3、闭包能访问外部方法内的局部变量，并持有其状态
 */
void main() {
  Function fun = a();
  // 相当于通过闭包的方式访问一个方法的局部变量
  fun();
  fun();
}

Function a() {
  int count = 0;
  // 闭包定义在其他方法内部
  printCount() {
    // 闭包持有外部方法内的局部变量的状态
    print(count++);
  }

  // 闭包作为方法返回
  // return printCount;
  // 也可以使用匿名方法
  return () {
    print(count++);
  };
}
