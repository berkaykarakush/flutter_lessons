void main()
{
  var mudur = Mudur();
  Personel isci = Isci();
  Personel ogretmen = Ogretmen();
  mudur.IseAl(isci);
  mudur.IseAl(ogretmen);

  mudur.TerfiArttir(ogretmen);
  // Personel personel = isci; //upcasting
  // var personel = Personel();
  // Isci isci = personel as Isci; // downcasting

}

class Personel
{
  void IseAlindi()
  {
    print("Personel mutlu");
  }
}
class Mudur extends Personel
{
  void IseAl(Personel p)
  {
    p.IseAlindi();
  }

  void TerfiArttir(Personel p)
  {
    (p as Ogretmen).maasArttir();
  }
}
class Isci extends Personel
{

}
class Ogretmen extends Personel
{
  void maasArttir()
  {
    print("Maas artti. Ogretmen mutlu");
  }
}
