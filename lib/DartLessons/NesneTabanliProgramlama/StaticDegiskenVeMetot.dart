void main()
{
  StaticA.metod();
  print(StaticA.a);
}

class StaticA
{
  static int a = 10;
  static void metod()
  {
    print("Merhaba");
  }
}