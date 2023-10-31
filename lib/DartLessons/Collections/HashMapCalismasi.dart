import 'dart:collection';

void main()
{
  var iller= HashMap<int, String>();
  iller[16] = "Bursa";
  iller[34] = "Istanbul";
  iller[35] = "Izmir";
  print(iller);

  iller[16] = "Yeni - Bursa";
  print(iller);

  String? data = iller[34];
  print(data);

  print(iller[35]);

  print(iller.length);
  print(iller.isEmpty);
  print(iller.keys);
  print(iller.values);
  print(iller.containsValue("Istanbul"));
  print(iller.containsKey(16));

  var keys = iller.keys;
  for(var k in keys)
    print("Sonuc: ${iller[k]}");

  iller.remove(16);
  print(iller);

  iller.clear();
  print(iller);

  // class calismasi
  var k1 = Kisiler(11111, "Ahmet");
  var k2 = Kisiler(222222, "zeynep");
  var k3 = Kisiler(333333, "Ayse");

  var kisiler = HashMap<int, Kisiler>();
  kisiler[k1.tcno] = k1;
  kisiler[k2.tcno] = k2;
  kisiler[k3.tcno] = k3;

  var anahtarlar = kisiler.keys;
  for(var k in anahtarlar)
  {
    var kisi = kisiler[k];
    if(kisi != null)
    {
      print("Kisi tc: ${kisi.tcno}");
      print("Kisi ad: ${kisi.ad}");
    }
  }
}

class Kisiler
{
  int tcno;
  String ad;
  Kisiler(this.tcno, this.ad);
}