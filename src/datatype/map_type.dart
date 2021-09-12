void main() {
  // 可变的map
  var map1 = {"a": 1, "b": true, 1: false, false: true};
  map1[false] = 123;
  print(map1[false]);
  // 不可变的map
  var map2 = const {1: "a", 2: "b"};
  // 报错
  // map2[1] = "c";
  print(map1.keys);
  print(map1.values);
  map1.forEach((key, value) {
    print(" $key $value");
  });
}
