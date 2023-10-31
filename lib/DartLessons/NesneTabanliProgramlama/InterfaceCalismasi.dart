void main()
{
  var a = A();
  print(a.degisken);
  a.method1();
  String data = a.method2();
  print(data);

  var aslan = Aslan();
  Elma amasyaElmasi = AmasyaElmasi();
  amasyaElmasi.howToEat();
  var elma = Elma();
  elma.howToEat();
  elma.howToSqueeze();
  Eatable tavuk = Tavuk();
  tavuk.howToEat();
}

abstract class Interface1
{
  late int degisken;
  void method1();
  String method2();
}

class A implements Interface1
{
  @override
  int degisken = 10;

  @override
  void method1() {
    print("Interface merhaba");
  }

  @override
  String method2() {
    return "Interface calismasi";
  }
}

abstract class Squeezable
{
  void howToSqueeze();
}

abstract class Eatable
{
  void howToEat();
}
class Elma implements Squeezable, Eatable
{
  @override
  void howToEat() {
    print("Elma ile dilimlenebilir");
  }

  @override
  void howToSqueeze() {
    print("Blendir ile sikilabilir.");
  }
}
class AmasyaElmasi extends Elma
{
  @override
  void howToEat() {
    print("Yika ve ye");
  }
}
class Tavuk implements Eatable
{
  @override
  void howToEat() {
    print("Firinda kizart");
  }
}
class Aslan
{

}