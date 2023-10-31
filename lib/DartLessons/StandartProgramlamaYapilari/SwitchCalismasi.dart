import 'dart:io';

void main()
{
  int gun = 2;
  switch(gun){
    case 1: {print("Pazartesi");}
      break;

    case 2: {print("Sali");}
      break ;

    case 3: {print("Carsamba");}
      break;

    case 4: {print("Persembe");}
      break;

    case 5: {print("Cuma");}
      break ;

    case 6: {print("Cumartesi");}
      break;

    case 7: {print("Pazar");}
      break;

    default: {print("Boyle bir gun yok");}
      break;
  }

  // example: kullanicidan alinan secime gore hesap yapan program
  print("Toplama 1 \nCikrma 2 \nCarpma 3 \nBolme 4 \nSeciminiz:");
  int secim = int.parse(stdin.readLineSync()!);

  print("Birinci sayiyi giriniz:");
  int s1 = int.parse(stdin.readLineSync()!);

  print("Ikinci sayiyi giriniz: ");
  int s2 = int.parse(stdin.readLineSync()!);

  switch(secim)
  {
    case 1: {print("Toplama : ${s1 + s2}");}
      break;

    case 2: {print("Cikarma : ${s1 -s2}");}
      break;

    case 3: {print("Carpma: ${s1 * s2}");}
      break;

    case 4: {print("Bolme: ${s1 / s2}");}
      break;

    default: {print("Yanlis secim yaptiniz.");}
      break;
  }
}