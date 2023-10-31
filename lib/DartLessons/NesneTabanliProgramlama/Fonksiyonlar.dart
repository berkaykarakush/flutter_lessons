void main()
{
  selamla();

  var gelenSonuc = selama1();
  print(gelenSonuc);

  selamla2("Ahmet");

  gelenSonuc = selamla3("Ahmet");
  print(gelenSonuc);

  var toplam = toplama(12, 23);
  print("Toplam: $toplam");

  var c = Calculator();
  c.Topla(12, 3);
  c.Cikar(23, 3);
  c.Carp(3, 5);

}


void selamla()
{
  String sonuc = "Merhaba Ahmet";
  print(sonuc);
}

String selama1()
{
  String sonuc = "Merhaba Ahmet 2";
  return sonuc;

}

void selamla2(String isim)
{
  String sonuc = "Merhaba $isim 3";
  print(sonuc);
}

String selamla3(String isim)
{
  String sonuc = "Merhaba $isim 4";
  return sonuc;
}

int toplama(int a, int b)
{
  return a + b;
}

class Calculator
{
  void Topla(int a, int b)
  {
    print("\nToplam: ${a + b}");
  }
  void Cikar(int a, int b)
  {
    print("Cikarma: ${a - b}");
  }
  void Carp(int a, int b)
  {
    print("Carpma: ${a * b}");
  }
}