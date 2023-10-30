void main()
{
  var sayilar = <int>[];
  sayilar.add(34);
  sayilar.add(32);

  try
  {
    sayilar[2] = 89;
    print("Islem tamam");
  }
  catch(e)
  {
    print("Hata: $e");
  }

}