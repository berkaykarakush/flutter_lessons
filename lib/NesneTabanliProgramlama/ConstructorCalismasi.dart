void main()
{
  var ogrenci = Ogrenciler(no: 1, ad: "Ahmet");
  print(ogrenci.ad);
  print(ogrenci.no);

  var ogretmenler = Ogretmenler();
  ogretmenler.ad = "Ayse";
  print(ogretmenler.ad);
}

class Ogrenciler
{
   int no;
   String ad;
  Ogrenciler({required this.no,required this.ad});
}

class Ogretmenler
{
  late String ad;
}