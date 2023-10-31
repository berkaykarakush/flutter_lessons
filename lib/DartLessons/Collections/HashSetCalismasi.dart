import 'dart:collection';

void main()
{
  var sayilar = HashSet<int>();
  var isimler = HashSet.from({"Ahmet", "Mehmet"});
  var meyveler = HashSet<String>();
  meyveler.add("cilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  meyveler.add("Kivi");
  print(meyveler);

  meyveler.add("Elma");
  print(meyveler);

  print(meyveler.elementAt(0));
  print(meyveler.length);
  print(meyveler.isEmpty);
  print(meyveler.contains("Muz"));

  for(var m in meyveler)
    print("Sonuc: $m");

  for(var i=0; i<meyveler.length; i++)
    print("$i. index ${meyveler.elementAt(i)}");

  meyveler.remove("Kivi");
  print(meyveler);

  meyveler.clear();
  print(meyveler);

  // class calismasi
  var o1 = Ogrenciler(100, "Ahmet", "12A");
  var o2 = Ogrenciler(200, "Mehmet", "2C");
  var o3 = Ogrenciler(300, "Zeynper", "1A");
  var o4 = Ogrenciler(301, "Merve", "1A");
  var ogrenciler = HashSet<Ogrenciler>();
  ogrenciler.addAll({o1, o2, o3, o4});

  for(var ogrenci in ogrenciler)
      print("No: ${ogrenci.no} \t Ad: ${ogrenci.ad} \t Sinif: ${ogrenci.sinif}");


}

class Ogrenciler
{
  int no;
  String ad;
  String sinif;
  Ogrenciler(this.no, this.ad, this.sinif);

  // eger no su var olan gelirse kaydetmez
  @override
  int get hashCode => this.no;

  @override
  bool operator ==(Object other) {
    if(no == (other as Ogrenciler).no)
      return true;
    else
      return false;
  }
}