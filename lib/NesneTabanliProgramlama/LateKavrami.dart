void main()
{

}

class LateKullanimi
{
  // int x; // false
  int x1 = 2; // true
  late int y; // true
}

class Kisiler
{
  // ctor uzerinden tanimlama
  int kisiNo;
  String kisiAdi;
  Kisiler(this.kisiNo, this.kisiAdi);
}