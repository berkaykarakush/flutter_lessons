import 'dart:io';

void main()
{
  int yas = 17;
  String isim = "mehmet";

  //example 1
  if(yas >= 18) print("resitsiniz");

  //example 2
  if(yas >= 18) print("resitsiniz");
  else  print("Resit degilsiniz");

  //example 3
  if(isim == "ahmet") print("Merhaba ahmet");
  else print("Taninmayan kisi");

  //example 4
  if(isim == "ahmet") print("Merhaba ahmet");
  else if(isim == "mehmet") print("Merhaba mehmet");
  else print("Taninmayan kisi");

  // example 5
  String kullaniciAdi = "admin";
  int sifre = 123;
  if(kullaniciAdi == "admin" && sifre == 123) print("Hosgeldiniz");
  else print("Hatali giris");

  // example 6
  int sinif = 10;
  if(sinif == 9 || sinif == 10 || sinif == 11) print("AYT sinavina girmeye hak kazanadiniz");
  else print("Sinava giremezsiniz");

  // example 7
  int a = 1;
  int b= 2;
  if(a == b) print("Esittir");
  else print("esit degildir");

  // example 8: Kullanicidan alinan secime gore hesap yapan program
  print("Dikdortgen alani (1) \nCember Alani (2) \nSeciminiz:");
  int secim = int.parse(stdin.readLineSync()!);
  print("Seciminiz: $secim");

  if(secim == 1)
  {
    print("Kisa kenar giriniz:");
    int kisaKenar = int.parse(stdin.readLineSync()!);

    print("Uzun kenar giriniz:");
    int uzunKenar = int.parse(stdin.readLineSync()!);

    int dikdortgenAlani = kisaKenar * uzunKenar;
    print("Dikdortgen ALani: $dikdortgenAlani");
  }
  else if(secim == 2)
  {
    print("Yaricap giriniz:");
    int yaricap = int.parse(stdin.readLineSync()!);

    double cemberAlani = 3.14 * yaricap * yaricap;
    print("Cemberin Alani : $cemberAlani");
  }
  else print("Hatali secim.");

  //example 9: kullanicidan alinan secime gore hesap yapan programi yaziniz
  print("Toplama 1 \nCikarma 2 \nCarpma 3 \n Bolme 4 \nSecimiz:");
  int tercih = int.parse(stdin.readLineSync()!);

  print("1. sayiyi giriniz: ");
  int s1 = int.parse(stdin.readLineSync()!);
  print("2. sayiyi giriniz");
  int s2 = int.parse(stdin.readLineSync()!);

  if(tercih == 1) print("Toplama: ${s1 + s2}");
  else if(tercih == 2) print("Cikarma: ${s1 - s2}");
  else if(tercih == 3) print("Carpma : ${s1 * s2}");
  else if(tercih == 4) print("Bolme : ${s1 / s2}");
  else print("Yanlis tercih yaptiniz");


}
