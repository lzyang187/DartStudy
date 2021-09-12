void main() {
  D d = new D();
  d.a();
  E e = new E();
  e.a();
}

class A {
  int number = 5;

  void a() {
    print("A.a");
  }
}

class B {
  void a() {
    print("B.a");
  }
}

class C {
  void a() {
    print("C.a");
  }
}

// dart中的接口需要实现所有属性和方法，这是区别java中接口的地方
class D implements A, B, C {
  @override
  void a() {
    print("实现接口重写的方法 number = $number");
  }

  @override
  int number = 10;
}

/**
 * 1、mixin实现类似多继承，用with连接
 * 2、mixin的A、B、C类不能声明构造方法，除默认的object类外，也不能继承其他类
 */
class E extends A with B, C {
  @override
  void a() {
    // super执行的是with后最后一个（即C）的a方法
    super.a();
    print(" mixins的重写方法 $number");
  }
}
