import 'dart:io';
import 'dart:math';

void main() {
  // list tanimlama
  var sayilar = <String>{};
  var plakalar = [12, 13, 14];
  var iller = <String>{};

  // list veri ekleme
  var meyveler = <String>[];
  meyveler.add("Cilek");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Kivi");

  print(meyveler);
  String str = meyveler[2];
  print(str);

  meyveler.insert(3, "Karpuz");
  print(meyveler);
  print(meyveler[3]);

  print(meyveler.isEmpty);
  print(meyveler.length);
  print(meyveler.first);
  print(meyveler.last);

  var liste = meyveler.reversed;
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(2);
  print(meyveler);

  meyveler.remove("Cilek");
  print(meyveler);

  meyveler.clear();
  print(meyveler);

  meyveler.add("Cilek");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Kivi");
  print(meyveler);

  // dongu calismasi
  for (var meyve in meyveler) {
    print("Sonuc: $meyve");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i. index : ${meyveler[i]}");
  }

  // class calismasi
  var o1 = Ogrenciler(100, "Ahmet", "10F");
  var o2 = Ogrenciler(200, "Mehmet", "12A");
  var o3 = Ogrenciler(300, "Zaynep", "9C");

  var ogrenciler = <Ogrenciler>[];
  ogrenciler.addAll({o1, o2, o3});
  for (var ogrenci in ogrenciler)
    print("***** \nOgrenci No : ${ogrenci.no} \nOgrenci Ad : ${ogrenci
        .ad} \nOgrenci Sinif : ${ogrenci.sinif}");

  // Siralama Islemleri

  // kucukten buyuge siralama
  Comparator<Ogrenciler> siralamaKucukBuyuk = (x, y) => x.no.compareTo(y.no);
  ogrenciler.sort(siralamaKucukBuyuk);
  for (var ogrenci in ogrenciler)
    print("\nOgrenci No : ${ogrenci.no} \nOgrenci Ad : ${ogrenci
        .ad} \nOgrenci Sinif : ${ogrenci.sinif}");

  print("**********");
  //buyukten kucuge siralama
  Comparator<Ogrenciler> siralamaBuyukKucuk = (y, x) => x.no.compareTo(y.no);
  ogrenciler.sort(siralamaBuyukKucuk);
  for (var ogrenci in ogrenciler)
    print("\nOgrenci No : ${ogrenci.no} \nOgrenci Ad : ${ogrenci
        .ad} \nOgrenci Sinif : ${ogrenci.sinif}");

  print("");
  print("");

  // Filtreleme islemi
  Iterable<Ogrenciler> filtrelenenListe = ogrenciler.where((ogrenci) {
    return ogrenci.no > 100;
  });
  ogrenciler = filtrelenenListe.toList();
  for (var ogrenci in ogrenciler)
    print("\nOgrenci No : ${ogrenci.no} \nOgrenci Ad : ${ogrenci
        .ad} \nOgrenci Sinif : ${ogrenci.sinif}");

  // Ornek 1 : Ortalama hesaplama
  var _sayilar = <int>[];
  _sayilar.addAll({20, 100, 200, 40, 90});
  int toplam = 0;

  for (var sayi in _sayilar)
    toplam += sayi;

  print("\n\nOrtalama: ${toplam / _sayilar.length}");

  // Ornek 2: Icerik Degistirme
  _sayilar.clear();
  _sayilar.addAll({1, 2, 3, 4, 5});

  for (var i = 0; i < _sayilar.length; i++) {
    int sonuc = _sayilar[i] * 2;
    _sayilar[i] = sonuc;
  }
  for (var sayi in _sayilar)
    print("Icerik Degistirme: $sayi");

  // Ornek 3: Tek Cift Sayi ayirma
  _sayilar.clear();
  _sayilar.addAll({1, 23, 32, 47, 59, 100, 18, 54});

  var tekler = <int>[];
  var ciftler = <int>[];

  for (var sayi in _sayilar) {
    int sonuc = sayi % 2;

    if (sonuc == 0)
      ciftler.add(sayi);

    if (sonuc == 1)
      tekler.add(sayi);
  }
  print("Tekler: ");
  for (var t in tekler)
    print(t);

  print("Ciftler");
  for (var c in ciftler)
    print(c);

  // Ornek 4: Rastgele Sayi Uretme
  _sayilar.clear();
  var r = Random();
  for (var i = 0; i < 100; i++) {
    int rastgeleSayi = r.nextInt(101); // 0-100
    _sayilar.add(rastgeleSayi);
  }
  _sayilar.sort();
  for (var s in _sayilar)
    print(s);


  // Ornek 5: Isim arama
  var isimler = <String>[];
  isimler.addAll({"Ahmet", "Zeynep", "Mehmet", "Sedat", "Ercan"});
  print("Aramak icin isim giriniz: ");
  String aranan = stdin.readLineSync()!;

  for (var isim in isimler)
    if (isim == aranan) {
      print("Isim mevcut");
      break;
    }

  // Ornek 6: Okul Kayit
  ogrenciler.clear();
  var ogrenci1 = Ogrenciler(100, "Ahmet", "10F");
  var ogrenci2 = Ogrenciler(200, "Mehmet", "12A");
  var ogrenci3 = Ogrenciler(300, "Zaynep", "9C");
  ogrenciler.addAll({ogrenci1, ogrenci2, ogrenci3});

  print("Ogrenci adini giriniz: ");
  String ad = stdin.readLineSync()!;

  print("Ogrenci sinifini giriniz: ");
  String sinif = stdin.readLineSync()!;

  print("Ogrenci numarasini giriniz: ");
  int no = int.parse(stdin.readLineSync()!);

  var yeniOgrenci = Ogrenciler(no, ad, sinif);
  ogrenciler.add(yeniOgrenci);

  for (var ogrenci in ogrenciler)
    print("\nOgrenci No : ${ogrenci.no} \nOgrenci Ad : ${ogrenci.ad} \nOgrenci Sinif : ${ogrenci.sinif}");


  // Ornek 7 : Karne uygulamasi
  var dersNotlariListesi = <DersNotlari>[];
  while(true)
  {

   print("Ders Adi: ");
   String dersAdi = stdin.readLineSync()!;

   print("Ders Notu: ");
   int dersNotu = int.parse(stdin.readLineSync()!);

   var yeniNot = DersNotlari(dersAdi, dersNotu);
   dersNotlariListesi.add(yeniNot);

   print("Cikmak icin 1 - Devam etmek icin diger sayilar: ");
   int cikis = int.parse(stdin.readLineSync()!);

   if(cikis == 1)
   {
     print("\n");
     toplam = 0;
     for(var dn in dersNotlariListesi)
     {
       print("${dn.ders} \t ${dn.not}");
       toplam += dn.not;
     }
     double ortalama = toplam / dersNotlariListesi.length;
      print("Ortalama: $ortalama");

      if(ortalama >= 50)
        print("Tebrikler");
      else
        print("Maalesef kaldiniz");
     break;
   }
  }

  // Ornek 8: Composition
  var personeller = <Personel>[];

  for(var i=1; i<4; i++)
  {
    print("$i. Personelin adini giriniz: ");
    String isim = stdin.readLineSync()!;

    print("$i. Personelin adres ilini giriniz");
    String il = stdin.readLineSync()!;

    print("$i. Personelin adres ilcesini giriniz: ");
    String ilce = stdin.readLineSync()!;

    var adres = Adres(il, ilce);
    var personel = Personel(i, isim, adres);
    personeller.add(personel);
  }

  for(var p in personeller)
    print("${p.no} \t ${p.isim} \t ${p.adres.il} \t ${p.adres.ilce} ");


}

class Ogrenciler
{
  int no;
  String ad;
  String sinif;
  Ogrenciler(this.no, this.ad, this.sinif);
}

class DersNotlari
{
  String ders;
  int not;
  DersNotlari(this.ders, this.not);
}

class Personel
{
  int no;
  String isim;
  Adres adres;
  Personel(this.no, this.isim, this.adres);
}
class Adres
{
  String il;
  String ilce;
  Adres(this.il, this.ilce);
}