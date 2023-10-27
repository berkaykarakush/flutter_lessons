void main()
{
  // sayisaldan sayisala
  int i = 32;
  double d = 34.23;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();

  print(sonuc1);
  print(sonuc2);

  // sayisaldan metine donusum
  String str1 = i.toString();
  String str2 = d.toString();

  print("str1: $str1");
  print("str2: $str2");

  // metinden sayisala
  String yazi1 = "34";
  String yazi2 = "32.2";

  int s1 = int.parse(yazi1);
  double s2 = double.parse(yazi2);

  print("s1: $s1");
  print("s2 : $s2");

}