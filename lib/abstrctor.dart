abstract class Iabstractor {
  abstract String? name;
  abstract int? age;
  void write();
  void growl() => print('grrrrr');
}

class A extends Iabstractor {
  @override
  int? age;

  @override
  String? name;

  A({this.name, this.age});

  @override
  void write() {
    print('A write $name $age');
  }
}
