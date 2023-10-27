import 'dart:io';

void main()
{
  // 3, 4, 5
  for(var i=3;  i<6; i++)
  {
    print("i:  $i");
  }

  // 10 ile 20 arasinda 5 er
  for(var i=10;i<21;i+=5)
  {
    print("5'er i: $i");
  }

  // 20 ile 10 arasinda 2 ser
  for(var i=20; i>9;i-=2)
  {
    print("2 ser i: $i");
  }

  // 1, 2, 3
  var sayac = 1;
  while(sayac < 4)
  {
    print("Sayac : $sayac");
    sayac++;
  }

  // 3 ile 6
  for(var i=3; i<7; i++)
    print("3 ile 6 :$i");

   sayac =3 ;
  while(sayac < 7)
  {
    print("3 ile 6 : $sayac");
    sayac++;
  }

  // 0 ile 8 ikiser
  for(var i=0; i<9; i+=2) print("0 ile 8 ikiser: $i");
  sayac = 0;
  while(sayac < 9)
  {
    print("0 ile 8 ikiser while : ${sayac}");
    sayac+=2;
  }

  // 8 den 0 a 2 ikser
  for(var i=8; i>-1; i-=2) print("8 den 0 a ikiser: $i");
  sayac = 8;
  while(sayac > -1)
  {
    print("8 den 0 ikiser: ${sayac}");
    sayac-=2;

  }

  // break | contionue
  for(var i=0; i<9; i++)
  {
    if(i == 1)
      continue;

    if(i == 6)
      break;

    print("Dongu 1: $i");
  }

  // girilen ismi tekrarlama
  print("Isim giriniz: ");
  String isim = stdin.readLineSync()!;

  print("Tekrar sayisini giriniz: ");
  int tekrarSayisi = int.parse(stdin.readLineSync()!);

  for(var i=0; i<tekrarSayisi; i++)
  {
    print("${i+1}. Tekrar:  $isim");
  }

  // Konsoldan girilen islenecek veri sayisini isleyerek ekrana yazdirin
  print("Islenecek veri sayisi: ");
  int veriSayisi = int.parse(stdin.readLineSync()!);

  while(veriSayisi > 0)
  {
    print("$veriSayisi. veri");
    veriSayisi--;
  }

  // tek sayi bulan program
  while(true)
  {
    print("Cikma icin 1 giriniz. Devam etmek icin diger sayilardan birini giriniz.");
    int cikis = int.parse(stdin.readLineSync()!);

    if(cikis == 1)
    {
      print("Cikis yapildi");
      break;
    }

    print("Sayi giriniz: ");
    int girilenSayi = int.parse(stdin.readLineSync()!);

    int sonuc = girilenSayi % 2;
    if(sonuc == 1) print("Tek sayi");
    if(sonuc == 0) print("Cikt sayi");

  }




}